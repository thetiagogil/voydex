import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  buildDeviceSchemaSql,
  ensureDeviceSchema,
  localUserId,
} from "@/platform/local-db/device-schema";
import {
  createTestDb,
  readDeviceSchemaSql,
} from "@/platform/local-db/local-db-test-support";

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

describe("ensureDeviceSchema", () => {
  let db: PGlite;
  const schemaSql = readDeviceSchemaSql();

  beforeAll(async () => {
    db = await createTestDb();
  });

  afterAll(() => db.close());

  it("installs the schema with the local user, profile and preferences", async () => {
    await expect(ensureDeviceSchema(db, schemaSql)).resolves.toEqual({
      status: "installed",
    });

    const { rows } = await db.query<{
      preferences: number;
      profiles: number;
      uid: string;
    }>(`SELECT auth.uid() AS uid,
          (SELECT count(*)::int FROM public.profiles WHERE id = auth.uid()) AS profiles,
          (SELECT count(*)::int FROM public.user_preferences WHERE user_id = auth.uid()) AS preferences`);

    expect(rows).toEqual([{ preferences: 1, profiles: 1, uid: localUserId }]);
  });

  it("leaves an installed device alone", async () => {
    await expect(ensureDeviceSchema(db, schemaSql)).resolves.toEqual({
      status: "ready",
    });
  });

  it("says when the device has an older schema", async () => {
    await expect(
      ensureDeviceSchema(db, `${schemaSql}\n-- changed`),
    ).resolves.toEqual({ status: "outdated" });
  });

  it("rolls a failed install back completely", async () => {
    const fresh = await createTestDb();

    await expect(
      ensureDeviceSchema(fresh, `${schemaSql}\nSELECT * FROM missing_table;`),
    ).rejects.toMatchObject({ code: "42P01" });

    const { rows } = await fresh.query<{ installed: boolean }>(
      "SELECT to_regnamespace('device') IS NOT NULL AS installed",
    );

    expect(rows).toEqual([{ installed: false }]);
    await fresh.close();
  });
});
