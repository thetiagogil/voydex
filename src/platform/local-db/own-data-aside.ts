import { readBackupFile } from "@/platform/local-db/backup-file";
import { makeBackupFile, restoreBackup } from "@/platform/local-db/backups";
import type { OwnDataStore } from "@/platform/local-db/device-copy";
import {
  clearAccountData,
  hasOwnData,
  joinAccount,
} from "@/platform/local-db/device-sync";
import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { readChangeRecords } from "@/platform/local-db/sync-snapshot";

/*
 * A device's own data and an account logged in on it, kept apart. The
 * device's own data, made without an account, is never deleted by logging
 * in or out: whatever you answer when you log in, a copy of it is first set
 * aside, whole, as a backup file kept beside the database (`OwnDataStore`),
 * and logging out puts it back exactly as it was.
 *
 * "Keep them separate" (someone else's device, or you'd rather decide
 * later): the device shows the account alone, and nothing of the device's
 * reaches the account. "Add them to my account": a copy joins the account
 * and follows you to your other devices; that can't be taken back, which
 * is why it is never the default. Kept separate, they can still be added
 * later.
 */

/* Keeps the copy, once: a second would write over the first. */
const keepCopy = async (db: LocalDb, store: OwnDataStore) => {
  if (await store.read()) {
    throw new LocalDbError(
      "This device is already keeping other Plays aside. Log out first, then log in again.",
    );
  }

  const { bytes } = await makeBackupFile(db);
  const marks = (await readChangeRecords(db)).filter(
    (record) => record.baseChangedAt !== null,
  );

  await store.saveSyncMarks(JSON.stringify(marks));
  await store.save(bytes);
};

/*
 * Puts the copy in place of what the device has, with the marks of what
 * the account already had of it (see `OwnDataStore.readSyncMarks`).
 */
const putCopyBack = async (
  db: LocalDb,
  store: OwnDataStore,
  bytes: Uint8Array,
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
) => {
  await restoreBackup(db, await readBackupFile(bytes), { ensureGame });

  const marks = await store.readSyncMarks();

  if (!marks) return;

  await db.query(
    `UPDATE device.changes AS changes SET base_changed_at = marks."baseChangedAt"
     FROM jsonb_to_recordset($1::jsonb) AS marks ("table" text, "key" text,
       "column" text, "baseChangedAt" timestamptz)
     WHERE changes.table_name = marks."table" AND changes.row_key = marks."key"
       AND changes.column_name = marks."column"`,
    [marks],
  );
};

/*
 * "Keep them separate": this device's own data is set aside and the device
 * starts as a new one for `accountId`, whose data the next sync brings.
 * Kept first, cleared after: if it can't be kept, nothing changes.
 */
export const setOwnDataAside = async (
  db: LocalDb,
  store: OwnDataStore,
  accountId: string,
) => {
  await keepCopy(db, store);
  await clearAccountData(db);
  await joinAccount(db, accountId);
};

/*
 * "Add them to my account": a copy of this device's own data is kept aside
 * all the same, then what is here joins `accountId` and the next sync
 * merges it with the account's. Your Plays, Plans, tags and the rest are
 * added; the account's name, icon and settings stay as they are.
 */
export const addOwnDataToAccount = async (
  db: LocalDb,
  store: OwnDataStore,
  accountId: string,
) => {
  await keepCopy(db, store);
  await store.markAdded(accountId);
  await joinAccount(db, accountId, {
    alreadyIn: (await store.readSyncedWith()) === accountId,
    profileFromAccount: true,
  });
};

/*
 * Later, from Settings: adds the data kept separate to `accountId` after
 * all. Call it only once the account has everything on this device (a sync
 * just went through): the kept data takes the device's place and joins the
 * account, and the next sync merges it with the account's, which brings
 * the account's own data back beside it. The copy stays aside for Log out.
 * Answers whether there was anything to add.
 */
export const addAsideDataToAccount = async (
  db: LocalDb,
  store: OwnDataStore,
  accountId: string,
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
) => {
  const bytes = await store.read();

  if (!bytes || (await store.readAddedTo())) return false;

  await putCopyBack(db, store, bytes, { ensureGame });
  await joinAccount(db, accountId, {
    alreadyIn: (await store.readSyncedWith()) === accountId,
    profileFromAccount: true,
  });
  await store.markAdded(accountId);

  return true;
};

/* Whether this device syncs with an account, logged in right now or not. */
const hasAccount = async (db: LocalDb) => {
  const [row] = await runQuery<{ account_id: string | null }>(
    db,
    "SELECT account_id FROM device.sync",
  );

  return Boolean(row?.account_id);
};

/*
 * Brings the device's own data back once the account's has left (Log out
 * cleared the device), and forgets the copy. It only ever fills a device
 * that belongs to no account and holds nothing of its own, so it is safe to
 * ask again whenever the app opens logged out: a log out cut short before
 * this ran finishes then. Answers whether anything came back.
 */
export const bringOwnDataBack = async (
  db: LocalDb,
  store: OwnDataStore,
  {
    ensureGame,
    waitForWrites = async () => undefined,
  }: {
    ensureGame: (versionGroupId: number) => Promise<void>;
    /*
     * Resolves once what was just put back is in the browser's storage.
     * The copy is let go only then: a page closed or reloaded a moment
     * after logging out must never lose both.
     */
    waitForWrites?: () => Promise<void>;
  },
) => {
  const bytes = await store.read();

  if (!bytes) return false;
  if ((await hasAccount(db)) || (await hasOwnData(db))) return false;

  const addedTo = await store.readAddedTo();

  await putCopyBack(db, store, bytes, { ensureGame });
  /* Put back, not restored over an account: it waits to replace nothing. */
  await db.exec("DELETE FROM device.sync");

  if (addedTo) {
    /*
     * A copy of it is in that account: as it was then, it is synced with
     * the account, so adding it again later lets the account's newer
     * changes to it come down instead of asking which to keep.
     */
    await db.exec("UPDATE device.changes SET base_changed_at = changed_at");
    await store.rememberSyncedWith(addedTo);
  }

  /* Not written yet: the copy stays, and the next time the app opens asks again. */
  await waitForWrites();
  await store.forget();

  return true;
};
