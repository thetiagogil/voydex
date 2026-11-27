import { prepareSnapshot } from "@/platform/local-db/device-id-changes";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import { localUserId } from "@/platform/local-db/device-schema";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import {
  applyUserSnapshot,
  markBackedUp,
  readUserSnapshot,
  readWriteCount,
} from "@/platform/local-db/user-snapshot";
import {
  readNeededVersionGroups,
  readUserData,
  replaceUserData,
  userTables,
  type Transaction,
  type UserData,
  type UserRow,
} from "@/platform/local-db/user-data";

/*
 * This device and the account logged in on it. Nothing is ever merged:
 * the account keeps backups of your data (the last 3), the device takes
 * the newest when you log in, and backs up after each change. A newer
 * backup another device saved comes down by itself only while this device
 * has nothing new of its own; otherwise you choose which to keep. The
 * account's side is passed in (`AccountBackups`), so the same steps run
 * against Supabase or a test's stand-in.
 */

/* Which device saved a backup, and when: for telling the devices apart. */
export type BackupDevice = { name: string | null; savedAt: string };

/* One of the account's backups, as its list shows it. */
export type AccountBackupEntry = BackupDevice & { id: string };

export type AccountBackups = {
  /* The account's backups, newest first (at most 3). */
  list: () => Promise<AccountBackupEntry[]>;
  /* A backup's data. */
  read: (id: string) => Promise<BackupDevice & { snapshot: VersionedSnapshot }>;
  /*
   * Saves a new backup on top of `parentId`, the newest one this device
   * knows (null for an account with none). Resolves to its id, or to null
   * when another device saved on top of that one first.
   */
  upload: (
    snapshot: VersionedSnapshot,
    parentId: string | null,
  ) => Promise<string | null>;
};

/*
 * This device's note of the upload it started last: the account, the
 * backup it went on top of, and a fingerprint of what it sent. The browser
 * keeps it apart from the device database, written before the upload
 * starts, so a reload that loses the database's note of a finished upload
 * still finds it. Then the account's newest backup is known as this
 * device's own, not as a newer one from elsewhere.
 */
export type UploadNote = {
  accountId: string;
  fingerprint: string;
  parentId: string | null;
};

export type UploadNotes = {
  read: () => UploadNote | null;
  write: (note: UploadNote) => void;
};

/*
 * How far taking a backup has got, for a screen that waits on it: reading
 * the account's backup, getting the games its Plays need (how many of how
 * many), then putting the data in place.
 */
export type AccountProgress =
  | { step: "reading" }
  | { done: number; step: "games"; total: number }
  | { step: "applying" };

/* The account this device holds, as saved on it. */
export type DeviceAccount = {
  accountId: string | null;
  /* The newest account backup this device took or saved. */
  backupId: string | null;
  /*
   * You replaced the device's data on purpose (a file, or an older account
   * backup): it goes up over the account's newest, whatever that is.
   */
  replaced: boolean;
};

export const readDeviceAccount = async (
  db: Pick<LocalDb, "query">,
): Promise<DeviceAccount> => {
  const [row] = await runQuery<{
    account_id: string | null;
    backup_id: string | null;
    restored: boolean;
  }>(db, "SELECT account_id, backup_id, restored FROM device.sync");

  return {
    accountId: row?.account_id ?? null,
    backupId: row?.backup_id ?? null,
    replaced: row?.restored ?? false,
  };
};

/* Columns that change on their own (opening a Play): no change of yours. */
const quietColumns = ["created_at", "last_opened_at", "updated_at"];

/* Whether this device changed anything of yours since its last backup. */
export const hasUnsavedChanges = async (db: Pick<LocalDb, "query">) => {
  const [row] = await runQuery<{ unsaved: boolean }>(
    db,
    `SELECT EXISTS (SELECT 1 FROM device.changes
       WHERE changed_at IS DISTINCT FROM base_changed_at
         AND column_name <> ALL ($1)) AS unsaved`,
    [quietColumns],
  );

  return row?.unsaved ?? false;
};

/*
 * Whether this device holds anything of its own worth keeping aside when
 * an account logs in: a Play, a Plan, a favourite, a tag, a rule or a rule
 * set of yours, a game on your shelf, or a name or icon you chose.
 * Settings alone aren't.
 */
export const hasOwnData = async (db: Pick<LocalDb, "query">) => {
  const [row] = await runQuery<{ found: boolean }>(
    db,
    `SELECT EXISTS (SELECT 1 FROM gameplay.mainline_plays)
       OR EXISTS (SELECT 1 FROM planning.mainline_team_plans)
       OR EXISTS (SELECT 1 FROM gameplay.user_favourite_pokemon)
       OR EXISTS (SELECT 1 FROM gameplay.user_game_library_entries)
       OR EXISTS (SELECT 1 FROM public.tags)
       OR EXISTS (SELECT 1 FROM gameplay.mainline_challenge_rules
         WHERE user_id IS NOT NULL)
       OR EXISTS (SELECT 1 FROM gameplay.mainline_challenge_rule_sets
         WHERE user_id IS NOT NULL)
       OR EXISTS (SELECT 1 FROM public.profiles
         WHERE display_name IS NOT NULL OR icon_form_id IS NOT NULL) AS found`,
  );

  return row?.found ?? false;
};

const saveDeviceAccount = (
  db: Pick<LocalDb, "query">,
  {
    accountId,
    backupId,
    replaced = false,
  }: { accountId: string; backupId: string | null; replaced?: boolean },
) =>
  db.query(
    `INSERT INTO device.sync (account_id, backup_id, synced_at, restored)
     VALUES ($1, $2, NOW(), $3)
     ON CONFLICT (id) DO UPDATE SET account_id = EXCLUDED.account_id,
       backup_id = EXCLUDED.backup_id, synced_at = EXCLUDED.synced_at,
       restored = EXCLUDED.restored`,
    [accountId, backupId, replaced],
  );

/* When this device last had all of its data in the account. */
const recordAccountBackup = (db: Pick<LocalDb, "query">, savedAt: string) =>
  db.query(
    `INSERT INTO device.backups (kind, saved_at) VALUES ('account', $1)
     ON CONFLICT (kind) DO UPDATE SET saved_at = EXCLUDED.saved_at`,
    [savedAt],
  );

/* The profile and settings a device starts with, as at install. */
const resetDevice = async (tx: Transaction) => {
  await tx.query("DELETE FROM auth.users WHERE id = $1", [localUserId]);
  await tx.query("INSERT INTO auth.users (id) VALUES ($1)", [localUserId]);
  await tx.exec("DELETE FROM device.changes");
  await tx.exec("DELETE FROM device.sync");
  await tx.exec("DELETE FROM device.backups");
};

/*
 * The account's data leaves this device, which is as a new one again (an
 * empty profile and the starting settings; the game data it downloaded
 * stays). Nothing is recorded as deleted and the device forgets the
 * account. All in one go: a failure leaves the device as it was.
 */
export const clearAccountData = async (db: LocalDb) => {
  await replaceUserData(db, {}, { after: resetDevice });
};

/*
 * Puts one of the account's backups (`backupId`) in place of everything
 * on this device, as backed up, and remembers `newestId` (the backup
 * itself unless you picked an older one) as the newest this device knows;
 * `replaced` when it should then go up over the account's newest. With no
 * backup (an account that has none yet) the device starts as a new one for
 * the account. The games its Plays and Plans need are downloaded first.
 * All in one go: a failure leaves the device as it was, and so does a save
 * that landed after `readSeq` (the write count when you decided to take it).
 */
export const takeAccountBackup = async (
  db: LocalDb,
  {
    account,
    accountId,
    backupId,
    ensureGame,
    newestId = backupId,
    onProgress,
    readSeq,
    replaced = false,
  }: {
    account: AccountBackups;
    accountId: string;
    backupId: string | null;
    ensureGame: (versionGroupId: number) => Promise<void>;
    newestId?: string | null;
    onProgress?: (progress: AccountProgress) => void;
    readSeq?: number | null;
    replaced?: boolean;
  },
) => {
  const seq = readSeq === undefined ? await readWriteCount(db) : readSeq;

  onProgress?.({ step: "reading" });

  if (!backupId) {
    await replaceUserData(
      db,
      {},
      {
        after: async (tx) => {
          await resetDevice(tx);
          await saveDeviceAccount(tx, { accountId, backupId: null });
        },
      },
    );

    return;
  }

  /* Each game counted once, however many rounds ask for it. */
  const games = new Set<number>();
  const gamesDone = new Set<number>();
  const reportGames = () =>
    onProgress?.({ done: gamesDone.size, step: "games", total: games.size });
  const ensureCounted = async (versionGroupId: number) => {
    games.add(versionGroupId);
    await ensureGame(versionGroupId);
    gamesDone.add(versionGroupId);
    reportGames();
  };

  const taken = await account.read(backupId);
  const backup = await prepareSnapshot(
    db,
    taken.snapshot,
    ensureCounted,
    (needed) => {
      for (const id of needed) games.add(id);

      if (games.size) reportGames();
    },
  );

  for (const versionGroupId of readNeededVersionGroups(backup.tables)) {
    await ensureCounted(versionGroupId);
  }

  onProgress?.({ step: "applying" });
  await applyUserSnapshot(db, asBackedUp(backup), seq, async (tx) => {
    await tx.exec("DELETE FROM device.backups");
    await recordAccountBackup(tx, taken.savedAt);
    await saveDeviceAccount(tx, { accountId, backupId: newestId, replaced });
  });
};

/* A backup's records, as the account has them: nothing new on this device. */
const asBackedUp = (snapshot: VersionedSnapshot): VersionedSnapshot => ({
  ...snapshot,
  changes: snapshot.changes.map((record) => ({
    ...record,
    baseChangedAt: record.changedAt,
  })),
});

/*
 * One look at the account, while you're logged in:
 * - `saved`: this device's changes went up as the account's newest backup;
 * - `took`: another device saved a newer backup and this device had
 *   nothing new, so it took it;
 * - `newer`: another device saved a newer backup but this device changed
 *   things too; nothing happens until you choose (`keep` sends this
 *   device's up over it, `takeAccountBackup` takes the newer one);
 * - `raced`: another device saved first just now; look again;
 * - `unchanged`: nothing new on either side.
 */
export type BackupOutcome =
  | { backupId: string; status: "saved" | "took" }
  | { device: AccountBackupEntry; status: "newer" }
  | { status: "raced" | "unchanged" };

export const backUpDevice = async (
  db: LocalDb,
  {
    account,
    accountId,
    ensureGame,
    keep = false,
    onProgress,
    uploads,
  }: {
    account: AccountBackups;
    accountId: string;
    ensureGame: (versionGroupId: number) => Promise<void>;
    /* "Keep this device's": it goes up over a newer backup from elsewhere. */
    keep?: boolean;
    onProgress?: (progress: AccountProgress) => void;
    uploads: UploadNotes;
  },
): Promise<BackupOutcome> => {
  /* Read first: a save after it means this device has something new. */
  const seq = await readWriteCount(db);
  const state = await readDeviceAccount(db);
  const [newest = null] = await account.list();
  const unsaved = await hasUnsavedChanges(db);
  const elsewhere = newest !== null && newest.id !== state.backupId;

  if (state.replaced || keep || (unsaved && !elsewhere)) {
    return upload(db, {
      account,
      accountId,
      parentId: newest?.id ?? null,
      uploads,
    });
  }

  if (!elsewhere) return { status: "unchanged" };

  if (unsaved) {
    /*
     * The newest may be this device's own, saved just before the page went
     * away and the browser could keep that it was: then nothing waits.
     */
    const { snapshot } = await account.read(newest.id);

    if (await holdsSnapshot(db, snapshot)) {
      await db.transaction(async (tx) => {
        await markBackedUp(tx, seq);
        await recordAccountBackup(tx, newest.savedAt);
        await saveDeviceAccount(tx, { accountId, backupId: newest.id });
      });

      return { status: "unchanged" };
    }

    /* Or it is, and you saved again since: that goes up on top of it. */
    const note = uploads.read();

    if (
      note?.accountId === accountId &&
      note.parentId === state.backupId &&
      note.fingerprint === (await fingerprint(snapshot))
    ) {
      return upload(db, { account, accountId, parentId: newest.id, uploads });
    }

    return { device: newest, status: "newer" };
  }

  await takeAccountBackup(db, {
    account,
    accountId,
    backupId: newest.id,
    ensureGame,
    onProgress,
    readSeq: seq,
  });

  return { backupId: newest.id, status: "took" };
};

/*
 * Uploads everything on this device on top of `parentId`; a device that
 * loses the race to another changes nothing, to look again.
 */
const upload = async (
  db: LocalDb,
  {
    account,
    accountId,
    parentId,
    uploads,
  }: {
    account: AccountBackups;
    accountId: string;
    parentId: string | null;
    uploads: UploadNotes;
  },
): Promise<BackupOutcome> => {
  const snapshot = await readUserSnapshot(db);

  uploads.write({
    accountId,
    fingerprint: await fingerprint(snapshot),
    parentId,
  });

  const backupId = await account.upload(snapshot, parentId);

  if (!backupId) return { status: "raced" };

  await db.transaction(async (tx) => {
    await markBackedUp(tx, snapshot.seq);
    await recordAccountBackup(tx, new Date().toISOString());
    await saveDeviceAccount(tx, { accountId, backupId });
  });

  return { backupId, status: "saved" };
};

/* A row as compared between two copies: what changes on its own left out. */
const comparable = (row: UserRow) =>
  JSON.stringify(
    Object.entries(row)
      .filter(([column]) => !quietColumns.includes(column))
      .sort(([left], [right]) => left.localeCompare(right)),
  );

/* Your data as text to compare: each table's rows in order, quiet columns aside. */
const comparableData = (data: UserData) =>
  JSON.stringify(
    userTables.map(({ name }) => (data[name] ?? []).map(comparable).sort()),
  );

/* Whether two copies of your data hold the same rows, quiet columns aside. */
export const sameUserData = (left: UserData, right: UserData) =>
  comparableData(left) === comparableData(right);

/* A short mark of a copy of your data: two copies share it when they hold the same. */
const fingerprint = async ({ idChanges, tables }: VersionedSnapshot) => {
  const digest = await crypto.subtle.digest(
    "SHA-256",
    new TextEncoder().encode(`${idChanges}:${comparableData(tables)}`),
  );

  return Array.from(new Uint8Array(digest), (byte) =>
    byte.toString(16).padStart(2, "0"),
  ).join("");
};

/* Whether an account backup's data is what this device holds now. */
const holdsSnapshot = async (db: LocalDb, snapshot: VersionedSnapshot) => {
  const [{ count }] = await runQuery<{ count: number }>(
    db,
    "SELECT count(*)::int AS count FROM device.id_changes",
  );

  return (
    snapshot.idChanges === count &&
    sameUserData(snapshot.tables, await readUserData(db))
  );
};

/* What is on this device now goes up over the account's newest next (a file restored). */
export const markReplaced = (db: Pick<LocalDb, "query">) =>
  db.query(
    `INSERT INTO device.sync (restored) VALUES (TRUE)
     ON CONFLICT (id) DO UPDATE SET restored = TRUE`,
  );
