import { z } from "zod";

import { gzipText, readMaybeGzippedText } from "@/platform/local-db/gzip";
import type { VersionedSnapshot } from "@/platform/local-db/id-changes";
import type { ChangeRecord } from "@/platform/local-db/sync-merge";
import type { UserData } from "@/platform/local-db/user-data";

/*
 * A backup: every row of yours as one gzipped JSON file. `format` moves on
 * when the file's shape changes; an older file is upgraded step by step
 * before it is read, and a newer one asks for a newer Voydex.
 */
export const backupFormat = 3;

export type BackupFile = {
  app: "voydex";
  /* When each row was added and each column last changed, for account sync. */
  changes: ChangeRecord[];
  format: typeof backupFormat;
  /* How many game data ID changes its rows have had (see id-changes.ts). */
  idChanges: number;
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
  changes: z.array(
    z.object({
      baseChangedAt: z.null(),
      changedAt: z.iso.datetime({ offset: true }),
      column: z.string(),
      deleted: z.boolean(),
      key: z.string().min(1),
      table: z.string().regex(tableNamePattern),
    }),
  ),
  format: z.literal(backupFormat),
  idChanges: z.number().int().nonnegative(),
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
 * format n + 1.
 */
const upgrades: Record<number, Upgrade> = {
  /* Format 2 added the change records; a format 1 file has none. */
  1: (file) => ({ ...file, changes: [] }),
  /*
   * Format 3 added the ID changes count. No release listed an ID change
   * before it, so a format 2 file's rows have had none.
   */
  2: (file) => ({ ...file, idChanges: 0 }),
};

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

export const createBackup = (
  { changes, idChanges, tables }: VersionedSnapshot,
  savedAt = new Date(),
) =>
  ({
    app: "voydex",
    /* The base is this device's own sync point: it means nothing elsewhere. */
    changes: changes.map((change) => ({ ...change, baseChangedAt: null })),
    format: backupFormat,
    idChanges,
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
