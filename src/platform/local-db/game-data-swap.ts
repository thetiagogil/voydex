import {
  readAppliedIdChanges,
  readIdChangeShape,
  readIdChangeTargets,
  recordIdChanges,
} from "@/platform/local-db/device-id-changes";
import {
  applyIdChanges,
  findPendingIdChanges,
  type IdChange,
} from "@/platform/local-db/id-changes";
import {
  readChangeRecords,
  writeRecords,
} from "@/platform/local-db/user-snapshot";
import {
  readUserData,
  userTables,
  writeUserData,
  type Transaction,
} from "@/platform/local-db/user-data";

/*
 * The parts of a game data update that reach past the game data: which rows
 * are game data at all, and checking none of your rows is left pointing at
 * nothing. Which rows are yours comes from `userTables`.
 */

const appSchemas = ["public", "reference", "tracking", "gameplay", "planning"];

const quoteName = (name: string) => `"${name.replaceAll('"', '""')}"`;

/* Your rows of a table, as a filter; null for a table that is all yours. */
const userRowsFilter = new Map(
  userTables.map((table) => [table.name, table.where ?? null]),
);

type GameTable = { filter: string | undefined; name: string };

/*
 * The tables holding game data, split by how an update empties them. One
 * that only other emptied tables point at is truncated: its old files go
 * when the update commits. Postgres can't truncate a table your rows point
 * at (a game, a Pokémon), so those are deleted from, which leaves the old
 * rows' room behind until `vacuumGameTables`.
 */
export const readGameTables = async (db: Pick<Transaction, "query">) => {
  const { rows } = await db.query<{ name: string; referenced_by: string[] }>(
    `SELECT schemas.nspname || '.' || tables.relname AS name,
       coalesce(array_agg(DISTINCT child_schemas.nspname || '.' || children.relname)
         FILTER (WHERE children.oid IS NOT NULL), '{}') AS referenced_by
     FROM pg_class tables
     JOIN pg_namespace schemas ON schemas.oid = tables.relnamespace
     LEFT JOIN pg_constraint keys ON keys.confrelid = tables.oid AND keys.contype = 'f'
     LEFT JOIN pg_class children ON children.oid = keys.conrelid
     LEFT JOIN pg_namespace child_schemas ON child_schemas.oid = children.relnamespace
     WHERE tables.relkind = 'r' AND schemas.nspname = ANY ($1)
     GROUP BY 1
     ORDER BY 1`,
    [appSchemas],
  );
  /* A table that is all yours keeps every row. */
  const gameTables = rows.filter(
    (row) => userRowsFilter.get(row.name) !== null,
  );
  const truncated = new Set(
    gameTables
      .filter((row) => !userRowsFilter.has(row.name))
      .map((row) => row.name),
  );

  /* Leave out any table a table outside the set points at, until none does. */
  for (let changed = true; changed;) {
    changed = false;

    for (const row of gameTables) {
      if (
        truncated.has(row.name) &&
        row.referenced_by.some((child) => !truncated.has(child))
      ) {
        truncated.delete(row.name);
        changed = true;
      }
    }
  }

  return {
    deleted: gameTables
      .filter((row) => !truncated.has(row.name))
      .map((row): GameTable => ({
        filter: userRowsFilter.get(row.name) ?? undefined,
        name: row.name,
      })),
    truncated: [...truncated],
  };
};

/*
 * Deletes every game data row: all of each table that isn't yours, and the
 * rows Voydex ships in a table that also holds yours (its own Challenge
 * rules). The caller turns triggers and foreign key checks off first.
 */
export const deleteGameRows = async (tx: Transaction) => {
  const { deleted, truncated } = await readGameTables(tx);

  if (truncated.length) await tx.exec(`TRUNCATE ${truncated.join(", ")}`);

  for (const { filter, name } of deleted) {
    await tx.exec(
      filter
        ? `DELETE FROM ${name} WHERE (${filter}) IS NOT TRUE`
        : `DELETE FROM ${name}`,
    );
  }
};

/*
 * After an update commits, outside its transaction: rewrites the tables it
 * deleted from, so the database doesn't grow with every release.
 */
export const vacuumGameTables = async (
  db: Pick<Transaction, "exec" | "query">,
) => {
  const { deleted } = await readGameTables(db);

  if (deleted.length) {
    await db.exec(
      `VACUUM FULL ${deleted.map((table) => table.name).join(", ")}`,
    );
  }
};

/*
 * Your rows follow the ID changes of `list` the device hasn't applied (see
 * id-changes.ts), against the game data in place: read, changed and put
 * back with every check on, change records moved along. Most devices have
 * no rows on a changed ID, and then nothing is written but the list. Throws
 * IdChangeError, or the failed check, when a row can't follow; the
 * caller's transaction then keeps the device as it was.
 */
export const followIdChanges = async (
  tx: Transaction,
  list: readonly IdChange[],
) => {
  const pending = findPendingIdChanges(await readAppliedIdChanges(tx), list);

  if (!pending.length) return;

  const shape = await readIdChangeShape(tx);
  const snapshot = {
    changes: await readChangeRecords(tx),
    tables: await readUserData(tx),
  };
  const followed = applyIdChanges(snapshot, pending, {
    shape,
    targets: await readIdChangeTargets(tx, pending, shape),
  });

  if (followed !== snapshot) {
    /* Checks back on: the rows go back in against the game data. */
    await tx.exec("SET LOCAL session_replication_role = origin");
    await writeUserData(tx, followed.tables);
    await writeRecords(tx, followed.changes);
  }

  await recordIdChanges(tx, list);
};

type ForeignKey = {
  child: string;
  child_columns: string[];
  parent: string;
  parent_columns: string[];
};

/* The foreign keys from your tables, each with its columns in order. */
const readUserForeignKeys = async (tx: Transaction) => {
  const { rows } = await tx.query<ForeignKey>(
    `SELECT child_schema.nspname || '.' || child.relname AS child,
       parent_schema.nspname || '.' || parent.relname AS parent,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_columns,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.confrelid AND a.attnum = k.attnum) AS parent_columns
     FROM pg_constraint c
     JOIN pg_class child ON child.oid = c.conrelid
     JOIN pg_namespace child_schema ON child_schema.oid = child.relnamespace
     JOIN pg_class parent ON parent.oid = c.confrelid
     JOIN pg_namespace parent_schema ON parent_schema.oid = parent.relnamespace
     WHERE c.contype = 'f'
     ORDER BY 1, 2, c.conname`,
  );

  return rows.filter((key) => userRowsFilter.has(key.child));
};

/* A condition on a table's rows, kept to your rows of it. */
const onUserRows = (table: string, condition: string) => {
  const filter = userRowsFilter.get(table);

  return filter ? `(${condition}) AND (${filter})` : condition;
};

/*
 * Your rows that point at game data the device doesn't have, one line per
 * foreign key: "gameplay.mainline_plays → reference.version_groups: 2".
 */
export const findMissingReferences = async (tx: Transaction) => {
  const missing: string[] = [];

  for (const key of await readUserForeignKeys(tx)) {
    /* A table that is all yours keeps every row through an update. */
    if (userRowsFilter.get(key.parent) === null) continue;

    const present = key.child_columns
      .map((column) => `child.${quoteName(column)} IS NOT NULL`)
      .join(" AND ");
    const matches = key.child_columns
      .map(
        (column, index) =>
          `parent.${quoteName(key.parent_columns[index])} = child.${quoteName(column)}`,
      )
      .join(" AND ");
    const { rows } = await tx.query<{ count: number }>(
      `SELECT count(*)::int AS count FROM ${key.child} AS child
       WHERE ${onUserRows(key.child, present)}
         AND NOT EXISTS (SELECT 1 FROM ${key.parent} AS parent WHERE ${matches})`,
    );

    if (rows[0].count) {
      missing.push(`${key.child} → ${key.parent}: ${rows[0].count}`);
    }
  }

  return missing;
};
