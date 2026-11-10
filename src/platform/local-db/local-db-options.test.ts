import { describe, expect, it } from "vitest";
import { PGlite } from "@electric-sql/pglite";

import { localDbOptions } from "@/platform/local-db/local-db-options";

const readSettings = async (db: PGlite) => {
  const { rows } = await db.query<{ name: string; setting: string }>(
    "SELECT name, setting FROM pg_settings WHERE name IN ('wal_segment_size', 'min_wal_size', 'max_wal_size') ORDER BY name",
  );

  return Object.fromEntries(rows.map((row) => [row.name, row.setting]));
};

describe("localDbOptions", () => {
  it("creates a database with 1 MB log files and 32 MB of log", async () => {
    const db = await PGlite.create(localDbOptions);

    await expect(readSettings(db)).resolves.toEqual({
      max_wal_size: "32",
      min_wal_size: "32",
      wal_segment_size: "1048576",
    });
    await db.close();
  });

  it("still opens a database made with 16 MB log files", async () => {
    const original = await PGlite.create();
    const dataDir = await original.dumpDataDir("none");
    await original.close();

    const db = await PGlite.create({ ...localDbOptions, loadDataDir: dataDir });

    await expect(readSettings(db)).resolves.toMatchObject({
      wal_segment_size: "16777216",
    });
    await db.close();
  });
});
