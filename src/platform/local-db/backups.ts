import {
  backupFileName,
  createBackup,
  writeBackupFile,
  type BackupFile,
} from "@/platform/local-db/backup-file";
import {
  countAppliedIdChanges,
  prepareSnapshot,
} from "@/platform/local-db/device-id-changes";
import { IdChangeError } from "@/platform/local-db/id-changes";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import { rowKeyOf, type ChangeRecord } from "@/platform/local-db/sync-merge";
import {
  readSchemaShape,
  readSyncSnapshot,
  restoreChangeRecords,
} from "@/platform/local-db/sync-snapshot";
import { replaceUserData } from "@/platform/local-db/user-data";

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
  const backup = createBackup(await readSyncSnapshot(db), savedAt);

  return {
    backup,
    bytes: await writeBackupFile(backup),
    fileName: backupFileName(savedAt),
  };
};

/*
 * A backup's change records, with one for each row that has none (a file
 * from before records): added when the backup was saved.
 */
const fillRecords = async (db: LocalDb, backup: BackupFile) => {
  const shape = await readSchemaShape(db);
  const recorded = new Set(
    backup.changes.map((change) => `${change.table}\u0000${change.key}`),
  );
  const filled: ChangeRecord[] = [...backup.changes];

  for (const { keyColumns, name } of shape.tables) {
    for (const row of backup.tables[name] ?? []) {
      const key = rowKeyOf(row, keyColumns);

      if (recorded.has(`${name}\u0000${key}`)) continue;

      filled.push({
        baseChangedAt: null,
        changedAt: backup.savedAt,
        column: "",
        deleted: false,
        key,
        table: name,
      });
    }
  }

  return filled;
};

/*
 * Puts a backup's data in place of this device's. The games its Plays and
 * Plans need are downloaded first (`ensureGame`), since your rows point at
 * their data, and a backup saved before some of the game data's ID
 * changes follows them; then every row is replaced in one go, so a backup
 * that doesn't fit leaves the device as it was. Restoring is a deliberate
 * choice: with an account, the restored data replaces the account's at
 * the next sync instead of merging with it.
 */
export const restoreBackup = async (
  db: LocalDb,
  backup: BackupFile,
  { ensureGame }: { ensureGame: (versionGroupId: number) => Promise<void> },
) => {
  const prepared = await prepareSnapshot(
    db,
    {
      changes: await fillRecords(db, backup),
      idChanges: backup.idChanges,
      tables: backup.tables,
    },
    ensureGame,
  );

  await replaceUserData(db, prepared.tables, {
    after: async (tx) => {
      await restoreChangeRecords(tx, prepared.changes);
      await tx.exec(
        `INSERT INTO device.sync (restored) VALUES (TRUE)
         ON CONFLICT (id) DO UPDATE SET restored = TRUE`,
      );
    },
    inside: async (tx) => {
      if ((await countAppliedIdChanges(tx)) !== prepared.idChanges) {
        throw new IdChangeError(
          "The game data on this device changed while restoring; try again.",
        );
      }
    },
  });
};

/* "today", "yesterday" or "3 days ago". */
export const describeDaysAgo = (iso: string, now = new Date()) => {
  const days = daysSince(iso, now);

  if (days === 0) return "today";

  return days === 1 ? "yesterday" : `${days} days ago`;
};

/* "Last backup today", "Last backup 3 days ago", or "No backup yet". */
export const describeLastBackup = (
  lastBackupAt: string | null,
  now = new Date(),
) =>
  lastBackupAt
    ? `Last backup ${describeDaysAgo(lastBackupAt, now)}`
    : "No backup yet";
