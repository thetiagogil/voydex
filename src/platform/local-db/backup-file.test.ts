import { gzipSync } from "node:zlib";

import { describe, expect, it } from "vitest";

import {
  backupFileName,
  BackupFileError,
  createBackup,
  readBackupFile,
  upgradeBackup,
  writeBackupFile,
} from "@/platform/local-db/backup-file";

const profile = { id: "00000000-0000-4000-8000-000000000001" };
const tables = {
  "public.profiles": [profile],
  "public.tags": [{ id: "t1", name: "Shiny", slug: "shiny" }],
};

const snapshot = { changes: [], idChanges: 2, tables };

const encode = (value: unknown) =>
  new Uint8Array(gzipSync(JSON.stringify(value)));

describe("backup files", () => {
  it("reads back what it wrote", async () => {
    const backup = createBackup(snapshot, new Date("2026-11-10T09:30:00Z"));

    await expect(
      readBackupFile(await writeBackupFile(backup)),
    ).resolves.toEqual(backup);
  });

  it("reads a file a server already unzipped", async () => {
    const backup = createBackup(snapshot);

    await expect(
      readBackupFile(new TextEncoder().encode(JSON.stringify(backup))),
    ).resolves.toEqual(backup);
  });

  it("refuses a file that isn't a backup", async () => {
    await expect(
      readBackupFile(new TextEncoder().encode("not json")),
    ).rejects.toThrow("isn't a Voydex backup");
    await expect(readBackupFile(encode({ app: "other" }))).rejects.toThrow(
      BackupFileError,
    );
    await expect(
      readBackupFile(encode({ ...createBackup(snapshot), tables: {} })),
    ).rejects.toThrow("isn't a Voydex backup");
  });

  it("refuses a cut-off file", async () => {
    const bytes = await writeBackupFile(createBackup(snapshot));

    await expect(readBackupFile(bytes.slice(0, 20))).rejects.toThrow(
      BackupFileError,
    );
  });

  it("upgrades a format 1 file, which had no change records or ID changes", () => {
    const { changes, idChanges, ...older } = createBackup(snapshot);

    expect(changes).toEqual([]);
    expect(idChanges).toBe(2);
    expect(upgradeBackup({ ...older, format: 1 })).toEqual({
      ...older,
      changes: [],
      format: 3,
      idChanges: 0,
    });
  });

  it("upgrades a format 2 file, whose rows had no ID changes", () => {
    const { idChanges, ...older } = createBackup(snapshot);

    expect(idChanges).toBe(2);
    expect(upgradeBackup({ ...older, format: 2 })).toEqual({
      ...older,
      format: 3,
      idChanges: 0,
    });
  });

  it("refuses a file with a broken ID changes count", () => {
    expect(() =>
      upgradeBackup({ ...createBackup(snapshot), idChanges: -1 }),
    ).toThrow(BackupFileError);
  });

  it("asks for a newer app for a newer file", () => {
    expect(() =>
      upgradeBackup({ ...createBackup(snapshot), format: 99 }),
    ).toThrow("newer Voydex");
  });

  it("names the file after the day it was saved", () => {
    expect(backupFileName(new Date(2026, 10, 9, 23, 59))).toBe(
      "voydex-backup-2026-11-09.json.gz",
    );
  });
});
