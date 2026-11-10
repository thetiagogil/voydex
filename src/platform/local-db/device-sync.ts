import type { LocalDb } from "@/platform/local-db/local-db";
import {
  mergeSnapshots,
  type Clash,
  type MergeChoices,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";
import {
  applySyncSnapshot,
  latestChange,
  markSynced,
  readSchemaShape,
  readSyncSnapshot,
} from "@/platform/local-db/sync-snapshot";
import { readNeededVersionGroups } from "@/platform/local-db/user-data";

/*
 * One sync between this device and its account, whatever holds the
 * account's backups: read the latest backup, merge it with this device's
 * data, put the result in place and upload it. The account's side is
 * passed in (`AccountBackups`), so the same steps run against Supabase or
 * a test's stand-in.
 */

export type AccountBackup = { id: string; snapshot: SyncSnapshot };

export type AccountBackups = {
  /* The latest backup, or null when the account has none yet. */
  latest: () => Promise<AccountBackup | null>;
  /* Saves a new backup; resolves to its id and whether it is now the latest. */
  upload: (snapshot: SyncSnapshot) => Promise<{ id: string; latest: boolean }>;
};

export type SyncState = {
  /* The latest account backup this device merged or uploaded. */
  backupId: string | null;
  /* A restored file waits to replace the account's data. */
  restored: boolean;
};

export type SyncOutcome =
  /* Nothing new on either side. */
  | { status: "unchanged" }
  /* The device's data reached the account (merged first when both changed). */
  | { backupId: string; status: "synced" }
  /* Both sides changed the same things: ask, then sync again with `choices`. */
  | { clashes: Clash[]; status: "clashes" };

/*
 * The merged records' base is the account's version they were merged
 * with: a record the account has is synced; one only this device has
 * stays new until it is uploaded.
 */
const withAccountBase = (
  merged: SyncSnapshot,
  account: SyncSnapshot,
): SyncSnapshot => {
  const clocks = new Map(
    account.changes.map((record) => [
      `${record.table}\u0000${record.key}\u0000${record.column}`,
      record.changedAt,
    ]),
  );
  const clockOf = (table: string, key: string, column: string) =>
    clocks.get(`${table}\u0000${key}\u0000${column}`) ??
    (column ? (clocks.get(`${table}\u0000${key}\u0000`) ?? null) : null);

  return {
    ...merged,
    changes: merged.changes.map((record) => ({
      ...record,
      baseChangedAt: clockOf(record.table, record.key, record.column),
    })),
  };
};

export const syncDevice = async (
  db: LocalDb,
  {
    account,
    choices = {},
    ensureGame,
    state,
  }: {
    account: AccountBackups;
    choices?: MergeChoices;
    /* Downloads a game the merged Plays or Plans need. */
    ensureGame: (versionGroupId: number) => Promise<void>;
    state: SyncState;
  },
): Promise<SyncOutcome> => {
  const local = await readSyncSnapshot(db);
  const readLatest = latestChange(local);
  const localChanged =
    state.restored ||
    local.changes.some((record) => record.changedAt !== record.baseChangedAt);
  const remote = state.restored ? null : await account.latest();
  const remoteChanged = remote !== null && remote.id !== state.backupId;

  if (!localChanged && !remoteChanged) return { status: "unchanged" };

  let snapshot = local;

  if (remoteChanged) {
    const result = mergeSnapshots({
      choices,
      local,
      remote: remote.snapshot,
      shape: await readSchemaShape(db),
    });

    if (result.status === "clashes") return result;

    for (const versionGroupId of readNeededVersionGroups(
      result.snapshot.tables,
    )) {
      await ensureGame(versionGroupId);
    }

    await applySyncSnapshot(
      db,
      withAccountBase(result.snapshot, remote.snapshot),
      readLatest,
    );
    snapshot = await readSyncSnapshot(db);

    /* Nothing of this device's is new: the account already has it all. */
    if (
      snapshot.changes.every(
        (record) => record.changedAt === record.baseChangedAt,
      )
    ) {
      return { backupId: remote.id, status: "synced" };
    }
  }

  const uploaded = await account.upload(snapshot);

  /*
   * Another device uploaded at the same moment: leave this device's
   * changes unsynced, so the next sync merges them with that backup.
   */
  if (!uploaded.latest) return { status: "unchanged" };

  await markSynced(db, latestChange(snapshot));

  return { backupId: uploaded.id, status: "synced" };
};
