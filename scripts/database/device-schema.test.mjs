import fs from "node:fs";
import path from "node:path";
import zlib from "node:zlib";

import { PGlite } from "@electric-sql/pglite";
import { describe, expect, it } from "vitest";

import { rootDir } from "./context.mjs";
import {
  buildDeviceSchemaSql,
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
  readDeviceUpdateFiles,
  stripHostedOnly,
} from "./device-schema.mjs";
import {
  deviceUpdatesDir,
  readDeviceUpdates,
} from "./game-data/release-checks.mjs";

describe("buildDeviceSchemaSql", () => {
  it("puts the device schema first and leaves pgcrypto out", () => {
    const sql = buildDeviceSchemaSql({
      deviceSql: "CREATE SCHEMA device;\n",
      migrationSql:
        "CREATE EXTENSION IF NOT EXISTS pgcrypto;\nCREATE SCHEMA reference;",
    });

    expect(sql.startsWith("CREATE SCHEMA device;")).toBe(true);
    expect(sql).not.toMatch(/CREATE EXTENSION/i);
    expect(sql).toContain("CREATE SCHEMA reference;");
  });

  it("refuses a schema that needs another extension", () => {
    expect(() =>
      buildDeviceSchemaSql({
        deviceSql: "",
        migrationSql: "CREATE EXTENSION IF NOT EXISTS postgis;",
      }),
    ).toThrow("postgis");
  });

  it("records the device updates the schema already holds", () => {
    const sql = buildDeviceSchemaSql({
      deviceSql: "CREATE SCHEMA device;\n",
      migrationSql: "CREATE SCHEMA reference;",
      updateNames: ["0001-first.sql", "0002-add-notes.sql"],
    });

    expect(
      sql
        .trimEnd()
        .endsWith(
          "INSERT INTO device.updates (name)\n    VALUES ('0001-first.sql'), ('0002-add-notes.sql');",
        ),
    ).toBe(true);
  });

  it("refuses a device update named out of order", () => {
    expect(() =>
      buildDeviceSchemaSql({
        deviceSql: "",
        migrationSql: "",
        updateNames: ["notes.sql"],
      }),
    ).toThrow("0001-add-play-notes.sql");
  });
});

describe("stripHostedOnly", () => {
  const rule =
    "-- ============================================================================";
  const section = (source, sql) =>
    `${rule}\n-- Source: ${source}\n${rule}\n${sql}\n\n`;

  it("leaves out the hosted-only backups files", () => {
    const migrationSql = [
      `${rule}\n-- Voydex\n${rule}\n\n`,
      section("database/schema/06_views/001_a.sql", "CREATE VIEW a;"),
      section(
        "database/schema/07_backups/01_tables/001_b.sql",
        "CREATE TABLE b;",
      ),
      section("database/schema/08_later/001_c.sql", "CREATE TABLE c;"),
    ].join("");
    const sql = stripHostedOnly(migrationSql);

    expect(sql).toContain("CREATE VIEW a;");
    expect(sql).toContain("CREATE TABLE c;");
    expect(sql).not.toContain("CREATE TABLE b;");
    expect(sql).not.toContain("07_backups");
  });
});

/*
 * A device that already holds data only reaches a new schema through a
 * device update; without one it has to start fresh and loses its Plays.
 * schema.sha256 names the latest device update and the schema it brings a
 * device to, so a schema change with no update fails here, before a release.
 */
describe("device updates", () => {
  it("cover every change to the device schema", () => {
    const [name, hash] = fs
      .readFileSync(path.join(deviceUpdatesDir, "schema.sha256"), "utf8")
      .trim()
      .split(" ");
    const read = (file) => fs.readFileSync(path.join(rootDir, file), "utf8");
    const schemaHash = hashDeviceSchemaSql(
      buildDeviceSchemaSql({
        deviceSql: read("src/platform/local-db/device-schema.sql"),
        deviceTailSql: read("src/platform/local-db/device-changes.sql"),
        migrationSql: read(
          "database/supabase/migrations/00000000000000_voydex_current_schema.sql",
        ),
      }),
    );

    expect(name).toBe(readDeviceUpdates().at(-1));
    expect(
      schemaHash,
      "The device schema changed. Add a device update in database/device-updates/ and record it and the new hash in schema.sha256.",
    ).toBe(hash);
  });
});

/*
 * Everything a device's schema is made of, one line each: columns,
 * constraints, indexes, functions, triggers, views and policies.
 */
const catalogSql = `
  SELECT 'column ' || table_schema || '.' || table_name || '.' || column_name || ' '
    || udt_name || ' ' || is_nullable || ' ' || COALESCE(column_default, '') AS line
    FROM information_schema.columns
    WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
  UNION ALL
  SELECT 'constraint ' || conrelid::regclass || '.' || conname || ' ' || pg_get_constraintdef(oid)
    FROM pg_constraint WHERE conrelid <> 0
  UNION ALL
  SELECT 'index ' || indexdef FROM pg_indexes
    WHERE schemaname NOT IN ('pg_catalog', 'information_schema')
  UNION ALL
  SELECT 'function ' || md5(pg_get_functiondef(p.oid))
    || ' ' || n.nspname || '.' || p.proname
    FROM pg_proc p JOIN pg_namespace n ON n.oid = p.pronamespace
    WHERE n.nspname NOT IN ('pg_catalog', 'information_schema') AND p.prokind IN ('f', 'p')
  UNION ALL
  SELECT 'trigger ' || pg_get_triggerdef(oid) FROM pg_trigger WHERE NOT tgisinternal
  UNION ALL
  SELECT 'view ' || schemaname || '.' || viewname || ' ' || md5(definition) FROM pg_views
    WHERE schemaname NOT IN ('pg_catalog', 'information_schema')
  UNION ALL
  SELECT 'policy ' || schemaname || '.' || tablename || '.' || policyname || ' ' || cmd
    || ' ' || COALESCE(qual, '') || ' ' || COALESCE(with_check, '') FROM pg_policies
  ORDER BY 1`;

const readCatalog = async (db) =>
  (await db.query(catalogSql)).rows.map((row) => row.line);

/*
 * A device set up from the last released schema (released-schema.sql.gz),
 * then brought forward by the device updates it hasn't run, ends with the
 * same schema as a new device: an update that misses part of a schema
 * change fails here, not on someone's phone. The snapshot never needs
 * refreshing: the updates after it always bring it forward.
 */
describe("a released device", () => {
  it("ends with a new device's schema after its device updates", async () => {
    const released = await PGlite.create();
    const fresh = await PGlite.create();

    await released.exec(
      zlib
        .gunzipSync(
          fs.readFileSync(
            path.join(deviceUpdatesDir, "released-schema.sql.gz"),
          ),
        )
        .toString("utf8"),
    );
    await fresh.exec(readDeviceSchemaSql());

    const { rows } = await released.query("SELECT name FROM device.updates");
    const ran = new Set(rows.map((row) => row.name));

    for (const update of readDeviceUpdateFiles()) {
      if (!ran.has(update.name)) await released.exec(update.sql);
    }

    const [updated, expected] = await Promise.all([
      readCatalog(released),
      readCatalog(fresh),
    ]);

    expect(
      updated.filter((line) => !expected.includes(line)),
      "A released device keeps this after its updates; a device update is missing a change.",
    ).toEqual([]);
    expect(
      expected.filter((line) => !updated.includes(line)),
      "A new device has this but a released device never gets it; a device update is missing a change.",
    ).toEqual([]);
  }, 60_000);
});
