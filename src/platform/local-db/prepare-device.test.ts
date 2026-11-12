import { createHash } from "node:crypto";
import { gzipSync } from "node:zlib";

import { afterEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import type { GameDataVersions } from "@/platform/local-db/game-data";
import { createTestDb } from "@/platform/local-db/local-db-test-support";
import {
  DeviceProblemError,
  isStorageFullError,
  prepareDevice,
  type PrepareDeviceSources,
  type PrepareStep,
} from "@/platform/local-db/prepare-device";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

const schemaSql = readDeviceSchemaSql();
const schemaHash = hashDeviceSchemaSql(schemaSql);

/* A release whose only file is a base naming generation 8 `name`. */
const buildBase = (name: string) => {
  const json = JSON.stringify({
    format: 2,
    kind: "base",
    slug: "base",
    tables: [
      {
        columns: ["id", "slug", "name", "start_year", "sort_order"],
        copy: `8\tgeneration-8\t${name}\t2019\t8\n`,
        name: "reference.generations",
        rows: 1,
      },
    ],
  });
  const hash = createHash("sha256").update(json).digest("hex");
  const bytes = new Uint8Array(gzipSync(json));
  const versions: GameDataVersions = {
    base: {
      bytes: bytes.byteLength,
      hash,
      name: "base",
      path: `base.${hash.slice(0, 16)}.json.gz`,
      rows: 1,
    },
    builtAt: "2026-11-10T02:00:00.000Z",
    format: 2,
    games: [],
    idChanges: [],
    schemaHash,
  };

  return { bytes, hash, versions };
};

const {
  bytes: baseBytes,
  hash: baseHash,
  versions,
} = buildBase("Generation VIII");

const openDbs: PGlite[] = [];

afterEach(async () => {
  await Promise.all(openDbs.splice(0).map((db) => db.close()));
});

const newDevice = async () => {
  const db = await createTestDb();

  openDbs.push(db);

  return db;
};

const sources = (
  overrides: Partial<PrepareDeviceSources> = {},
): PrepareDeviceSources => ({
  download: async (_path, onBytes) => {
    onBytes(baseBytes.byteLength);

    return baseBytes;
  },
  fetchSchemaHash: () => Promise.resolve(schemaHash),
  fetchUpdates: () => Promise.resolve([]),
  fetchVersions: () => Promise.resolve(versions),
  readSchemaSql: () => Promise.resolve(schemaSql),
  saveCopy: () => Promise.resolve(),
  ...overrides,
});

const setUpDevice = async () => {
  const db = await newDevice();

  await prepareDevice(db, sources());

  return db;
};

const problemOf = (promise: Promise<unknown>) =>
  promise.then(
    () => null,
    (error: unknown) =>
      error instanceof DeviceProblemError ? error.problem : error,
  );

describe("prepareDevice", () => {
  it("sets up a new device with the schema and the base game data", async () => {
    const db = await newDevice();
    const steps: PrepareStep["step"][] = [];

    await expect(
      prepareDevice(db, sources(), (item) => steps.push(item.step)),
    ).resolves.toEqual(versions);

    const { rows } = await db.query(
      "SELECT (SELECT schema_hash FROM device.installs) AS schema_hash, (SELECT array_agg(name) FROM device.game_data_files) AS files",
    );

    expect(rows).toEqual([{ files: ["base"], schema_hash: schemaHash }]);
    expect(steps).toContain("base");
    expect(steps).not.toContain("updating");
  });

  it("opens a set-up device without reading the schema or the base again", async () => {
    const db = await setUpDevice();
    const readSchemaSql = vi.fn();
    const download = vi.fn();

    await prepareDevice(db, sources({ download, readSchemaSql }));
    expect(readSchemaSql).not.toHaveBeenCalled();
    expect(download).not.toHaveBeenCalled();
  });

  it("takes a new game data release before the screens open", async () => {
    const db = await setUpDevice();
    const steps: PrepareStep["step"][] = [];
    const next = buildBase("Generation 8");

    await expect(
      prepareDevice(
        db,
        sources({
          download: async (_path, onBytes) => {
            onBytes(next.bytes.byteLength);

            return next.bytes;
          },
          fetchVersions: () => Promise.resolve(next.versions),
        }),
        (item) => steps.push(item.step),
      ),
    ).resolves.toEqual(next.versions);

    const { rows } = await db.query(
      "SELECT (SELECT name FROM reference.generations) AS name, (SELECT hash FROM device.game_data_files) AS hash",
    );

    expect(rows).toEqual([
      { hash: next.versions.base.hash, name: "Generation 8" },
    ]);
    expect(steps).toContain("game-data");
  });

  it("opens with the release it has when the new one doesn't download", async () => {
    const db = await setUpDevice();
    const next = buildBase("Generation 8");

    await expect(
      prepareDevice(
        db,
        sources({
          download: () => Promise.reject(new Error("offline")),
          fetchVersions: () => Promise.resolve(next.versions),
        }),
      ),
    ).resolves.toEqual(next.versions);

    const { rows } = await db.query(
      "SELECT (SELECT name FROM reference.generations) AS name, (SELECT hash FROM device.game_data_files) AS hash",
    );

    expect(rows).toEqual([{ hash: baseHash, name: "Generation VIII" }]);
  });

  it("works offline once the device is set up", async () => {
    const db = await setUpDevice();

    await expect(
      prepareDevice(
        db,
        sources({
          fetchSchemaHash: () => Promise.resolve(null),
          fetchVersions: () => Promise.resolve(null),
        }),
      ),
    ).resolves.toBeNull();
  });

  it("says a new device needs the internet once", async () => {
    const db = await newDevice();

    await expect(
      problemOf(
        prepareDevice(
          db,
          sources({ fetchSchemaHash: () => Promise.resolve(null) }),
        ),
      ),
    ).resolves.toBe("offline");
  });

  it("runs the device updates on a device with an older schema", async () => {
    const db = await setUpDevice();
    const steps: PrepareStep["step"][] = [];

    await db.query("UPDATE device.installs SET schema_hash = 'older'");
    await prepareDevice(
      db,
      sources({
        fetchUpdates: () =>
          Promise.resolve([
            {
              name: "0001-add-tag-colour.sql",
              sql: "ALTER TABLE public.tags ADD COLUMN colour text;",
            },
          ]),
      }),
      (item) => steps.push(item.step),
    );

    const { rows } = await db.query("SELECT schema_hash FROM device.installs");

    expect(rows).toEqual([{ schema_hash: schemaHash }]);
    expect(steps).toContain("updating");
  });

  it("asks for a fresh start when the schema changed with no update", async () => {
    const db = await setUpDevice();

    await db.query("UPDATE device.installs SET schema_hash = 'older'");

    await expect(problemOf(prepareDevice(db, sources()))).resolves.toBe(
      "needs-fresh-start",
    );
  });

  it("reports a failed update, with the data left as it was", async () => {
    const db = await setUpDevice();

    await db.query("UPDATE device.installs SET schema_hash = 'older'");

    await expect(
      problemOf(
        prepareDevice(
          db,
          sources({
            fetchUpdates: () =>
              Promise.resolve([
                { name: "0001-broken.sql", sql: "ALTER TABLE nope ADD x int;" },
              ]),
          }),
        ),
      ),
    ).resolves.toBe("update-failed");

    const { rows } = await db.query("SELECT schema_hash FROM device.installs");

    expect(rows).toEqual([{ schema_hash: "older" }]);
  });
});

describe("isStorageFullError", () => {
  it("recognises the browsers' quota errors", () => {
    expect(
      isStorageFullError(new DOMException("x", "QuotaExceededError")),
    ).toBe(true);
    expect(isStorageFullError(new Error("Something else"))).toBe(false);
  });
});
