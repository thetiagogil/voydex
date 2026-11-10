import { z } from "zod";

import {
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";

/*
 * Device updates move the data already on a device to a newer schema. Each
 * one is a SQL file in database/device-updates/, run once per device, in
 * name order. A new device never runs them: its schema already holds them
 * and records them as run.
 */
export type DeviceUpdate = { name: string; sql: string };

export type DeviceUpdateResult =
  /* The pending updates ran and the device now has the app's schema. */
  | { names: string[]; status: "updated" }
  /*
   * The schema changed with no device update to carry the data over: before
   * launch the schema changes freely, so the only way on is a fresh start.
   */
  | { status: "no-update" };

const updatesFileSchema = z.object({
  updates: z.array(
    z.object({
      name: z.string().regex(/^[0-9]{4}-[a-z0-9]+(?:-[a-z0-9]+)*\.sql$/),
      sql: z.string().min(1),
    }),
  ),
});

export const parseDeviceUpdates = (value: unknown): DeviceUpdate[] => {
  const result = updatesFileSchema.safeParse(value);

  if (!result.success) {
    throw new LocalDbError("The device update list is broken.", {
      cause: result.error,
    });
  }

  return result.data.updates;
};

const readAppliedUpdates = async (db: LocalDb) => {
  const [{ tracked }] = await runQuery<{ tracked: boolean }>(
    db,
    "SELECT to_regclass('device.updates') IS NOT NULL AS tracked",
  );

  /* A device from before updates were tracked can't say which it has. */
  if (!tracked) return null;

  const rows = await runQuery<{ name: string }>(
    db,
    "SELECT name FROM device.updates",
  );

  return new Set(rows.map((row) => row.name));
};

/*
 * Runs the updates this device hasn't run, in name order, in one
 * transaction with the new schema hash, so a failed update leaves the data
 * as it was. `saveCopy` keeps a copy of the whole database first, for the
 * caller to restore if anything still goes wrong.
 */
export const runDeviceUpdates = async (
  db: LocalDb,
  {
    saveCopy,
    schemaHash,
    updates,
  }: {
    saveCopy: () => Promise<void>;
    schemaHash: string;
    updates: DeviceUpdate[];
  },
): Promise<DeviceUpdateResult> => {
  const applied = await readAppliedUpdates(db);

  if (!applied) return { status: "no-update" };

  const pending = updates
    .filter((update) => !applied.has(update.name))
    .sort((left, right) => left.name.localeCompare(right.name));

  if (!pending.length) return { status: "no-update" };

  await saveCopy();

  try {
    await db.transaction(async (tx) => {
      for (const update of pending) {
        await tx.exec(update.sql);
        await tx.query("INSERT INTO device.updates (name) VALUES ($1)", [
          update.name,
        ]);
      }

      await tx.query("UPDATE device.installs SET schema_hash = $1", [
        schemaHash,
      ]);
    });
  } catch (error) {
    const cause = toLocalDbError(error);

    throw new LocalDbError(`A device update failed: ${cause.message}`, {
      cause,
      code: cause.code,
    });
  }

  return { names: pending.map((update) => update.name), status: "updated" };
};
