import { describe, expect, it, vi } from "vitest";

import {
  backupFilesToRemove,
  createAccountBackups,
  maxBackupBytes,
} from "@/platform/local-db/account-backups";
import type { BrowserSupabaseClient } from "@/platform/supabase/browser-client";

vi.mock("@/platform/local-db/backup-file", async (importOriginal) => ({
  ...(await importOriginal<typeof import("@/platform/local-db/backup-file")>()),
  writeBackupFile: async () => new Uint8Array(maxBackupBytes + 1),
}));

const folder = "user-1";
const now = Date.parse("2026-11-17T12:00:00Z");
const minutesAgo = (minutes: number) =>
  new Date(now - minutes * 60 * 1000).toISOString();
const row = (name: string) => ({ object_path: `${folder}/${name}` });

describe("backupFilesToRemove", () => {
  it("removes the backups past the newest three", () => {
    const rows = ["d", "c", "b", "a"].map(row);
    const files = ["a", "b", "c", "d"].map((name) => ({
      created_at: minutesAgo(5),
      name,
    }));

    expect(backupFilesToRemove(rows, files, { folder, now })).toEqual([
      "user-1/a",
    ]);
  });

  it("removes a file no backup points to once it is an hour old", () => {
    const files = [
      { created_at: minutesAgo(61), name: "stray-old" },
      { created_at: minutesAgo(5), name: "being-recorded" },
      { created_at: null, name: "no-date" },
      { created_at: minutesAgo(120), name: "kept" },
    ];

    expect(backupFilesToRemove([row("kept")], files, { folder, now })).toEqual([
      "user-1/stray-old",
    ]);
  });
});

describe("account backups upload", () => {
  it("refuses a backup over the bucket's limit before uploading", async () => {
    const upload = vi.fn();
    const supabase = {
      from: vi.fn(),
      rpc: vi.fn(),
      storage: { from: () => ({ upload }) },
    } as unknown as BrowserSupabaseClient;
    const backups = createAccountBackups(supabase, { userId: folder });

    await expect(
      backups.upload({ changes: [], idChanges: [], tables: {} } as never, null),
    ).rejects.toThrow("too big for an account backup");
    expect(upload).not.toHaveBeenCalled();
    expect(supabase.from).not.toHaveBeenCalled();
  });
});
