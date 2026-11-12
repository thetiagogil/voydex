import { existsSync, readFileSync } from "node:fs";

import { afterEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  downloadGameDataFileWithin,
  findGameData,
  GameDataRefusedError,
  installGame,
  installGameBase,
  installGameLearnsets,
  parseGameDataVersions,
  readGameDataFile,
  readInstalledGameData,
  updateGameData,
  type GameDataFile,
  type GameDataProgress,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import { buildFile } from "@/platform/local-db/game-data-test-support";
import { LocalDbError } from "@/platform/local-db/local-db";
import { createTestDb } from "@/platform/local-db/local-db-test-support";
import { currentPageReadRevision } from "@/platform/local-db/page-reads";
import { readUserData } from "@/platform/local-db/user-data";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

const schemaSql = readDeviceSchemaSql();
const schemaHash = hashDeviceSchemaSql(schemaSql);

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

describe("downloadGameDataFileWithin", () => {
  afterEach(() => {
    vi.unstubAllGlobals();
  });

  it("gives up on a download that stalls", async () => {
    vi.stubGlobal(
      "fetch",
      vi.fn(
        (_url: string, { signal }: { signal: AbortSignal }) =>
          new Promise((_resolve, reject) => {
            signal.addEventListener("abort", () => reject(signal.reason));
          }),
      ),
    );

    await expect(
      downloadGameDataFileWithin(20)("sv.0123456789abcdef.json.gz", () => {}),
    ).rejects.toMatchObject({ name: "TimeoutError" });
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

  it("tells the pages to read again once a game is on the device, and only then", async () => {
    const db = await createDevice();
    const before = currentPageReadRevision();

    await installGame(db, "swsh", { download: createDownload(), versions });

    const after = currentPageReadRevision();

    expect(after).toBeGreaterThan(before);

    await installGame(db, "swsh", { download: createDownload(), versions });

    expect(currentPageReadRevision()).toBe(after);
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

/*
 * Releases of the game data, as a device meets them over time. The second
 * renames a generation, adds a Challenge rule type and a form, and drops
 * Fire.
 */
type Release = {
  base: ReturnType<typeof buildFile>;
  games: {
    data: ReturnType<typeof buildFile>;
    learnsets: ReturnType<typeof buildFile>;
    slug: string;
    versionGroupIds: number[];
  }[];
  idChanges?: GameDataVersions["idChanges"];
};

const generationsTable = (name: string) => ({
  columns: ["id", "slug", "name", "start_year", "sort_order"],
  copy: `8\tgeneration-8\t${name}\t2019\t8\n`,
  name: "reference.generations",
  rows: 1,
});
const ruleTypesTable = (ids: number[]) => ({
  columns: ["id", "slug", "name", "sort_order"],
  copy: ids.map((id) => `${id}\ttype_${id}\tType ${id}\t${id}\n`).join(""),
  name: "gameplay.mainline_challenge_rule_types",
  rows: ids.length,
});
/* Voydex's own rule, shipped in the table that also holds yours. */
const nuzlockeRuleId = "20000000-0000-4000-8000-000000000001";
const systemRulesTable = {
  columns: ["id", "user_id", "rule_type_id", "slug", "name"],
  copy: `${nuzlockeRuleId}\t\\N\t5\tnuzlocke\tNuzlocke\n`,
  name: "gameplay.mainline_challenge_rules",
  rows: 1,
};
const typesTable = (slugs: string[]) => ({
  columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
  copy: slugs
    .map((slug, index) => `${index + 1}\t${slug}\t${slug}\t1\t${index + 1}\n`)
    .join(""),
  name: "reference.types",
  rows: slugs.length,
});
const formsTable = (forms: [number, string][]) => ({
  columns: [
    "id",
    "species_id",
    "slug",
    "name",
    "introduced_generation_id",
    "form_order",
  ],
  copy: forms
    .map(([id, slug]) => `${id}\t${id}\t${slug}\t${slug}\t8\t1\n`)
    .join(""),
  name: "reference.pokemon_forms",
  rows: forms.length,
});

const buildRelease = (
  baseTables: GameDataFile["tables"],
  swshTables: GameDataFile["tables"],
  idChanges: GameDataVersions["idChanges"] = [],
): Release => ({
  base: buildFile("base", "base", "base", baseTables),
  games: [
    {
      data: buildFile("swsh", "game", "swsh", swshTables),
      learnsets: buildFile("swsh-learnsets", "learnsets", "swsh", [
        {
          columns: [
            "id",
            "slug",
            "name",
            "introduced_generation_id",
            "sort_order",
          ],
          copy: "1\tmonster\tMonster\t1\t1\n",
          name: "reference.egg_groups",
          rows: 1,
        },
      ]),
      slug: "swsh",
      versionGroupIds: [18, 19, 20],
    },
    {
      data: sv,
      learnsets: svLearnsets,
      slug: "sv",
      versionGroupIds: [23, 24, 25],
    },
  ],
  idChanges,
});

const firstRelease = buildRelease(
  [generationsTable("Generation VIII"), ruleTypesTable([5]), systemRulesTable],
  [typesTable(["normal", "fire"]), formsTable([[25, "pikachu"]])],
);
const secondRelease = buildRelease(
  [generationsTable("Generation 8"), ruleTypesTable([5, 6]), systemRulesTable],
  [
    typesTable(["normal"]),
    formsTable([
      [25, "pikachu"],
      [26, "raichu"],
    ]),
  ],
);

const toVersions = (release: Release): GameDataVersions => ({
  base: release.base.entry,
  builtAt: "2026-11-12T02:00:00.000Z",
  format: 2,
  games: release.games.map((game) => ({
    data: game.data.entry,
    learnsets: game.learnsets.entry,
    slug: game.slug,
    versionGroupIds: game.versionGroupIds,
  })),
  idChanges: release.idChanges ?? [],
  schemaHash,
});

/* Serves a release's files and remembers what was asked for. */
const serve = (release: Release) => {
  const served = [
    release.base,
    ...release.games.flatMap((game) => [game.data, game.learnsets]),
  ];

  return vi.fn(async (path: string, onBytes: (bytes: number) => void) => {
    const file = served.find((item) => item.entry.path === path);

    if (!file) throw new Error(`No file ${path}`);

    onBytes(file.bytes.byteLength);

    return file.bytes;
  });
};

const myRuleId = "30000000-0000-4000-8000-000000000001";

/* A device on the first release with Sword and Shield and rows of yours. */
const createDeviceOnFirstRelease = async () => {
  const db = await createDevice();
  const options = {
    download: serve(firstRelease),
    versions: toVersions(firstRelease),
  };

  await installGame(db, "swsh", options);
  await installGameLearnsets(db, "swsh", options);
  await db.exec(`
    UPDATE public.profiles SET icon_form_id = 25;
    INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name)
      VALUES ('${myRuleId}', auth.uid(), 5, 'my_rule', 'My rule');
  `);

  return db;
};

const readDevice = async (db: PGlite) => {
  const { rows } = await db.query<Record<string, unknown>>(`
    SELECT
      (SELECT name FROM reference.generations) AS generation,
      (SELECT array_agg(slug ORDER BY id) FROM reference.types) AS types,
      (SELECT array_agg(id ORDER BY id) FROM gameplay.mainline_challenge_rule_types) AS rule_types,
      (SELECT array_agg(slug ORDER BY slug) FROM gameplay.mainline_challenge_rules) AS rules,
      (SELECT icon_form_id FROM public.profiles) AS icon
  `);

  return rows[0];
};

const hashesOf = (release: Release, names: string[]) =>
  new Map(
    [
      release.base,
      ...release.games.flatMap((game) => [game.data, game.learnsets]),
    ]
      .filter((file) => names.includes(file.entry.name))
      .map((file) => [file.entry.name, file.entry.hash]),
  );

describe("updateGameData", () => {
  it("swaps every file for the new release and keeps your rows", async () => {
    const db = await createDeviceOnFirstRelease();
    const download = serve(secondRelease);

    await expect(
      updateGameData(db, { download, versions: toVersions(secondRelease) }),
    ).resolves.toMatchObject({
      files: ["base", "swsh", "swsh-learnsets"],
      status: "updated",
    });
    expect(download).toHaveBeenCalledTimes(3);
    await expect(readDevice(db)).resolves.toEqual({
      generation: "Generation 8",
      icon: 25,
      rule_types: [5, 6],
      rules: ["my_rule", "nuzlocke"],
      types: ["normal"],
    });
    await expect(readInstalledGameData(db)).resolves.toEqual(
      hashesOf(secondRelease, ["base", "swsh", "swsh-learnsets"]),
    );
  });

  it("downloads nothing on a device that has the list's release", async () => {
    const db = await createDeviceOnFirstRelease();
    const download = serve(firstRelease);

    await expect(
      updateGameData(db, { download, versions: toVersions(firstRelease) }),
    ).resolves.toEqual({ status: "already-installed" });
    expect(download).not.toHaveBeenCalled();
  });

  it("takes the new release before adding another game", async () => {
    const db = await createDeviceOnFirstRelease();

    await expect(
      installGame(db, "sv", {
        download: serve(secondRelease),
        versions: toVersions(secondRelease),
      }),
    ).resolves.toMatchObject({
      files: ["base", "swsh", "swsh-learnsets", "sv"],
      status: "updated",
    });
    await expect(readDevice(db)).resolves.toMatchObject({ types: ["normal"] });
  });

  it("updates a base the device has from an older release", async () => {
    const db = await createDevice();

    await db.query(
      "INSERT INTO device.game_data_files (name, hash, format) VALUES ('base', $1, 2)",
      ["f".repeat(64)],
    );

    await expect(
      installGame(db, "swsh", { download: createDownload(), versions }),
    ).resolves.toMatchObject({ files: ["base", "swsh"], status: "updated" });
  });

  it("drops a game the new release no longer has", async () => {
    const db = await createDeviceOnFirstRelease();

    /* Your icon was a Sword and Shield form; with it, the update is refused. */
    await db.exec("UPDATE public.profiles SET icon_form_id = NULL");

    const withoutSwsh: Release = {
      ...secondRelease,
      games: secondRelease.games.filter((game) => game.slug !== "swsh"),
    };

    await expect(
      updateGameData(db, {
        download: serve(withoutSwsh),
        versions: toVersions(withoutSwsh),
      }),
    ).resolves.toMatchObject({ files: ["base"], status: "updated" });
    await expect(readDevice(db)).resolves.toMatchObject({ types: null });
    await expect(readInstalledGameData(db)).resolves.toEqual(
      hashesOf(withoutSwsh, ["base"]),
    );
  });

  it("keeps the device as it was when the new release leaves out what your rows use", async () => {
    const db = await createDeviceOnFirstRelease();
    const before = await readDevice(db);
    const withoutPikachu = buildRelease(
      [generationsTable("Generation 8"), ruleTypesTable([5]), systemRulesTable],
      [typesTable(["normal"]), formsTable([[26, "raichu"]])],
    );

    await expect(
      updateGameData(db, {
        download: serve(withoutPikachu),
        versions: toVersions(withoutPikachu),
      }),
    ).rejects.toThrow("leaves out something your Plays or Plans use");
    await expect(readDevice(db)).resolves.toEqual(before);
    await expect(readInstalledGameData(db)).resolves.toEqual(
      hashesOf(firstRelease, ["base", "swsh", "swsh-learnsets"]),
    );
  });

  it("keeps the device as it was when a download fails", async () => {
    const db = await createDeviceOnFirstRelease();
    const before = await readDevice(db);
    const download = serve(secondRelease);

    download.mockImplementation(async (path) => {
      if (path.startsWith("swsh.")) throw new Error("offline");

      return secondRelease.base.bytes;
    });

    await expect(
      updateGameData(db, { download, versions: toVersions(secondRelease) }),
    ).rejects.toThrow("offline");
    await expect(readDevice(db)).resolves.toEqual(before);
  });

  it("does the work once when two tabs update at the same time", async () => {
    const db = await createDeviceOnFirstRelease();
    const options = {
      download: serve(secondRelease),
      versions: toVersions(secondRelease),
    };
    const results = await Promise.all([
      updateGameData(db, options),
      updateGameData(db, options),
    ]);

    expect(results.map((result) => result.status).sort()).toEqual([
      "already-installed",
      "updated",
    ]);
    await expect(readDevice(db)).resolves.toMatchObject({
      rules: ["my_rule", "nuzlocke"],
    });
  });
});

describe("a refused release", () => {
  /* Its own release: a refused one is remembered for the whole visit. */
  const withoutPikachu = buildRelease(
    [
      generationsTable("Generation Eight"),
      ruleTypesTable([5]),
      systemRulesTable,
    ],
    [typesTable(["normal"]), formsTable([[26, "raichu"]])],
  );

  it("isn't downloaded again in the same visit", async () => {
    const db = await createDeviceOnFirstRelease();
    const options = {
      download: serve(withoutPikachu),
      versions: toVersions(withoutPikachu),
    };

    await expect(updateGameData(db, options)).rejects.toBeInstanceOf(
      GameDataRefusedError,
    );
    options.download.mockClear();
    await expect(installGame(db, "sv", options)).rejects.toBeInstanceOf(
      GameDataRefusedError,
    );
    expect(options.download).not.toHaveBeenCalled();
  });
});

describe("a list older than the device's", () => {
  it("never swaps the device back for learnsets", async () => {
    const db = await createDevice();

    await installGame(db, "swsh", {
      download: serve(secondRelease),
      versions: toVersions(secondRelease),
    });

    const download = serve(firstRelease);

    await expect(
      installGameLearnsets(db, "swsh", {
        download,
        versions: toVersions(firstRelease),
      }),
    ).rejects.toThrow("from another release");
    expect(download).not.toHaveBeenCalled();
    await expect(readInstalledGameData(db)).resolves.toEqual(
      hashesOf(secondRelease, ["base", "swsh"]),
    );
  });

  it("doesn't mix a file in after another tab moved the device on", async () => {
    const db = await createDevice();
    const firstOptions = {
      download: serve(firstRelease),
      versions: toVersions(firstRelease),
    };

    await installGame(db, "swsh", firstOptions);

    /* While this tab downloads the learnsets, another takes the new release. */
    const download = vi.fn(
      async (path: string, onBytes: (bytes: number) => void) => {
        await updateGameData(db, {
          download: serve(secondRelease),
          versions: toVersions(secondRelease),
        });

        return firstOptions.download(path, onBytes);
      },
    );

    await expect(
      installGameLearnsets(db, "swsh", { ...firstOptions, download }),
    ).rejects.toThrow("from another release");
    await expect(readInstalledGameData(db)).resolves.toEqual(
      hashesOf(secondRelease, ["base", "swsh"]),
    );
  });
});

/* The files `npm run game-data:build` wrote; `verify` builds them first. */
const builtDir = "public/game-data";
const hasBuiltFiles = existsSync(`${builtDir}/versions.json`);

describe.skipIf(!hasBuiltFiles)("updateGameData with the built files", () => {
  it("swaps the real game data under a real Play and keeps every row", async () => {
    const built = parseGameDataVersions(
      JSON.parse(readFileSync(`${builtDir}/versions.json`, "utf8")),
    );
    const download = async (path: string, onBytes: (bytes: number) => void) => {
      const bytes = new Uint8Array(readFileSync(`${builtDir}/${path}`));

      onBytes(bytes.byteLength);

      return bytes;
    };
    const db = await createDevice();

    for (const slug of ["swsh", "sv"]) {
      await installGame(db, slug, { download, versions: built });
      await installGameLearnsets(db, slug, { download, versions: built });
    }

    await db.exec(`
      INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name)
        SELECT '10000000-0000-4000-8000-000000000001', auth.uid(), id, version_group_id, 'Run'
        FROM reference.games WHERE slug = 'sword';
      INSERT INTO gameplay.mainline_play_settings (play_id)
        VALUES ('10000000-0000-4000-8000-000000000001');
      UPDATE public.profiles
        SET icon_form_id = (SELECT min(id) FROM reference.pokemon_forms);
      INSERT INTO gameplay.mainline_challenge_rules (user_id, rule_type_id, slug, name)
        SELECT auth.uid(), min(id), 'mine', 'Mine'
        FROM gameplay.mainline_challenge_rule_types;
    `);

    /* Every row in the app's tables, game data and yours. */
    const countRows = async () => {
      const { rows } = await db.query<{ count: number }>(
        `SELECT sum((xpath('/row/c/text()', query_to_xml(
             format('SELECT count(*) AS c FROM %I.%I', table_schema, table_name),
             false, true, '')))[1]::text::int)::int AS count
         FROM information_schema.tables
         WHERE table_type = 'BASE TABLE'
           AND table_schema IN ('public', 'reference', 'tracking', 'gameplay', 'planning')`,
      );

      return rows[0].count;
    };
    const rowsBefore = await countRows();
    const yoursBefore = await readUserData(db);
    const installed = await readInstalledGameData(db);

    /* As if every file on the device came from an older release. */
    await db.exec("UPDATE device.game_data_files SET hash = repeat('0', 64)");

    await expect(
      updateGameData(db, { download, versions: built }),
    ).resolves.toMatchObject({
      files: ["base", "swsh", "swsh-learnsets", "sv", "sv-learnsets"],
      status: "updated",
    });
    expect(await countRows()).toBe(rowsBefore);
    await expect(readUserData(db)).resolves.toEqual(yoursBefore);
    await expect(readInstalledGameData(db)).resolves.toEqual(installed);
  }, 120_000);
});
