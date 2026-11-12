import { LocalDbError } from "@/platform/local-db/local-db";
import { userTables, type Transaction } from "@/platform/local-db/user-data";

/*
 * The parts of a game data update that reach past the game data: which rows
 * are game data at all, moving your rows off IDs a release removed or
 * reused, and checking none of your rows is left pointing at nothing. Which
 * rows are yours comes from `userTables`.
 */

/* What became of one removed or reused game data ID (versions.json). */
export type GameDataIdChange = {
  becomes: string | null;
  id: string;
  reason: string;
  table: string;
};

const appSchemas = ["public", "reference", "tracking", "gameplay", "planning"];

const quoteName = (name: string) => `"${name.replaceAll('"', '""')}"`;

/* Your rows of a table, as a filter; null for a table that is all yours. */
const userRowsFilter = new Map(
  userTables.map((table) => [table.name, table.where ?? null]),
);

/*
 * Deletes every game data row: all of each table that isn't yours, and the
 * rows Voydex ships in a table that also holds yours (its own Challenge
 * rules). The caller turns triggers and foreign key checks off first.
 */
export const deleteGameRows = async (tx: Transaction) => {
  const { rows } = await tx.query<{ name: string }>(
    `SELECT schemas.nspname || '.' || tables.relname AS name
     FROM pg_class tables
     JOIN pg_namespace schemas ON schemas.oid = tables.relnamespace
     WHERE tables.relkind = 'r' AND schemas.nspname = ANY ($1)
     ORDER BY 1`,
    [appSchemas],
  );

  for (const { name } of rows) {
    const filter = userRowsFilter.get(name);

    if (filter === undefined) {
      await tx.exec(`DELETE FROM ${name}`);
    } else if (filter) {
      await tx.exec(`DELETE FROM ${name} WHERE (${filter}) IS NOT TRUE`);
    }
  }
};

type ForeignKey = {
  child: string;
  child_columns: string[];
  nullable: boolean[];
  parent: string;
  parent_columns: string[];
};

/*
 * The foreign keys from your tables (to one table, when given), each with
 * its columns in order and whether each may be empty.
 */
const readUserForeignKeys = async (tx: Transaction, parent?: string) => {
  const { rows } = await tx.query<ForeignKey>(
    `SELECT child_schema.nspname || '.' || child.relname AS child,
       parent_schema.nspname || '.' || parent.relname AS parent,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_columns,
       (SELECT array_agg(NOT a.attnotnull ORDER BY k.ord)
          FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS nullable,
       (SELECT array_agg(a.attname::text ORDER BY k.ord)
          FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.confrelid AND a.attnum = k.attnum) AS parent_columns
     FROM pg_constraint c
     JOIN pg_class child ON child.oid = c.conrelid
     JOIN pg_namespace child_schema ON child_schema.oid = child.relnamespace
     JOIN pg_class parent ON parent.oid = c.confrelid
     JOIN pg_namespace parent_schema ON parent_schema.oid = parent.relnamespace
     WHERE c.contype = 'f'
       AND ($1::text IS NULL OR c.confrelid = $1::regclass)
     ORDER BY 1, 2, c.conname`,
    [parent ?? null],
  );

  return rows.filter((key) => userRowsFilter.has(key.child));
};

/* A condition on a table's rows, kept to your rows of it. */
const onUserRows = (table: string, condition: string) => {
  const filter = userRowsFilter.get(table);

  return filter ? `(${condition}) AND (${filter})` : condition;
};

/*
 * Moves your rows off one ID: to the ID it became or, when it became
 * nothing, to no value where the columns allow it; otherwise the row goes,
 * as the thing it was about is gone. A composite ID joins its key with ":".
 */
const applyIdChange = async (tx: Transaction, change: GameDataIdChange) => {
  const { rows: keyRows } = await tx.query<{ columns: string[] | null }>(
    `SELECT array_agg(a.attname::text ORDER BY k.ord) AS columns
     FROM pg_constraint c
     CROSS JOIN LATERAL unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
     JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum
     WHERE c.conrelid = $1::regclass AND c.contype = 'p'`,
    [change.table],
  );
  const keyColumns = keyRows[0]?.columns ?? [];
  const from = change.id.split(":");
  const to = change.becomes?.split(":") ?? null;

  if (
    !keyColumns.length ||
    from.length !== keyColumns.length ||
    (to && to.length !== keyColumns.length)
  ) {
    throw new LocalDbError(
      `The ID change for ${change.table} ${change.id} doesn't fit its key.`,
    );
  }

  for (const key of await readUserForeignKeys(tx, change.table)) {
    const positions = keyColumns.map((column) =>
      key.parent_columns.indexOf(column),
    );

    /* A key on other columns doesn't point at this ID. */
    if (positions.some((position) => position < 0)) continue;

    const columns = positions.map((position) =>
      quoteName(key.child_columns[position]),
    );
    const where = onUserRows(
      key.child,
      columns.map((column, index) => `${column} = $${index + 1}`).join(" AND "),
    );

    if (to) {
      const set = columns
        .map((column, index) => `${column} = $${from.length + index + 1}`)
        .join(", ");

      await tx.query(`UPDATE ${key.child} SET ${set} WHERE ${where}`, [
        ...from,
        ...to,
      ]);
    } else if (positions.every((position) => key.nullable[position])) {
      const set = columns.map((column) => `${column} = NULL`).join(", ");

      await tx.query(`UPDATE ${key.child} SET ${set} WHERE ${where}`, from);
    } else {
      await tx.query(`DELETE FROM ${key.child} WHERE ${where}`, from);
    }
  }
};

/* How the device records an ID change: ["reference.moves", "12", "13"]. */
const idChangeKey = ({ becomes, id, table }: GameDataIdChange) =>
  JSON.stringify([table, id, becomes]);

/*
 * Applies, in list order, the ID changes this device hasn't had, and records
 * them, so a later release never applies one twice (a reused ID would move
 * your rows off its new meaning).
 */
export const applyIdChanges = async (
  tx: Transaction,
  changes: GameDataIdChange[],
) => {
  const { rows } = await tx.query<{ change: string }>(
    "SELECT change FROM device.id_changes",
  );
  const applied = new Set(rows.map((row) => row.change));

  for (const change of changes) {
    const key = idChangeKey(change);

    if (applied.has(key)) continue;

    await applyIdChange(tx, change);
    await tx.query("INSERT INTO device.id_changes (change) VALUES ($1)", [key]);
    applied.add(key);
  }
};

/*
 * A device that had no game data yet has no rows on old IDs: every change in
 * the list is already true of it.
 */
export const recordIdChanges = async (
  tx: Transaction,
  changes: GameDataIdChange[],
) => {
  for (const change of changes) {
    await tx.query(
      "INSERT INTO device.id_changes (change) VALUES ($1) ON CONFLICT DO NOTHING",
      [idChangeKey(change)],
    );
  }
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
