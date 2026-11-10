import { describe, expect, it } from "vitest";

import { buildDeviceSchemaSql } from "./device-schema.mjs";

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
