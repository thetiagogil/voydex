import { afterEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { localUserId } from "@/platform/local-db/device-schema";
import {
  installGame,
  readInstalledGameData,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import {
  planBackgroundDownloads,
  readWantedVersionGroups,
  runBackgroundDownloads,
} from "@/platform/local-db/game-data-background";
import { buildFile } from "@/platform/local-db/game-data-test-support";
import { createTestDevice } from "@/platform/local-db/local-db-test-support";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

const schemaHash = hashDeviceSchemaSql(readDeviceSchemaSql());

/* A small egg group row per file, so each file has something to copy in. */
const eggGroupFile = (
  name: string,
  kind: "base" | "game" | "learnsets",
  slug: string,
  id: number,
) =>
  buildFile(name, kind, slug, [
    {
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      copy: `${id}\tgroup-${id}\tGroup ${id}\t1\t${id}\n`,
      name: "reference.egg_groups",
      rows: 1,
    },
  ]);

const base = eggGroupFile("base", "base", "base", 1);
const swsh = eggGroupFile("swsh", "game", "swsh", 2);
const swshLearnsets = eggGroupFile("swsh-learnsets", "learnsets", "swsh", 3);
const sv = eggGroupFile("sv", "game", "sv", 4);
const svLearnsets = eggGroupFile("sv-learnsets", "learnsets", "sv", 5);
const files = [base, swsh, swshLearnsets, sv, svLearnsets];

const versions: GameDataVersions = {
  base: base.entry,
  builtAt: "2026-11-12T12:00:00.000Z",
  format: 2,
  games: [
    {
      data: swsh.entry,
      learnsets: swshLearnsets.entry,
      slug: "swsh",
      versionGroupIds: [18, 19, 20],
    },
    {
      data: sv.entry,
      learnsets: svLearnsets.entry,
      slug: "sv",
      versionGroupIds: [23, 24, 25],
    },
  ],
  idChanges: [],
  schemaHash,
};

/* Serves the files above; `fail` names files that don't download. */
const createDownload = (fail: Record<string, Error> = {}) =>
  vi.fn(async (path: string, onBytes: (bytes: number) => void) => {
    const file = files.find((item) => item.entry.path === path);

    if (!file) throw new Error(`No file ${path}`);

    const error = fail[file.entry.name];

    if (error) throw error;

    onBytes(file.bytes.byteLength);

    return file.bytes;
  });

const downloadedNames = (download: ReturnType<typeof createDownload>) =>
  download.mock.calls.map(([path]) => path.split(".")[0]);

const openDbs: PGlite[] = [];

afterEach(async () => {
  await Promise.all(openDbs.splice(0).map((db) => db.close()));
});

/*
 * A set-up device with the games the wanted list reads (Sword and Shield
 * with its expansion, Scarlet and Violet), as the base file brings them.
 */
const createDevice = async () => {
  const db = await createTestDevice();

  openDbs.push(db);
  await db.exec(`
    SET session_replication_role = replica;
    INSERT INTO reference.version_groups (id, slug, name, generation_id, description, sort_order, parent_version_group_id)
    VALUES
      (18, 'sword-shield', 'Sword and Shield', 8, 'Galar.', 18, NULL),
      (20, 'the-crown-tundra', 'The Crown Tundra', 8, 'Galar.', 20, 18),
      (23, 'scarlet-violet', 'Scarlet and Violet', 9, 'Paldea.', 23, NULL),
      (30, 'legends-z-a', 'Legends: Z-A', 9, 'Kalos.', 30, NULL);
    INSERT INTO reference.games (id, slug, name, product_family_id, generation_id, region_id, version_group_id, game_type_id, release_year, sort_order)
    VALUES
      (33, 'sword', 'Pokémon Sword', 1, 8, 8, 18, 1, 2019, 33),
      (35, 'scarlet', 'Pokémon Scarlet', 1, 9, 9, 23, 1, 2022, 35),
      (40, 'legends-z-a', 'Pokémon Legends: Z-A', 1, 9, 6, 30, 1, 2025, 40);
    SET session_replication_role = origin;
  `);

  return db;
};

/* Rows as your saves leave them; checks off, the game data isn't all here. */
const addRows = (db: PGlite, sql: string) =>
  db.exec(`
    SET session_replication_role = replica;
    ${sql}
    SET session_replication_role = origin;
  `);

const addPlay = (
  db: PGlite,
  { archived = false, gameId = 33, updatedAt = "2026-11-01", vg = 18 } = {},
) =>
  addRows(
    db,
    `INSERT INTO gameplay.mainline_plays (user_id, game_id, version_group_id, name, archived_at, updated_at)
     VALUES ('${localUserId}', ${gameId}, ${vg}, 'A Play', ${archived ? "NOW()" : "NULL"}, '${updatedAt}');`,
  );

const addPlan = (db: PGlite, { gameId = 35, vg = 23 } = {}) =>
  addRows(
    db,
    `INSERT INTO planning.mainline_team_plans (user_id, game_id, version_group_id, name)
     VALUES ('${localUserId}', ${gameId}, ${vg}, 'A Plan');`,
  );

describe("planBackgroundDownloads", () => {
  it("finishes learnsets on the device first, then each missing game and its learnsets", () => {
    const installed = new Map([
      ["base", base.entry.hash],
      ["swsh", swsh.entry.hash],
    ]);

    expect(planBackgroundDownloads(versions, installed, [23, 18])).toEqual([
      { file: "learnsets", slug: "swsh" },
      { file: "game", slug: "sv" },
      { file: "learnsets", slug: "sv" },
    ]);
  });

  it("plans a game once, whichever of its version groups is wanted", () => {
    expect(planBackgroundDownloads(versions, new Map(), [20, 18, 19])).toEqual([
      { file: "game", slug: "swsh" },
      { file: "learnsets", slug: "swsh" },
    ]);
  });

  it("leaves out a game the list has no file for", () => {
    expect(planBackgroundDownloads(versions, new Map(), [30])).toEqual([]);
  });

  it("plans nothing on a device that has everything it wants", () => {
    const installed = new Map(
      files.map((file) => [file.entry.name, file.entry.hash]),
    );

    expect(planBackgroundDownloads(versions, installed, [18, 23])).toEqual([]);
  });
});

describe("readWantedVersionGroups", () => {
  it("is empty on a new device", async () => {
    const db = await createDevice();

    await expect(readWantedVersionGroups(db)).resolves.toEqual([]);
  });

  it("puts open Plays first, then Plans, then archived Plays", async () => {
    const db = await createDevice();

    await addPlay(db, { archived: true, gameId: 40, vg: 30 });
    await addPlan(db);
    await addPlay(db, { updatedAt: "2026-10-01" });
    await addPlay(db, { gameId: 35, updatedAt: "2026-11-10", vg: 23 });

    await expect(readWantedVersionGroups(db)).resolves.toEqual([
      23, 18, 23, 30,
    ]);
  });
});

describe("runBackgroundDownloads", () => {
  it("downloads a Plan's game, then its learnsets, and nothing the next time", async () => {
    const db = await createDevice();
    const download = createDownload();

    await addPlan(db);

    await expect(
      runBackgroundDownloads(db, { download, versions }),
    ).resolves.toEqual({
      done: [
        { file: "game", slug: "sv" },
        { file: "learnsets", slug: "sv" },
      ],
      failed: [],
      status: "done",
    });
    expect(downloadedNames(download)).toEqual(["base", "sv", "sv-learnsets"]);
    expect([...(await readInstalledGameData(db)).keys()].sort()).toEqual([
      "base",
      "sv",
      "sv-learnsets",
    ]);

    download.mockClear();

    await expect(
      runBackgroundDownloads(db, { download, versions }),
    ).resolves.toMatchObject({ done: [], status: "done" });
    expect(download).not.toHaveBeenCalled();
  });

  it("finishes the learnsets of a game whose learnsets didn't download", async () => {
    const db = await createDevice();

    await installGame(db, "swsh", { download: createDownload(), versions });

    const download = createDownload();

    await expect(
      runBackgroundDownloads(db, { download, versions }),
    ).resolves.toMatchObject({
      done: [{ file: "learnsets", slug: "swsh" }],
      status: "done",
    });
    expect(downloadedNames(download)).toEqual(["swsh-learnsets"]);
  });

  it("downloads the game of a Play or Plan that isn't on the device", async () => {
    const db = await createDevice();
    const download = createDownload();

    await addPlay(db);
    await addPlan(db);

    await runBackgroundDownloads(db, { download, versions });

    expect(downloadedNames(download)).toEqual([
      "base",
      "swsh",
      "swsh-learnsets",
      "sv",
      "sv-learnsets",
    ]);
  });

  it("gives way before each download", async () => {
    const db = await createDevice();
    const order: string[] = [];
    const download = createDownload();

    download.mockImplementation(async (path, onBytes) => {
      order.push(path.split(".")[0]);
      const file = files.find((item) => item.entry.path === path)!;

      onBytes(file.bytes.byteLength);

      return file.bytes;
    });
    await addPlan(db);

    await runBackgroundDownloads(db, {
      beforeEach: async () => {
        order.push("give way");
      },
      download,
      versions,
    });

    expect(order).toEqual([
      "give way",
      "base",
      "sv",
      "give way",
      "sv-learnsets",
    ]);
  });

  it("stops when asked and picks up the rest on the next run", async () => {
    const db = await createDevice();
    const download = createDownload();
    let online = true;

    await addPlan(db);

    await expect(
      runBackgroundDownloads(db, {
        beforeEach: async () => {
          if (download.mock.calls.length) online = false;
        },
        download,
        shouldStop: () => !online,
        versions,
      }),
    ).resolves.toMatchObject({
      done: [{ file: "game", slug: "sv" }],
      status: "stopped",
    });

    online = true;
    download.mockClear();

    await expect(
      runBackgroundDownloads(db, { download, versions }),
    ).resolves.toMatchObject({
      done: [{ file: "learnsets", slug: "sv" }],
      status: "done",
    });
    expect(downloadedNames(download)).toEqual(["sv-learnsets"]);
  });

  it("skips a game that fails, its learnsets with it, and goes on", async () => {
    const db = await createDevice();
    const download = createDownload({ swsh: new Error("Not found") });

    await addPlay(db);
    await addPlan(db);

    const result = await runBackgroundDownloads(db, { download, versions });

    expect(result).toMatchObject({
      done: [
        { file: "game", slug: "sv" },
        { file: "learnsets", slug: "sv" },
      ],
      failed: [{ download: { file: "game", slug: "swsh" } }],
      status: "done",
    });
    expect(downloadedNames(download)).not.toContain("swsh-learnsets");
    expect((await readInstalledGameData(db)).has("swsh")).toBe(false);
  });

  it("stops when the device is out of room", async () => {
    const db = await createDevice();
    const download = createDownload({
      swsh: new Error("QuotaExceededError: the quota has been exceeded"),
    });

    await addPlay(db);
    await addPlan(db);

    await expect(
      runBackgroundDownloads(db, { download, versions }),
    ).resolves.toMatchObject({ done: [], status: "storage-full" });
    expect(downloadedNames(download)).not.toContain("sv");
  });

  it("leaves out what it is told to skip", async () => {
    const db = await createDevice();
    const download = createDownload();

    await addPlay(db);
    await addPlan(db);

    await expect(
      runBackgroundDownloads(db, {
        download,
        skip: (item) => item.slug === "swsh",
        versions,
      }),
    ).resolves.toMatchObject({
      done: [
        { file: "game", slug: "sv" },
        { file: "learnsets", slug: "sv" },
      ],
      status: "done",
    });
    expect(downloadedNames(download)).toEqual(["base", "sv", "sv-learnsets"]);
  });

  it("stops for the update when another tab moves the device on mid-run", async () => {
    const db = await createDevice();
    const download = createDownload();
    let turns = 0;

    await addPlay(db);
    await addPlan(db);

    const result = await runBackgroundDownloads(db, {
      /* Another tab takes a newer base between two downloads. */
      beforeEach: async () => {
        if (++turns === 2) {
          await db.query(
            "UPDATE device.game_data_files SET hash = $1 WHERE name = 'base'",
            ["0".repeat(64)],
          );
        }
      },
      download,
      versions,
    });

    expect(result).toMatchObject({
      done: [{ file: "game", slug: "swsh" }],
      failed: [{ download: { file: "learnsets", slug: "swsh" } }],
      status: "waiting-for-update",
    });
    expect(downloadedNames(download)).not.toContain("sv");
    expect((await readInstalledGameData(db)).get("base")).toBe("0".repeat(64));
  });

  it("waits for the update on a device from another release, changing nothing", async () => {
    const db = await createDevice();
    const newBase = eggGroupFile("base", "base", "base", 9);

    await installGame(db, "swsh", { download: createDownload(), versions });
    await addPlan(db);

    const download = createDownload();
    const before = await readInstalledGameData(db);

    await expect(
      runBackgroundDownloads(db, {
        download,
        versions: { ...versions, base: newBase.entry },
      }),
    ).resolves.toMatchObject({ done: [], status: "waiting-for-update" });
    expect(download).not.toHaveBeenCalled();
    expect(await readInstalledGameData(db)).toEqual(before);
  });
});
