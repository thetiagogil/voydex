import { gzipSync } from "node:zlib";

import { afterAll, beforeAll, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  importGameFile,
  parseGameFile,
  readGameFileBytes,
  readImportedGameSlugs,
  type GameFile,
} from "@/platform/local-db/game-file";
import { LocalDbError } from "@/platform/local-db/local-db";
import {
  createTestDb,
  readDeviceSchemaSql,
} from "@/platform/local-db/local-db-test-support";

const gameFile: GameFile = {
  builtAt: "2026-11-09T22:00:00.000Z",
  format: 1,
  slug: "swsh",
  tables: [
    {
      columns: ["id", "slug", "name", "start_year", "sort_order", "created_at"],
      copy: "1\tgeneration-1\tGeneration I\t1996\t1\t2026-11-09 22:02:42+00\n",
      name: "reference.generations",
      rows: 1,
    },
    {
      /* Its generation is in the file, but rows go in with checks off. */
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      copy: "1\tnormal\tNormal\t1\t1\n2\tfire\tFire\t1\t2\n",
      name: "reference.types",
      rows: 2,
    },
    {
      columns: ["id", "slug", "name", "is_terminal", "sort_order"],
      copy: "",
      name: "gameplay.mainline_play_statuses",
      rows: 0,
    },
  ],
  versionGroupIds: [18, 19, 20],
};

describe("parseGameFile", () => {
  it("accepts a format 1 file", () => {
    expect(parseGameFile(gameFile)).toEqual(gameFile);
  });

  it("refuses a newer format", () => {
    expect(() => parseGameFile({ ...gameFile, format: 2 })).toThrow(
      LocalDbError,
    );
  });

  it("refuses a table outside the app's schemas", () => {
    expect(() =>
      parseGameFile({
        ...gameFile,
        tables: [{ ...gameFile.tables[0], name: "auth.users" }],
      }),
    ).toThrow("broken");
  });

  it("refuses a column name that isn't an identifier", () => {
    expect(() =>
      parseGameFile({
        ...gameFile,
        tables: [{ ...gameFile.tables[0], columns: ["id); DROP TABLE x; --"] }],
      }),
    ).toThrow("broken");
  });
});

describe("readGameFileBytes", () => {
  const json = JSON.stringify(gameFile);

  it("reads a gzipped file", async () => {
    await expect(
      readGameFileBytes(new Uint8Array(gzipSync(json))),
    ).resolves.toEqual(gameFile);
  });

  it("reads a file the server already unzipped", async () => {
    await expect(
      readGameFileBytes(new TextEncoder().encode(json)),
    ).resolves.toEqual(gameFile);
  });
});

describe("importGameFile", () => {
  let db: PGlite;

  beforeAll(async () => {
    db = await createTestDb();
    await ensureDeviceSchema(db, readDeviceSchemaSql());
  });

  afterAll(() => db.close());

  it("copies every table's rows in and records the file", async () => {
    await expect(importGameFile(db, gameFile)).resolves.toEqual({
      rows: 3,
      status: "imported",
    });

    const { rows } = await db.query<{ slug: string }>(
      "SELECT slug FROM reference.types ORDER BY id",
    );

    expect(rows).toEqual([{ slug: "normal" }, { slug: "fire" }]);
    await expect(readImportedGameSlugs(db)).resolves.toEqual(["swsh"]);
  });

  it("imports the same file only once", async () => {
    await expect(importGameFile(db, gameFile)).resolves.toEqual({
      status: "already-imported",
    });
  });

  it("refuses a second game while files hold the shared rows", async () => {
    await expect(
      importGameFile(db, { ...gameFile, slug: "sv" }),
    ).rejects.toThrow("already has swsh");
  });

  it("leaves nothing behind when a table fails", async () => {
    const fresh = await createTestDb();
    await ensureDeviceSchema(fresh, readDeviceSchemaSql());

    await expect(
      importGameFile(fresh, {
        ...gameFile,
        tables: [
          gameFile.tables[0],
          { ...gameFile.tables[1], copy: "not\ta\trow\n" },
        ],
      }),
    ).rejects.toBeInstanceOf(LocalDbError);

    const { rows } = await fresh.query<{ count: number }>(
      "SELECT (SELECT count(*) FROM reference.generations)::int + (SELECT count(*) FROM device.game_files)::int AS count",
    );

    expect(rows).toEqual([{ count: 0 }]);
    await fresh.close();
  });
});
