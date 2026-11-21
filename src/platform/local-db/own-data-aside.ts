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

/*
 * A device's own data and an account it wasn't added to, kept apart. Someone
 * logs in on a device that already has Plays made without an account (a
 * friend's computer): "Keep them separate" sets that data aside, whole, as
 * a backup file kept beside the database (`OwnDataStore`), and the device
 * shows the account alone. Logging out takes the account's data off the
 * device and brings the device's own back exactly as it was. Nothing of
 * either ever reaches the other.
 */

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
  /* One copy waits at a time: a second would write over the first. */
  if (await store.read()) {
    throw new LocalDbError(
      "This device is already keeping other Plays aside. Add these to your account instead.",
    );
  }

  const { bytes } = await makeBackupFile(db);

  await store.save(bytes);
  await clearAccountData(db);
  await joinAccount(db, accountId);
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
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
) => {
  const bytes = await store.read();

  if (!bytes) return false;
  if ((await hasAccount(db)) || (await hasOwnData(db))) return false;

  await restoreBackup(db, await readBackupFile(bytes), { ensureGame });
  /* Put back, not restored over an account: it waits to replace nothing. */
  await db.exec("DELETE FROM device.sync");
  await store.forget();

  return true;
};
