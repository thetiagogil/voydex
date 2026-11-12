#!/usr/bin/env node

/*
 * Writes the SQL a new device runs, and its hash, to public/local-db/ (run
 * before `dev` and `build`): the device schema
 * (src/platform/local-db/device-schema.sql), then the built migration, then
 * the device's change records on top of it
 * (src/platform/local-db/device-changes.sql), then the device updates it
 * already holds. The app serves them as static files,
 * so a returning device only fetches the hash. The device updates
 * (database/device-updates/) go to updates.json, which only a device with
 * an older schema fetches. PGlite's own file system bundle goes beside them,
 * gzipped (`pglite-bundle.mjs`).
 */

import { createHash } from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

import { rootDir, supabaseDir } from "./context.mjs";
import { writePgliteBundle } from "./pglite-bundle.mjs";
import {
  deviceUpdatesDir,
  readDeviceUpdates,
} from "./game-data/release-checks.mjs";

/*
 * The schema asks for pgcrypto, but nothing in it uses pgcrypto (Postgres
 * has gen_random_uuid() built in). The device leaves it out rather than
 * download a 1 MB extension for nothing.
 */
const pgcryptoStatement = "CREATE EXTENSION IF NOT EXISTS pgcrypto;";

/*
 * Hosted Supabase's own part of the schema (account backups and their
 * storage folder): the device leaves it out.
 */
const hostedOnlySource = "-- Source: database/schema/07_backups/";

/* The migration without its hosted-only files, by their Source headers. */
export function stripHostedOnly(migrationSql) {
  const rule =
    "-- ============================================================================";
  const parts = migrationSql.split(`${rule}\n-- Source: `);

  return [
    parts[0],
    ...parts
      .slice(1)
      .filter((part) => !`-- Source: ${part}`.startsWith(hostedOnlySource)),
  ].join(`${rule}\n-- Source: `);
}

const updateNamePattern = /^[0-9]{4}-[a-z0-9]+(?:-[a-z0-9]+)*\.sql$/;

const checkUpdateName = (name) => {
  if (!updateNamePattern.test(name)) {
    throw new Error(
      `Device update "${name}" needs a name like 0001-add-play-notes.sql.`,
    );
  }

  return name;
};

/*
 * Fails loudly when the schema asks for an extension the device lacks. A new
 * device gets the current schema, which already holds every device update,
 * so it records them as run.
 */
export function buildDeviceSchemaSql({
  deviceSql,
  deviceTailSql = "",
  migrationSql,
  updateNames = [],
}) {
  const schemaSql = stripHostedOnly(migrationSql).replace(
    pgcryptoStatement,
    "-- pgcrypto: left out on the device, nothing uses it.",
  );
  const extension = /^\s*CREATE EXTENSION[^;]*;/im.exec(schemaSql);

  if (extension) {
    throw new Error(
      `The device can't run "${extension[0].trim()}". Add the extension to the device database first.`,
    );
  }

  const updatesSql = updateNames.length
    ? `\n\nINSERT INTO device.updates (name)\n    VALUES ${updateNames
        .map((name) => `('${checkUpdateName(name)}')`)
        .join(", ")};\n`
    : "";

  const tailSql = deviceTailSql.trim() ? `\n${deviceTailSql.trimEnd()}\n` : "";

  return `${deviceSql.trimEnd()}\n\n${schemaSql.trimEnd()}\n${tailSql}${updatesSql}`;
}

/* The device updates, in the order a device runs them, with their SQL. */
export function readDeviceUpdateFiles() {
  return readDeviceUpdates().map((name) => ({
    name: checkUpdateName(name),
    sql: fs.readFileSync(path.join(deviceUpdatesDir, name), "utf8"),
  }));
}

export function readDeviceSchemaSql() {
  return buildDeviceSchemaSql({
    deviceSql: fs.readFileSync(
      path.join(rootDir, "src/platform/local-db/device-schema.sql"),
      "utf8",
    ),
    deviceTailSql: fs.readFileSync(
      path.join(rootDir, "src/platform/local-db/device-changes.sql"),
      "utf8",
    ),
    migrationSql: fs.readFileSync(
      path.join(
        supabaseDir,
        "migrations",
        "00000000000000_voydex_current_schema.sql",
      ),
      "utf8",
    ),
    updateNames: readDeviceUpdates(),
  });
}

/* The same SHA-256 hex digest `hashSchemaSql` gives in the browser. */
export function hashDeviceSchemaSql(sql) {
  return createHash("sha256").update(sql).digest("hex");
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
  const sql = readDeviceSchemaSql();
  const outputDir = path.join(rootDir, "public", "local-db");

  fs.mkdirSync(outputDir, { recursive: true });
  fs.writeFileSync(path.join(outputDir, "schema.sql"), sql);
  fs.writeFileSync(
    path.join(outputDir, "schema-hash.txt"),
    hashDeviceSchemaSql(sql),
  );
  fs.writeFileSync(
    path.join(outputDir, "updates.json"),
    JSON.stringify({ updates: readDeviceUpdateFiles() }),
  );
  writePgliteBundle(path.join(rootDir, "public"));
}
