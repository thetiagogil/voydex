import { readBaseTables, readColumns, readForeignKeys } from "./seeded-db.mjs";

/* The game list is always on the device, so its rows stay in the base file. */
const gameListTables = new Set([
  "reference.games",
  "reference.game_platforms",
  "reference.game_content_scopes",
  "reference.content_scope_dependencies",
]);

/* Most of a game's rows; they get their own file, loaded in the background. */
export const learnsetTables = new Set(["reference.pokemon_learnsets"]);

/*
 * Deletes every row that belongs to a game outside `versionGroupIds`: rows
 * with another version group or game, then rows whose parent row just went,
 * until nothing is left over. With no ids, only the shared rows stay.
 */
async function keepOnlyGames(db, { columns, foreignKeys, tables }, ids) {
  for (const table of tables) {
    if (gameListTables.has(table)) continue;

    const tableColumns = columns.get(table);
    const versionGroup = tableColumns.find(
      (column) => column.name === "version_group_id",
    );

    if (versionGroup) {
      await db.query(
        `DELETE FROM ${table} WHERE ${versionGroup.nullable ? "version_group_id IS NOT NULL AND " : ""}NOT (version_group_id = ANY ($1))`,
        [ids],
      );
    } else if (tableColumns.some((column) => column.name === "game_id")) {
      await db.query(
        `DELETE FROM ${table} WHERE game_id IS NOT NULL AND game_id NOT IN
           (SELECT id FROM reference.games WHERE version_group_id = ANY ($1))`,
        [ids],
      );
    }
  }

  let deleted = 0;

  do {
    deleted = 0;
    for (const key of foreignKeys) {
      const present = key.child_columns
        .map((column) => `child.${column} IS NOT NULL`)
        .join(" AND ");
      const matches = key.child_columns
        .map(
          (column, index) =>
            `parent.${key.parent_columns[index]} = child.${column}`,
        )
        .join(" AND ");
      const result = await db.query(
        `DELETE FROM ${key.child} AS child WHERE ${present}
           AND NOT EXISTS (SELECT 1 FROM ${key.parent} AS parent WHERE ${matches})`,
      );
      deleted += result.affectedRows ?? 0;
    }
  } while (deleted > 0);
}

/* Each table's rows as COPY text lines, in a stable order. */
async function exportRows(db, { columns, tables }) {
  const rows = new Map();

  for (const table of tables) {
    const names = columns.get(table).map((column) => column.name);
    const order = names.map((_, index) => index + 1).join(", ");
    const result = await db.query(
      `COPY (SELECT ${names.join(", ")} FROM ${table} ORDER BY ${order}) TO '/dev/blob'`,
    );
    const text = result.blob ? await result.blob.text() : "";

    /* COPY text escapes newlines inside values, so one line is one row. */
    rows.set(table, text ? text.split("\n").filter(Boolean) : []);
  }

  return rows;
}

/* What is left after keeping only some games; the database is untouched. */
async function exportKeeping(db, shape, ids) {
  await db.exec("BEGIN");

  try {
    await db.exec("SET LOCAL session_replication_role = replica");
    await keepOnlyGames(db, shape, ids);

    return await exportRows(db, shape);
  } finally {
    await db.exec("ROLLBACK");
  }
}

const toFileTables = (rows, columns, include) =>
  [...rows]
    .filter(([table, lines]) => lines.length && include(table))
    .map(([table, lines]) => ({
      columns: columns.get(table).map((column) => column.name),
      copy: `${lines.join("\n")}\n`,
      name: table,
      rows: lines.length,
    }));

/*
 * Splits the seeded rows into one shared base and one part per game (a
 * version group with its expansions), with learnsets apart. Every row lands
 * in exactly one part; a row that would land in two, or in none, fails the
 * build, so no data is lost or loaded twice.
 */
export async function splitGameData(db) {
  const tables = await readBaseTables(db);
  const columns = new Map();

  for (const table of tables) columns.set(table, await readColumns(db, table));

  const shape = { columns, foreignKeys: await readForeignKeys(db), tables };
  const everyRow = await exportRows(db, shape);
  const baseRows = await exportKeeping(db, shape, []);
  const owners = new Map(
    tables.map((table) => [
      table,
      new Map(baseRows.get(table).map((line) => [line, "base"])),
    ]),
  );
  const { rows: groups } = await db.query(
    `SELECT id, slug FROM reference.version_groups
     WHERE parent_version_group_id IS NULL ORDER BY id`,
  );
  const games = [];

  for (const group of groups) {
    const { rows: members } = await db.query(
      `SELECT id FROM reference.version_groups
       WHERE id = $1 OR parent_version_group_id = $1 ORDER BY id`,
      [group.id],
    );
    const versionGroupIds = members.map((member) => member.id);
    const kept = await exportKeeping(db, shape, versionGroupIds);
    const ownRows = new Map();

    for (const table of tables) {
      const tableOwners = owners.get(table);
      const own = kept.get(table).filter((line) => {
        const owner = tableOwners.get(line);

        if (owner && owner !== "base") {
          throw new Error(
            `A ${table} row belongs to both ${owner} and ${group.slug}: ${line}`,
          );
        }

        return !owner;
      });

      for (const line of own) tableOwners.set(line, group.slug);
      ownRows.set(table, own);
    }

    games.push({
      data: toFileTables(
        ownRows,
        columns,
        (table) => !learnsetTables.has(table),
      ),
      learnsets: toFileTables(ownRows, columns, (table) =>
        learnsetTables.has(table),
      ),
      slug: group.slug,
      versionGroupIds,
    });
  }

  for (const table of tables) {
    const left = everyRow
      .get(table)
      .filter((line) => !owners.get(table).has(line));

    if (left.length) {
      throw new Error(
        `${left.length} ${table} rows belong to no file (they point at more than one game), e.g. ${left[0]}`,
      );
    }
  }

  return { base: toFileTables(baseRows, columns, () => true), games };
}
