import { readBackupFile } from "@/platform/local-db/backup-file";
import { makeBackupFile, restoreBackup } from "@/platform/local-db/backups";
import type { OwnDataStore } from "@/platform/local-db/device-copy";
import {
  clearAccountData,
  hasOwnData,
  readDeviceAccount,
} from "@/platform/local-db/device-account";
import { LocalDbError, type LocalDb } from "@/platform/local-db/local-db";

/*
 * A device's own data and an account logged in on it, kept apart. The
 * device's own data, made without an account, is never deleted by logging
 * in or out, and never reaches the account by itself: logging in sets a
 * copy of it aside, whole, as a backup file kept beside the database
 * (`OwnDataStore`), and logging out puts it back exactly as it was. Moving
 * Plays between the two is yours to do, with Export and Import.
 */

/*
 * Logging in: a copy of the device's own data is kept aside, once (a
 * second would write over the first), then the device is cleared for the
 * account. Kept first, cleared after: if it can't be kept, nothing changes.
 */
export const setOwnDataAside = async (db: LocalDb, store: OwnDataStore) => {
  if (await store.read()) {
    throw new LocalDbError(
      "This device is already keeping other Plays aside. Log out first, then log in again.",
    );
  }

  const { bytes } = await makeBackupFile(db);

  await store.save(bytes);
  await clearAccountData(db);
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
  if ((await readDeviceAccount(db)).accountId || (await hasOwnData(db))) {
    return false;
  }

  await restoreBackup(db, await readBackupFile(bytes), { ensureGame });
  /* Put back, not restored over an account: it waits to replace nothing. */
  await db.exec("DELETE FROM device.sync");

  /* Not written yet: the copy stays, and the next time the app opens asks again. */
  await waitForWrites();
  await store.forget();

  return true;
};
