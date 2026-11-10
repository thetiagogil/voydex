#!/usr/bin/env node

/*
 * Builds one game data file for the device database (format 1): loads the
 * schema and the seeds (without the development fixtures) into an in-memory
 * PGlite, keeps the shared rows plus one version group's rows (and its
 * expansions'), and writes every non-empty table as COPY text to
 * public/game-data/<slug>.json.gz.
 *
 *   npm run local-db:game-file              Sword / Shield (swsh)
 *   npm run local-db:game-file -- sv        another version group
 *   npm run local-db:game-file -- all       every game, for comparing sizes
 */

import fs from "node:fs";
import path from "node:path";
import zlib from "node:zlib";

import { PGlite } from "@electric-sql/pglite";
import { pgcrypto } from "@electric-sql/pglite/contrib/pgcrypto";

import { databaseDir, rootDir, supabaseDir } from "./context.mjs";
import { collectSqlFiles, relativePath } from "./files.mjs";

const gameFileFormat = 1;
const appSchemas = ["public", "reference", "tracking", "gameplay", "planning"];
/* The game list is always on the device, whichever game it holds. */
const gameListTables = new Set([
  "reference.games",
  "reference.game_platforms",
  "reference.game_content_scopes",
  "reference.content_scope_dependencies",
]);

const slug = process.argv[2] ?? "swsh";

if (process.argv.length > 3 || !/^[a-z0-9-]+$/.test(slug)) {
  console.error("Usage: node scripts/database/build-game-file.mjs [slug|all]");
  process.exit(1);
}

const step = async (label, run) => {
  const startedAt = performance.now();
  const result = await run();
  console.log(
    `${label}: ${((performance.now() - startedAt) / 1000).toFixed(1)} s`,
  );
  return result;
};

const formatBytes = (bytes) => `${(bytes / 1024 / 1024).toFixed(2)} MB`;

const db = await PGlite.create({ extensions: { pgcrypto } });

await step("Schema", async () => {
  await db.exec(
    fs.readFileSync(
      path.join(rootDir, "src/platform/local-db/device-schema.sql"),
      "utf8",
    ),
  );
  await db.exec(
    fs.readFileSync(
      path.join(
        supabaseDir,
        "migrations",
        "00000000000000_voydex_current_schema.sql",
      ),
      "utf8",
    ),
  );
});

await step("Seeds", async () => {
  const seedFiles = collectSqlFiles(path.join(databaseDir, "seeds"))
    .filter(
      (file) => !relativePath(databaseDir, file).includes("90_development"),
    )
    .sort((a, b) =>
      relativePath(rootDir, a).localeCompare(relativePath(rootDir, b)),
    );

  for (const file of seedFiles) {
    try {
      await db.exec(fs.readFileSync(file, "utf8"));
    } catch (error) {
      throw new Error(`${relativePath(rootDir, file)}: ${error.message}`);
    }
  }
});

const readBaseTables = async () => {
  const { rows } = await db.query(
    `SELECT table_schema || '.' || table_name AS name
     FROM information_schema.tables
     WHERE table_type = 'BASE TABLE' AND table_schema = ANY ($1)
     ORDER BY 1`,
    [appSchemas],
  );
  return rows.map((row) => row.name);
};

const readColumns = async (table) => {
  const [schema, name] = table.split(".");
  const { rows } = await db.query(
    `SELECT column_name, is_nullable = 'YES' AS nullable
     FROM information_schema.columns
     WHERE table_schema = $1 AND table_name = $2 AND is_generated = 'NEVER'
     ORDER BY ordinal_position`,
    [schema, name],
  );
  return rows;
};

let versionGroupIds = [];

if (slug === "all") {
  const { rows } = await db.query("SELECT id FROM reference.version_groups");
  versionGroupIds = rows.map((row) => row.id);
} else {
  const { rows } = await db.query(
    `SELECT id FROM reference.version_groups
     WHERE slug = $1
        OR parent_version_group_id = (SELECT id FROM reference.version_groups WHERE slug = $1)
     ORDER BY id`,
    [slug],
  );
  versionGroupIds = rows.map((row) => row.id);

  if (!versionGroupIds.length) {
    console.error(`No version group "${slug}".`);
    process.exit(1);
  }

  await step("Keep one game", async () => {
    await db.exec("SET session_replication_role = replica");

    for (const table of await readBaseTables()) {
      if (gameListTables.has(table)) continue;

      const columns = await readColumns(table);
      const versionGroup = columns.find(
        (column) => column.column_name === "version_group_id",
      );

      if (versionGroup) {
        await db.query(
          `DELETE FROM ${table} WHERE ${versionGroup.nullable ? "version_group_id IS NOT NULL AND " : ""}NOT (version_group_id = ANY ($1))`,
          [versionGroupIds],
        );
      } else if (columns.some((column) => column.column_name === "game_id")) {
        await db.query(
          `DELETE FROM ${table} WHERE game_id IS NOT NULL AND game_id NOT IN
             (SELECT id FROM reference.games WHERE version_group_id = ANY ($1))`,
          [versionGroupIds],
        );
      }
    }

    /* Rows whose parent row just went go too, until nothing is left over. */
    const { rows: foreignKeys } = await db.query(
      `SELECT c.conrelid::regclass::text AS child, c.confrelid::regclass::text AS parent,
         (SELECT array_agg(a.attname ORDER BY k.ord) FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
            JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_columns,
         (SELECT array_agg(a.attname ORDER BY k.ord) FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
            JOIN pg_attribute a ON a.attrelid = c.confrelid AND a.attnum = k.attnum) AS parent_columns
       FROM pg_constraint c
       JOIN pg_namespace n ON n.oid = c.connamespace
       WHERE c.contype = 'f' AND n.nspname = ANY ($1)`,
      [appSchemas],
    );
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

    await db.exec("SET session_replication_role = origin");
  });
}

const tables = await step("Export", async () => {
  const exported = [];

  for (const table of await readBaseTables()) {
    const columns = (await readColumns(table)).map(
      (column) => column.column_name,
    );
    const {
      rows: [{ count }],
    } = await db.query(`SELECT count(*)::int AS count FROM ${table}`);

    if (!count) continue;

    const result = await db.query(
      `COPY (SELECT ${columns.join(", ")} FROM ${table} ORDER BY 1) TO '/dev/blob'`,
    );
    exported.push({
      columns,
      copy: await result.blob.text(),
      name: table,
      rows: count,
    });
  }

  return exported;
});

await db.close();

const file = {
  builtAt: new Date().toISOString(),
  format: gameFileFormat,
  slug,
  tables,
  versionGroupIds,
};
const json = JSON.stringify(file);
const gzipped = zlib.gzipSync(json, { level: 9 });
const outputDir = path.join(rootDir, "public", "game-data");
const outputPath = path.join(outputDir, `${slug}.json.gz`);

fs.mkdirSync(outputDir, { recursive: true });
fs.writeFileSync(outputPath, gzipped);

const tableSizes = tables
  .map((table) => ({
    gzipped: zlib.gzipSync(table.copy).length,
    name: table.name,
    rows: table.rows,
  }))
  .sort((a, b) => b.gzipped - a.gzipped);

console.log(
  `\nWrote ${relativePath(rootDir, outputPath)}: ${formatBytes(gzipped.length)} gzipped, ${formatBytes(Buffer.byteLength(json))} unzipped, ${tables.reduce((sum, table) => sum + table.rows, 0)} rows in ${tables.length} tables.`,
);
console.log("Largest tables (gzipped on their own):");
for (const table of tableSizes.slice(0, 8)) {
  console.log(
    `  ${table.name}: ${formatBytes(table.gzipped)}, ${table.rows} rows`,
  );
}
