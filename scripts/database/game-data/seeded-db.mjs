import fs from "node:fs";
import path from "node:path";

import { PGlite } from "@electric-sql/pglite";

import { databaseDir, rootDir } from "../context.mjs";
import { readDeviceSchemaSql } from "../device-schema.mjs";
import { collectSqlFiles, relativePath } from "../files.mjs";

/* The schemas game data and user data live in, the ones files may carry. */
export const appSchemas = [
  "public",
  "reference",
  "tracking",
  "gameplay",
  "planning",
];

const readSeedFiles = () =>
  collectSqlFiles(path.join(databaseDir, "seeds"))
    .filter(
      (file) => !relativePath(databaseDir, file).includes("90_development"),
    )
    .sort((a, b) =>
      relativePath(rootDir, a).localeCompare(relativePath(rootDir, b)),
    );

/*
 * An in-memory PGlite with the device schema (exactly what a device runs)
 * and every seed except the development fixtures. No Docker needed.
 */
export async function loadSeededDb() {
  const db = await PGlite.create();

  await db.exec(readDeviceSchemaSql());

  for (const file of readSeedFiles()) {
    try {
      await db.exec(fs.readFileSync(file, "utf8"));
    } catch (error) {
      await db.close();
      throw new Error(`${relativePath(rootDir, file)}: ${error.message}`);
    }
  }

  return db;
}

export async function readBaseTables(db) {
  const { rows } = await db.query(
    `SELECT table_schema || '.' || table_name AS name
     FROM information_schema.tables
     WHERE table_type = 'BASE TABLE' AND table_schema = ANY ($1)
     ORDER BY 1`,
    [appSchemas],
  );

  return rows.map((row) => row.name);
}

/*
 * The columns a file carries. Columns that default to the time of the insert
 * (created_at, updated_at) are left out: the device fills them when it
 * imports, and a file's content, and so its hash, stays the same between
 * builds of the same seeds.
 */
export async function readColumns(db, table) {
  const [schema, name] = table.split(".");
  const { rows } = await db.query(
    `SELECT column_name AS name, is_nullable = 'YES' AS nullable
     FROM information_schema.columns
     WHERE table_schema = $1 AND table_name = $2 AND is_generated = 'NEVER'
       AND coalesce(lower(column_default), '') <> 'now()'
     ORDER BY ordinal_position`,
    [schema, name],
  );

  return rows;
}

/* Every foreign key between the app's tables, with its columns in order. */
export async function readForeignKeys(db) {
  const { rows } = await db.query(
    `SELECT c.conrelid::regclass::text AS child, c.confrelid::regclass::text AS parent,
       (SELECT array_agg(a.attname ORDER BY k.ord) FROM unnest(c.conkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.conrelid AND a.attnum = k.attnum) AS child_columns,
       (SELECT array_agg(a.attname ORDER BY k.ord) FROM unnest(c.confkey) WITH ORDINALITY k(attnum, ord)
          JOIN pg_attribute a ON a.attrelid = c.confrelid AND a.attnum = k.attnum) AS parent_columns
     FROM pg_constraint c
     JOIN pg_namespace n ON n.oid = c.connamespace
     WHERE c.contype = 'f' AND n.nspname = ANY ($1)
     ORDER BY 1, 2`,
    [appSchemas],
  );

  return rows;
}
