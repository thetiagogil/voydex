/*
 * Measures the device database with every game on it:
 *
 *   npm run game-data:build && npm run db:device-size
 *
 * Sets up a device on disk from the current device schema, with the app's
 * own database options, and installs the base file, every game and every
 * game's learnsets from public/game-data/ the way the app does. Then it
 * runs two release updates. After each step it prints the size of the
 * whole database folder (what a phone holds in memory while Voydex is
 * open), and at the end the largest tables and indexes and how long the
 * learnset reads take.
 */

import fs from "node:fs";
import os from "node:os";
import path from "node:path";

import { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  installGame,
  installGameBase,
  installGameLearnsets,
  parseGameDataVersions,
  updateGameData,
} from "@/platform/local-db/game-data";
import { localDbOptions } from "@/platform/local-db/local-db-options";

import { hashDeviceSchemaSql, readDeviceSchemaSql } from "./device-schema.mjs";

const rootDir = path.resolve(import.meta.dirname, "../..");
const gameDataDir = path.join(rootDir, "public", "game-data");

const megabytes = (bytes: number) => `${(bytes / 1024 / 1024).toFixed(1)} MB`;

const folderBytes = (folder: string): number =>
  fs
    .readdirSync(folder, { withFileTypes: true })
    .reduce(
      (sum, entry) =>
        sum +
        (entry.isDirectory()
          ? folderBytes(path.join(folder, entry.name))
          : fs.statSync(path.join(folder, entry.name)).size),
      0,
    );

type SizeRow = { bytes: number; kind: "index" | "table"; name: string };

const sizesSql = `
  SELECT n.nspname || '.' || c.relname AS name,
    CASE c.relkind WHEN 'i' THEN 'index' ELSE 'table' END AS kind,
    (CASE c.relkind WHEN 'i' THEN pg_relation_size(c.oid)
      ELSE pg_table_size(c.oid) END)::float8 AS bytes
  FROM pg_class c
  JOIN pg_namespace n ON n.oid = c.relnamespace
  WHERE c.relkind IN ('r', 'i')
    AND n.nspname NOT IN ('pg_catalog', 'information_schema', 'pg_toast')
  ORDER BY bytes DESC`;

const sumBytes = (rows: SizeRow[]) =>
  rows.reduce((sum, row) => sum + row.bytes, 0);

const timeIt = async (label: string, run: () => Promise<unknown>) => {
  const startedAt = performance.now();

  await run();
  console.log(
    `${label}: ${((performance.now() - startedAt) / 1000).toFixed(1)} s`,
  );
};

const dataDir = fs.mkdtempSync(path.join(os.tmpdir(), "voydex-device-"));
const db = await PGlite.create(dataDir, localDbOptions);

const measure = async (label: string) => {
  await db.exec("CHECKPOINT");

  const { rows } = await db.query<SizeRow>(sizesSql);
  const tables = rows.filter((row) => row.kind === "table");
  const indexes = rows.filter((row) => row.kind === "index");

  console.log(
    `${label}: ${megabytes(folderBytes(dataDir))} (tables ${megabytes(sumBytes(tables))}, indexes ${megabytes(sumBytes(indexes))}, log ${megabytes(folderBytes(path.join(dataDir, "pg_wal")))})`,
  );

  return { indexes, tables };
};

const schemaSql = readDeviceSchemaSql();

await ensureDeviceSchema(db, {
  hash: hashDeviceSchemaSql(schemaSql),
  readSql: () => Promise.resolve(schemaSql),
});

const versions = parseGameDataVersions(
  JSON.parse(fs.readFileSync(path.join(gameDataDir, "versions.json"), "utf8")),
);
const options = {
  download: (filePath: string) =>
    Promise.resolve(
      new Uint8Array(fs.readFileSync(path.join(gameDataDir, filePath))),
    ),
  versions,
};

await measure("Empty device");
await installGameBase(db, options);
await timeIt("Install every game", async () => {
  for (const game of versions.games) await installGame(db, game.slug, options);
});
await measure("Every game");
await timeIt("Install every learnset", async () => {
  for (const game of versions.games) {
    await installGameLearnsets(db, game.slug, options);
  }
});

const full = await measure("Every game and learnset");

for (const round of [1, 2]) {
  /* Marks every file as from another release, so the update swaps all. */
  await db.exec("UPDATE device.game_data_files SET hash = repeat('0', 64)");
  await timeIt(`Release update ${round}`, () => updateGameData(db, options));
  await measure(`After release update ${round}`);
}

console.log("\nLargest tables (with their TOAST)");
for (const row of full.tables.slice(0, 10)) {
  console.log(`  ${megabytes(row.bytes).padStart(8)}  ${row.name}`);
}

console.log("\nLargest indexes");
for (const row of full.indexes.slice(0, 10)) {
  console.log(`  ${megabytes(row.bytes).padStart(8)}  ${row.name}`);
}

/* The two learnset reads a move picker makes, for the form with most rows. */
await db.exec("ANALYZE");

const {
  rows: [sample],
} = await db.query<{ form_id: number; version_group_id: number }>(
  `SELECT form_id, version_group_id FROM reference.pokemon_learnsets
   GROUP BY 1, 2 ORDER BY count(*) DESC LIMIT 1`,
);
const readTime = async (label: string, sql: string) => {
  const { rows } = await db.query<{ "QUERY PLAN": string }>(
    `EXPLAIN (ANALYZE, COSTS OFF) ${sql}`,
  );
  const plan = rows.map((row) => row["QUERY PLAN"]);

  console.log(
    `  ${label}: ${plan.find((line) => line.startsWith("Execution Time"))}`,
  );
};

console.log("\nLearnset reads");
await readTime(
  "own rows",
  `SELECT move_id, game_id, scope_operation FROM reference.pokemon_learnsets
   WHERE form_id = ${sample.form_id} AND version_group_id = ${sample.version_group_id}
   ORDER BY id`,
);
await readTime(
  "resolved rows",
  `SELECT move_id, game_id, learn_method_id, level_learned_at, machine_label, sort_order
   FROM views.reference_resolved_pokemon_learnsets
   WHERE form_id = ${sample.form_id} AND target_version_group_id = ${sample.version_group_id}
   ORDER BY sort_order`,
);

await db.close();
fs.rmSync(dataDir, { force: true, recursive: true });
