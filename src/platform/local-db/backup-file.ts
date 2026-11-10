import { z } from "zod";

import { gzipText, readMaybeGzippedText } from "@/platform/local-db/gzip";
import type { UserData } from "@/platform/local-db/user-data";

/*
 * A backup: every row of yours as one gzipped JSON file. `format` moves on
 * when the file's shape changes; an older file is upgraded step by step
 * before it is read, and a newer one asks for a newer Voydex.
 */
export const backupFormat = 1;

export type BackupFile = {
  app: "voydex";
  format: typeof backupFormat;
  kind: "backup";
  /* When the backup was saved, as ISO text. */
  savedAt: string;
  tables: UserData;
};

/* A file Voydex can't restore, with why in your words. */
export class BackupFileError extends Error {
  constructor(message: string, options: { cause?: unknown } = {}) {
    super(message, options);
    this.name = "BackupFileError";
  }
}

const tableNamePattern = /^(public|gameplay|planning)\.[a-z_][a-z0-9_]*$/;

const backupSchema = z.object({
  app: z.literal("voydex"),
  format: z.literal(backupFormat),
  kind: z.literal("backup"),
  savedAt: z.iso.datetime({ offset: true }),
  tables: z
    .record(
      z.string().regex(tableNamePattern),
      z.array(z.record(z.string(), z.unknown())),
    )
    .refine((tables) => tables["public.profiles"]?.length === 1, {
      message: "A backup holds exactly one profile.",
    }),
});

type Upgrade = (file: Record<string, unknown>) => Record<string, unknown>;

/*
 * One step per older format: `upgrades[n]` turns a format n file into
 * format n + 1. Format 1 is the first, so there are none yet.
 */
const upgrades: Record<number, Upgrade> = {};

const brokenFile = (cause?: unknown) =>
  new BackupFileError("That file isn't a Voydex backup, or it's damaged.", {
    cause,
  });

/* Brings an older backup up to today's format; refuses what it can't read. */
export const upgradeBackup = (value: unknown): BackupFile => {
  if (
    typeof value !== "object" ||
    value === null ||
    !("app" in value) ||
    value.app !== "voydex" ||
    !("format" in value) ||
    typeof value.format !== "number" ||
    !Number.isInteger(value.format) ||
    value.format < 1
  ) {
    throw brokenFile();
  }

  if (value.format > backupFormat) {
    throw new BackupFileError(
      "This backup comes from a newer Voydex. Update the app, then try again.",
    );
  }

  let file = value as Record<string, unknown>;

  for (let format = value.format; format < backupFormat; format += 1) {
    const upgrade = upgrades[format];

    if (!upgrade) throw brokenFile();

    file = { ...upgrade(file), format: format + 1 };
  }

  const result = backupSchema.safeParse(file);

  if (!result.success) throw brokenFile(result.error);

  return result.data;
};

export const createBackup = (tables: UserData, savedAt = new Date()) =>
  ({
    app: "voydex",
    format: backupFormat,
    kind: "backup",
    savedAt: savedAt.toISOString(),
    tables,
  }) satisfies BackupFile;

export const writeBackupFile = (backup: BackupFile) =>
  gzipText(JSON.stringify(backup));

/* A backup file's bytes, gzipped or not, read and upgraded. */
export const readBackupFile = async (bytes: Uint8Array) => {
  let value: unknown;

  try {
    value = JSON.parse(await readMaybeGzippedText(bytes));
  } catch (error) {
    throw brokenFile(error);
  }

  return upgradeBackup(value);
};

/* "voydex-backup-2026-11-10.json.gz", dated in the device's own day. */
export const backupFileName = (savedAt: Date) => {
  const day = [
    savedAt.getFullYear(),
    String(savedAt.getMonth() + 1).padStart(2, "0"),
    String(savedAt.getDate()).padStart(2, "0"),
  ].join("-");

  return `voydex-backup-${day}.json.gz`;
};
