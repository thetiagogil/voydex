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

const baseJson = JSON.stringify({
  format: 2,
  kind: "base",
  slug: "base",
  tables: [
    {
      columns: ["id", "slug", "name", "start_year", "sort_order"],
      copy: "8\tgeneration-8\tGeneration VIII\t2019\t8\n",
      name: "reference.generations",
      rows: 1,
    },
  ],
});
const baseHash = createHash("sha256").update(baseJson).digest("hex");
const baseBytes = new Uint8Array(gzipSync(baseJson));
const versions: GameDataVersions = {
  base: {
    bytes: baseBytes.byteLength,
    hash: baseHash,
    name: "base",
    path: `base.${baseHash.slice(0, 16)}.json.gz`,
    rows: 1,
  },
  builtAt: "2026-11-10T02:00:00.000Z",
  format: 2,
  games: [],
  idChanges: [],
  schemaHash,
};

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
