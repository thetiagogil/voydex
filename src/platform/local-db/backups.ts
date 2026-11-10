import {
  backupFileName,
  createBackup,
  writeBackupFile,
  type BackupFile,
} from "@/platform/local-db/backup-file";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import {
  readNeededVersionGroups,
  readUserData,
  replaceUserData,
} from "@/platform/local-db/user-data";

/*
 * Saving and restoring backups on this device, and when it last saved one,
 * for the quiet "Last backup" note.
 */

export type BackupKind = "account" | "file";

export type BackupStatus = {
  /* When this device first opened Voydex, as ISO text. */
  installedAt: string;
  /* When this device last saved a backup (either kind); null if never. */
  lastBackupAt: string | null;
};

/* After this many days without a backup, the reminder shows. */
export const backupReminderDays = 30;

const dayMs = 24 * 60 * 60 * 1000;

export const readBackupStatus = async (db: LocalDb): Promise<BackupStatus> => {
  const [row] = await runQuery<BackupStatus>(
    db,
    `SELECT installs.installed_at AS "installedAt",
       (SELECT MAX(saved_at) FROM device.backups) AS "lastBackupAt"
     FROM device.installs installs`,
  );

  return row ?? { installedAt: new Date().toISOString(), lastBackupAt: null };
};

/* Whole days since `iso`, never below zero. */
export const daysSince = (iso: string, now = new Date()) =>
  Math.max(0, Math.floor((now.getTime() - new Date(iso).getTime()) / dayMs));

/*
 * Whether to remind you to back up: 30 days since the last backup, or since
 * this device started when there has never been one.
 */
export const isBackupDue = (status: BackupStatus, now = new Date()) =>
  daysSince(status.lastBackupAt ?? status.installedAt, now) >=
  backupReminderDays;

export const recordBackup = async (
  db: LocalDb,
  kind: BackupKind,
  savedAt: string,
) => {
  await db.query(
    `INSERT INTO device.backups (kind, saved_at) VALUES ($1, $2)
     ON CONFLICT (kind) DO UPDATE SET saved_at = EXCLUDED.saved_at`,
    [kind, savedAt],
  );
};

/* Every row of yours as a backup file, with the name to save it under. */
export const makeBackupFile = async (db: LocalDb, savedAt = new Date()) => {
  const backup = createBackup(await readUserData(db), savedAt);

  return {
    backup,
    bytes: await writeBackupFile(backup),
    fileName: backupFileName(savedAt),
  };
};

/*
 * Puts a backup's data in place of this device's. The games its Plays and
 * Plans need are downloaded first (`ensureGame`), since your rows point at
 * their data; then every row is replaced in one go, so a backup that
 * doesn't fit leaves the device as it was.
 */
export const restoreBackup = async (
  db: LocalDb,
  backup: BackupFile,
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
) => {
  for (const versionGroupId of readNeededVersionGroups(backup.tables)) {
    await ensureGame(versionGroupId);
  }

  await replaceUserData(db, backup.tables);
};

/* "Last backup today", "Last backup 3 days ago", or "No backup yet". */
export const describeLastBackup = (
  lastBackupAt: string | null,
  now = new Date(),
) => {
  if (!lastBackupAt) return "No backup yet";

  const days = daysSince(lastBackupAt, now);

  if (days === 0) return "Last backup today";

  return days === 1 ? "Last backup yesterday" : `Last backup ${days} days ago`;
};
