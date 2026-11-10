import { afterEach, describe, expect, it, vi } from "vitest";
import { PGlite } from "@electric-sql/pglite";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  parseDeviceUpdates,
  runDeviceUpdates,
} from "@/platform/local-db/device-updates";
import { LocalDbError } from "@/platform/local-db/local-db";
import { createTestDb } from "@/platform/local-db/local-db-test-support";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

const schemaSql = readDeviceSchemaSql();
const schemaHash = hashDeviceSchemaSql(schemaSql);
const openDbs: PGlite[] = [];

afterEach(async () => {
  await Promise.all(openDbs.splice(0).map((db) => db.close()));
});

const track = (db: PGlite) => {
  openDbs.push(db);

  return db;
};

/*
 * An old backup: a device with today's schema and a saved tag, dumped the
 * way a device keeps its copy, then opened again from that copy.
 */
const openOldBackup = async () => {
  const device = await createTestDb();

  await ensureDeviceSchema(device, {
    hash: schemaHash,
    readSql: () => Promise.resolve(schemaSql),
  });
  await device.query(
    "INSERT INTO public.tags (user_id, name, slug) VALUES (auth.uid(), 'Nuzlocke', 'nuzlocke')",
  );

  const backup = await device.dumpDataDir("gzip");

  await device.close();

  return track(await PGlite.create({ loadDataDir: backup }));
};

const addColour = {
  name: "0001-add-tag-colour.sql",
  sql: "ALTER TABLE public.tags ADD COLUMN colour text NOT NULL DEFAULT 'blue';",
};

describe("runDeviceUpdates", () => {
  it("runs a new update on an old backup and keeps its data", async () => {
    const db = await openOldBackup();
    const saveCopy = vi.fn().mockResolvedValue(undefined);

    await expect(
      runDeviceUpdates(db, {
        saveCopy,
        schemaHash: "new-hash",
        updates: [addColour],
      }),
    ).resolves.toEqual({ names: [addColour.name], status: "updated" });

    expect(saveCopy).toHaveBeenCalledOnce();

    const { rows } = await db.query(
      `SELECT name, colour, (SELECT schema_hash FROM device.installs) AS schema_hash,
         (SELECT array_agg(name) FROM device.updates) AS updates
       FROM public.tags`,
    );

    expect(rows).toEqual([
      {
        colour: "blue",
        name: "Nuzlocke",
        schema_hash: "new-hash",
        updates: [addColour.name],
      },
    ]);
  });

  it("saves the copy before it changes anything", async () => {
    const db = await openOldBackup();
    let tagColumnsAtCopy: number | null = null;

    await runDeviceUpdates(db, {
      saveCopy: async () => {
        const { rows } = await db.query<{ count: number }>(
          "SELECT count(*)::int AS count FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'tags' AND column_name = 'colour'",
        );

        tagColumnsAtCopy = rows[0].count;
      },
      schemaHash: "new-hash",
      updates: [addColour],
    });

    expect(tagColumnsAtCopy).toBe(0);
  });

  it("leaves the data as it was when an update fails", async () => {
    const db = await openOldBackup();

    const error = await runDeviceUpdates(db, {
      saveCopy: () => Promise.resolve(),
      schemaHash: "new-hash",
      updates: [
        addColour,
        {
          name: "0002-broken.sql",
          sql: "ALTER TABLE public.missing ADD x int;",
        },
      ],
    }).catch((caught: unknown) => caught);

    expect(error).toBeInstanceOf(LocalDbError);
    expect(error).toMatchObject({ code: "42P01" });

    const { rows } = await db.query(
      `SELECT (SELECT schema_hash FROM device.installs) AS schema_hash,
         (SELECT count(*)::int FROM device.updates) AS updates,
         (SELECT count(*)::int FROM information_schema.columns
            WHERE table_name = 'tags' AND column_name = 'colour') AS colour_columns`,
    );

    expect(rows).toEqual([
      { colour_columns: 0, schema_hash: schemaHash, updates: 0 },
    ]);
  });

  it("runs only the updates the device hasn't run, in name order", async () => {
    const db = await openOldBackup();

    await runDeviceUpdates(db, {
      saveCopy: () => Promise.resolve(),
      schemaHash: "second-hash",
      updates: [addColour],
    });

    const addNote = {
      name: "0002-add-tag-note.sql",
      sql: "ALTER TABLE public.tags ADD COLUMN note text;",
    };

    await expect(
      runDeviceUpdates(db, {
        saveCopy: () => Promise.resolve(),
        schemaHash: "third-hash",
        updates: [addNote, addColour],
      }),
    ).resolves.toEqual({ names: [addNote.name], status: "updated" });
  });

  it("needs a fresh start when the schema changed with no update", async () => {
    const db = await openOldBackup();
    const saveCopy = vi.fn();

    await expect(
      runDeviceUpdates(db, { saveCopy, schemaHash: "new-hash", updates: [] }),
    ).resolves.toEqual({ status: "no-update" });
    expect(saveCopy).not.toHaveBeenCalled();
  });

  it("needs a fresh start on a device from before updates were tracked", async () => {
    const db = track(await createTestDb());

    await db.exec(
      "CREATE SCHEMA device; CREATE TABLE device.installs (schema_hash text);",
    );

    await expect(
      runDeviceUpdates(db, {
        saveCopy: () => Promise.resolve(),
        schemaHash: "new-hash",
        updates: [addColour],
      }),
    ).resolves.toEqual({ status: "no-update" });
  });
});

describe("parseDeviceUpdates", () => {
  it("reads the update list and refuses a broken one", () => {
    expect(parseDeviceUpdates({ updates: [addColour] })).toEqual([addColour]);
    expect(() => parseDeviceUpdates({ updates: [{ name: "x.sql" }] })).toThrow(
      LocalDbError,
    );
  });
});
