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
});
