import { userTables, type Transaction } from "@/platform/local-db/user-data";

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
