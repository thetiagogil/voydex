import fs from "node:fs";
import path from "node:path";

import { describe, expect, it } from "vitest";

import { rootDir } from "./context.mjs";
import {
  buildDeviceSchemaSql,
  hashDeviceSchemaSql,
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
