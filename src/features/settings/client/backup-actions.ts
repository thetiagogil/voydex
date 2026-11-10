"use client";

import { withSyncPaused } from "@/platform/local-db/account-sync";
import {
  BackupFileError,
  readBackupFile,
  type BackupFile,
} from "@/platform/local-db/backup-file";
import {
  makeBackupFile,
  recordBackup,
  restoreBackup,
} from "@/platform/local-db/backups";
import { ensureVersionGroupData } from "@/platform/local-db/game-downloads";
import { LocalDbError, type LocalDb } from "@/platform/local-db/local-db";
import { notifyLocalSave } from "@/platform/local-db/local-db-context";

/*
 * Settings' backup file: save every row of yours as a file, and restore
 * one in place of this device's data.
 */

export type BackupResult =
  | { message: string; status: "error" }
  | { status: "success" };

/* Hands the browser a file to save, the way a download link does. */
const offerFile = (bytes: Uint8Array, fileName: string) => {
  const url = URL.createObjectURL(
    new Blob([bytes as BlobPart], { type: "application/gzip" }),
  );
  const link = document.createElement("a");

  link.href = url;
  link.download = fileName;
  link.rel = "noopener";
  document.body.append(link);
  link.click();
  link.remove();
  /* Safari reads the file after the click returns; let it finish first. */
  window.setTimeout(() => URL.revokeObjectURL(url), 60_000);
};

const toMessage = (error: unknown, fallback: string) =>
  error instanceof BackupFileError || error instanceof LocalDbError
    ? error.message
    : fallback;

export const saveBackupFile = async (db: LocalDb): Promise<BackupResult> => {
  try {
    const savedAt = new Date();
    const { bytes, fileName } = await makeBackupFile(db, savedAt);

    offerFile(bytes, fileName);
    await recordBackup(db, "file", savedAt.toISOString());
    notifyLocalSave();

    return { status: "success" };
  } catch (error) {
    return {
      message: toMessage(error, "The backup didn't save. Try again."),
      status: "error",
    };
  }
};

export type OpenedBackup =
  | { backup: BackupFile; status: "ready" }
  | { message: string; status: "error" };

/* Reads a picked file; a file that isn't a usable backup says why. */
export const openBackupFile = async (file: File): Promise<OpenedBackup> => {
  try {
    return {
      backup: await readBackupFile(new Uint8Array(await file.arrayBuffer())),
      status: "ready",
    };
  } catch (error) {
    return {
      message: toMessage(error, "That file couldn't be read. Try again."),
      status: "error",
    };
  }
};

export const restoreBackupFile = async (
  db: LocalDb,
  backup: BackupFile,
): Promise<BackupResult> => {
  try {
    /* No account sync runs while the backup goes in; one runs after. */
    await withSyncPaused(() =>
      restoreBackup(db, backup, { ensureGame: ensureVersionGroupData }),
    );
    notifyLocalSave();

    return { status: "success" };
  } catch (error) {
    return {
      message: toMessage(
        error,
        "The backup didn't restore, so nothing changed. Try again.",
      ),
      status: "error",
    };
  }
};
