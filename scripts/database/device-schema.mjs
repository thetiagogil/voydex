#!/usr/bin/env node

/*
 * Writes the SQL a new device runs, and its hash, to public/local-db/ (run
 * before `dev` and `build`): the device schema
 * (src/platform/local-db/device-schema.sql), then the built migration. The
 * app serves them as static files, so a returning device only fetches the
 * hash.
 */

import { createHash } from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

import { rootDir, supabaseDir } from "./context.mjs";

/*
 * The schema asks for pgcrypto, but nothing in it uses pgcrypto (Postgres
 * has gen_random_uuid() built in). The device leaves it out rather than
 * download a 1 MB extension for nothing.
 */
const pgcryptoStatement = "CREATE EXTENSION IF NOT EXISTS pgcrypto;";

/* Fails loudly when the schema asks for an extension the device lacks. */
export function buildDeviceSchemaSql({ deviceSql, migrationSql }) {
  const schemaSql = migrationSql.replace(
    pgcryptoStatement,
    "-- pgcrypto: left out on the device, nothing uses it.",
  );
  const extension = /^\s*CREATE EXTENSION[^;]*;/im.exec(schemaSql);

  if (extension) {
    throw new Error(
      `The device can't run "${extension[0].trim()}". Add the extension to the device database first.`,
    );
  }

  return `${deviceSql.trimEnd()}\n\n${schemaSql}`;
}

export function readDeviceSchemaSql() {
  return buildDeviceSchemaSql({
    deviceSql: fs.readFileSync(
      path.join(rootDir, "src/platform/local-db/device-schema.sql"),
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
}
