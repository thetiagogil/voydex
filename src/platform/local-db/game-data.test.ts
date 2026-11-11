import { createHash } from "node:crypto";
import { gzipSync } from "node:zlib";

import { afterEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  findGameData,
  installGame,
  installGameBase,
  installGameLearnsets,
  parseGameDataVersions,
  readGameDataFile,
  readInstalledGameData,
  type GameDataFile,
  type GameDataProgress,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import { LocalDbError } from "@/platform/local-db/local-db";
import { createTestDb } from "@/platform/local-db/local-db-test-support";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

const schemaSql = readDeviceSchemaSql();
const schemaHash = hashDeviceSchemaSql(schemaSql);

/* A file as the release build writes it: its JSON, gzipped and hashed. */
const buildFile = (
  name: string,
  kind: GameDataFile["kind"],
  slug: string,
  tables: GameDataFile["tables"],
) => {
  const json = JSON.stringify({ format: 2, kind, slug, tables });
  const hash = createHash("sha256").update(json).digest("hex");
  const bytes = new Uint8Array(gzipSync(json));

  return {
    bytes,
    entry: {
      bytes: bytes.byteLength,
      hash,
      name,
      path: `${name}.${hash.slice(0, 16)}.json.gz`,
      rows: tables.reduce((sum, table) => sum + table.rows, 0),
    },
    json,
  };
};

const base = buildFile("base", "base", "base", [
  {
    columns: ["id", "slug", "name", "start_year", "sort_order"],
    copy: "8\tgeneration-8\tGeneration VIII\t2019\t8\n",
    name: "reference.generations",
    rows: 1,
  },
]);
const swsh = buildFile("swsh", "game", "swsh", [
  {
    /* Its generation is in another file; rows go in with checks off. */
    columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
    copy: "1\tnormal\tNormal\t1\t1\n2\tfire\tFire\t1\t2\n",
    name: "reference.types",
    rows: 2,
  },
]);
const swshLearnsets = buildFile("swsh-learnsets", "learnsets", "swsh", [
  {
    columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
    copy: "1\tmonster\tMonster\t1\t1\n",
    name: "reference.egg_groups",
    rows: 1,
  },
]);
const sv = buildFile("sv", "game", "sv", [
  {
    columns: ["id", "slug", "name", "description", "sort_order"],
    copy: "9\tpaldea\tPaldea\tThe Paldea region.\t9\n",
    name: "reference.regions",
    rows: 1,
  },
]);
const svLearnsets = buildFile("sv-learnsets", "learnsets", "sv", []);
const files = [base, swsh, swshLearnsets, sv, svLearnsets];

const versions: GameDataVersions = {
  base: base.entry,
  builtAt: "2026-11-10T02:00:00.000Z",
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

/* Serves the files above and remembers what was asked for. */
const createDownload = () =>
  vi.fn(async (path: string, onBytes: (bytes: number) => void) => {
    const file = files.find((item) => item.entry.path === path);

    if (!file) throw new Error(`No file ${path}`);

    onBytes(file.bytes.byteLength);

    return file.bytes;
  });

const openDbs: PGlite[] = [];

const createDevice = async () => {
  const db = await createTestDb();

  openDbs.push(db);
  await ensureDeviceSchema(db, {
    hash: schemaHash,
    readSql: () => Promise.resolve(schemaSql),
  });

  return db;
};

afterEach(async () => {
  await Promise.all(openDbs.splice(0).map((db) => db.close()));
});

describe("parseGameDataVersions", () => {
  it("accepts the version list the build writes", () => {
    expect(parseGameDataVersions(versions)).toEqual(versions);
  });

  it("refuses another format", () => {
    expect(() => parseGameDataVersions({ ...versions, format: 1 })).toThrow(
      LocalDbError,
    );
  });
});

describe("readGameDataFile", () => {
  it("reads a gzipped file", async () => {
    await expect(readGameDataFile(swsh.bytes, swsh.entry)).resolves.toEqual(
      JSON.parse(swsh.json),
    );
  });

  it("reads a file the server already unzipped", async () => {
    await expect(
      readGameDataFile(new TextEncoder().encode(swsh.json), swsh.entry),
    ).resolves.toEqual(JSON.parse(swsh.json));
  });

  it("refuses a file that isn't the one the list names", async () => {
    await expect(readGameDataFile(sv.bytes, swsh.entry)).rejects.toThrow(
      "didn't download whole",
    );
  });

  it("refuses a table outside the app's schemas", async () => {
    const bad = buildFile("swsh", "game", "swsh", [
      { ...JSON.parse(swsh.json).tables[0], name: "auth.users" },
    ]);

    await expect(readGameDataFile(bad.bytes, bad.entry)).rejects.toThrow(
      "broken",
    );
  });
});

describe("findGameData", () => {
  it("finds a game by any of its version groups, expansions included", () => {
    expect(findGameData(versions, 20)?.slug).toBe("swsh");
    expect(findGameData(versions, 99)).toBeNull();
  });
});

describe("installGameBase", () => {
  it("installs only the base, so a later game downloads only its own file", async () => {
    const db = await createDevice();

    await expect(
      installGameBase(db, { download: createDownload(), versions }),
    ).resolves.toMatchObject({ files: ["base"], status: "installed" });

    const download = createDownload();

    await installGame(db, "swsh", { download, versions });
    expect(download.mock.calls.map(([path]) => path)).toEqual([
      swsh.entry.path,
    ]);
  });
});

describe("installGame", () => {
  it("installs the base and the game, and reports progress", async () => {
    const db = await createDevice();
    const download = createDownload();
    const progress: GameDataProgress[] = [];

    await expect(
      installGame(db, "swsh", {
        download,
        onProgress: (item) => progress.push(item),
        versions,
      }),
    ).resolves.toEqual({
      bytes: base.entry.bytes + swsh.entry.bytes,
      files: ["base", "swsh"],
      rows: 3,
      status: "installed",
    });

    expect(download.mock.calls.map(([path]) => path)).toEqual([
      base.entry.path,
      swsh.entry.path,
    ]);
    expect(progress.at(0)).toMatchObject({ done: 0, step: "downloading" });
    expect(progress.at(-1)).toEqual({ done: 3, step: "installing", total: 3 });

    const { rows } = await db.query<{ slug: string }>(
      "SELECT slug FROM reference.types ORDER BY id",
    );

    expect(rows).toEqual([{ slug: "normal" }, { slug: "fire" }]);
    await expect(readInstalledGameData(db)).resolves.toEqual(
      new Map([
        ["base", base.entry.hash],
        ["swsh", swsh.entry.hash],
      ]),
    );
  });

  it("downloads nothing for a game already on the device", async () => {
    const db = await createDevice();

    await installGame(db, "swsh", { download: createDownload(), versions });

    const download = createDownload();

    await expect(
      installGame(db, "swsh", { download, versions }),
    ).resolves.toEqual({ status: "already-installed" });
    expect(download).not.toHaveBeenCalled();
  });

  it("downloads only the new game's file for a second game", async () => {
    const db = await createDevice();

    await installGame(db, "swsh", { download: createDownload(), versions });

    const download = createDownload();

    await expect(
      installGame(db, "sv", { download, versions }),
    ).resolves.toMatchObject({ files: ["sv"], status: "installed" });
    expect(download.mock.calls.map(([path]) => path)).toEqual([sv.entry.path]);
  });

  it("refuses files built for another schema", async () => {
    const db = await createDevice();

    await expect(
      installGame(db, "swsh", {
        download: createDownload(),
        versions: { ...versions, schemaHash: "0".repeat(64) },
      }),
    ).rejects.toThrow("another version of Voydex");
  });

  it("refuses to install over an older copy of a file", async () => {
    const db = await createDevice();

    await db.query(
      "INSERT INTO device.game_data_files (name, hash, format) VALUES ('base', $1, 2)",
      ["f".repeat(64)],
    );

    await expect(
      installGame(db, "swsh", { download: createDownload(), versions }),
    ).rejects.toThrow("older than this app's");
  });

  it("refuses a game that isn't in the list", async () => {
    const db = await createDevice();

    await expect(
      installGame(db, "xy", { download: createDownload(), versions }),
    ).rejects.toThrow('no game data for "xy"');
  });

  it("leaves nothing behind when a table fails", async () => {
    const db = await createDevice();
    const broken = buildFile("swsh", "game", "swsh", [
      { ...JSON.parse(swsh.json).tables[0], copy: "not\ta\trow\n" },
    ]);

    await expect(
      installGame(db, "swsh", {
        download: vi.fn(async (path: string) =>
          path === broken.entry.path ? broken.bytes : base.bytes,
        ),
        versions: {
          ...versions,
          games: [{ ...versions.games[0], data: broken.entry }],
        },
      }),
    ).rejects.toBeInstanceOf(LocalDbError);

    const { rows } = await db.query<{ count: number }>(
      "SELECT (SELECT count(*) FROM reference.types)::int AS count",
    );

    expect(rows).toEqual([{ count: 0 }]);
    /* The base went in on its own; the game can be tried again. */
    await expect(readInstalledGameData(db)).resolves.toEqual(
      new Map([["base", base.entry.hash]]),
    );
  });
});

describe("installGameLearnsets", () => {
  it("waits for the game itself", async () => {
    const db = await createDevice();

    await expect(
      installGameLearnsets(db, "swsh", {
        download: createDownload(),
        versions,
      }),
    ).rejects.toThrow("before its learnsets");
  });

  it("installs a game's learnsets once", async () => {
    const db = await createDevice();

    await installGame(db, "swsh", { download: createDownload(), versions });

    await expect(
      installGameLearnsets(db, "swsh", {
        download: createDownload(),
        versions,
      }),
    ).resolves.toMatchObject({ files: ["swsh-learnsets"], rows: 1 });
    await expect(
      installGameLearnsets(db, "swsh", {
        download: createDownload(),
        versions,
      }),
    ).resolves.toEqual({ status: "already-installed" });
  });
});
