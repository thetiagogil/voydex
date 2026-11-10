import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import {
  mergeSnapshots,
  type Clash,
  type MergeChoices,
  type SyncSnapshot,
} from "@/platform/local-db/sync-merge";
import { rowKeyOf, type SchemaShape } from "@/platform/local-db/sync-merge";
import {
  applySyncSnapshot,
  markSynced,
  readSchemaShape,
  readSyncSnapshot,
  recordDeletions,
  type DeviceSnapshot,
} from "@/platform/local-db/sync-snapshot";
import { readNeededVersionGroups } from "@/platform/local-db/user-data";

/*
 * One sync between this device and its account, whatever holds the
 * account's backups: read the latest backup, merge it with this device's
 * data, put the result in place and upload it. The account's side is
 * passed in (`AccountBackups`), so the same steps run against Supabase or
 * a test's stand-in.
 */

/* Which device saved a backup, and when: for telling the devices apart. */
export type BackupDevice = { name: string | null; savedAt: string };

export type AccountBackup = BackupDevice & {
  id: string;
  snapshot: SyncSnapshot;
};

export type AccountBackups = {
  /* The newest backup's id, or null when the account has none yet. */
  latestId: () => Promise<string | null>;
  /* A backup's data, downloaded only when the device hasn't merged it. */
  read: (id: string) => Promise<Omit<AccountBackup, "id">>;
  /*
   * Saves a new backup on top of `parentId`, the newest one this device
   * merged (null for an account with none). Resolves to its id, or to null
   * when another device saved on top of that one first.
   */
  upload: (
    snapshot: SyncSnapshot,
    parentId: string | null,
  ) => Promise<string | null>;
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
  /*
   * The device's data reached the account (merged first when both
   * changed); `sentRestore` when it was a restored backup's.
   */
  | { backupId: string; sentRestore: boolean; status: "synced" }
  /* Another device saved a backup first: sync again to merge it. */
  | { status: "raced" }
  /* Both sides changed the same things: ask, then sync again with `choices`. */
  | { clashes: Clash[]; otherDevice: BackupDevice; status: "clashes" };

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
  const remoteId = await account.latestId();

  if (state.restored) {
    return sendRestore(db, { account, remoteId });
  }

  const local = await readSyncSnapshot(db);
  const localChanged = hasUnsynced(local);
  const remote: AccountBackup | null =
    remoteId !== null && remoteId !== state.backupId
      ? { ...(await account.read(remoteId)), id: remoteId }
      : null;

  if (!localChanged && !remote) return { status: "unchanged" };

  let snapshot = local;

  if (remote) {
    const result = mergeSnapshots({
      choices,
      local,
      remote: remote.snapshot,
      shape: await readSchemaShape(db),
    });

    if (result.status === "clashes") {
      return {
        clashes: result.clashes,
        otherDevice: { name: remote.name, savedAt: remote.savedAt },
        status: "clashes",
      };
    }

    for (const versionGroupId of readNeededVersionGroups(
      result.snapshot.tables,
    )) {
      await ensureGame(versionGroupId);
    }

    await applySyncSnapshot(
      db,
      withAccountBase(result.snapshot, remote.snapshot),
      local.seq,
    );
    snapshot = await readSyncSnapshot(db);

    /* Nothing of this device's is new: the account already has it all. */
    if (!hasUnsynced(snapshot)) {
      return { backupId: remote.id, sentRestore: false, status: "synced" };
    }
  }

  return upload(db, { account, parentId: remoteId, snapshot });
};

const hasUnsynced = (snapshot: SyncSnapshot) =>
  snapshot.changes.some((record) => record.changedAt !== record.baseChangedAt);

/*
 * Uploads on top of `parentId`; a device that loses the race to another
 * leaves its changes unsynced, to merge them with that backup next.
 */
const upload = async (
  db: LocalDb,
  {
    account,
    parentId,
    sentRestore = false,
    snapshot,
  }: {
    account: AccountBackups;
    parentId: string | null;
    sentRestore?: boolean;
    snapshot: DeviceSnapshot;
  },
): Promise<SyncOutcome> => {
  const backupId = await account.upload(snapshot, parentId);

  if (!backupId) return { status: "raced" };

  await markSynced(db, snapshot.seq);

  return { backupId, sentRestore, status: "synced" };
};

/* Every live row's key in a snapshot, as `table\u0000key`. */
const liveKeys = (snapshot: SyncSnapshot, shape: SchemaShape) =>
  new Set(
    shape.tables.flatMap(({ keyColumns, name }) =>
      (snapshot.tables[name] ?? []).map(
        (row) => `${name}\u0000${rowKeyOf(row, keyColumns)}`,
      ),
    ),
  );

/*
 * A restored backup replaces the account's data instead of merging with
 * it: what the account holds and the backup doesn't is recorded as
 * deleted, so the other devices let it go too.
 */
const sendRestore = async (
  db: LocalDb,
  { account, remoteId }: { account: AccountBackups; remoteId: string | null },
): Promise<SyncOutcome> => {
  if (remoteId) {
    const [shape, remote, local] = await Promise.all([
      readSchemaShape(db),
      account.read(remoteId).then((backup) => backup.snapshot),
      readSyncSnapshot(db),
    ]);
    const kept = liveKeys(local, shape);
    const gone = [...liveKeys(remote, shape)]
      .filter((id) => !kept.has(id))
      .map((id) => {
        const [table, key] = id.split("\u0000");

        return { key, table };
      });

    await recordDeletions(db, gone);
  }

  return upload(db, {
    account,
    parentId: remoteId,
    sentRestore: true,
    snapshot: await readSyncSnapshot(db),
  });
};

/*
 * This device's sync state for an account. A device that synced with
 * another account before starts over with this one: none of its records
 * count as synced.
 */
export const readDeviceSyncState = async (
  db: LocalDb,
  accountId: string,
): Promise<SyncState> => {
  const [row] = await runQuery<{
    account_id: string | null;
    backup_id: string | null;
    restored: boolean;
  }>(db, "SELECT account_id, backup_id, restored FROM device.sync");

  if (row?.account_id === accountId) {
    return { backupId: row.backup_id, restored: row.restored };
  }

  if (row?.account_id) {
    await db.query("UPDATE device.changes SET base_changed_at = NULL");
  }

  return { backupId: null, restored: row?.restored ?? false };
};

export const saveDeviceSyncState = async (
  db: LocalDb,
  {
    accountId,
    backupId,
    sentRestore,
  }: { accountId: string; backupId: string; sentRestore: boolean },
) => {
  /* A restore made while this sync ran still waits to go up. */
  await db.query(
    `INSERT INTO device.sync (account_id, backup_id, synced_at, restored)
     VALUES ($1, $2, NOW(), FALSE)
     ON CONFLICT (id) DO UPDATE SET account_id = EXCLUDED.account_id,
       backup_id = EXCLUDED.backup_id, synced_at = EXCLUDED.synced_at,
       restored = device.sync.restored AND NOT $3::boolean`,
    [accountId, backupId, sentRestore],
  );
};
