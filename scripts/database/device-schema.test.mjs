import { describe, expect, it } from "vitest";

import { buildDeviceSchemaSql, stripHostedOnly } from "./device-schema.mjs";

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
