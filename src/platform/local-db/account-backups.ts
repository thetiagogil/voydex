"use client";

import {
  backupFormat,
  createBackup,
  readBackupFile,
  writeBackupFile,
} from "@/platform/local-db/backup-file";
import type { AccountBackups } from "@/platform/local-db/device-sync";
import { LocalDbError } from "@/platform/local-db/local-db";
import type { BrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * The account's backups on Supabase: one row per file in `user_backups`,
 * the files in the account's own folder of the private `backups` bucket.
 * The newest (by the server's clock) is the one devices merge with; a new
 * one goes on top of it only through `add_user_backup`, so two devices
 * can't both save on top of the same one. The last three are kept; the
 * server refuses a file over 5 MB and a sixth backup (database/schema/
 * 07_backups), so nobody can fill the hosted project.
 */

const bucket = "backups";

/* How many backups an account keeps. */
export const keptBackups = 3;

/* The backups bucket's file size limit. */
export const maxBackupBytes = 5 * 1024 * 1024;

/*
 * A file no backup row points to is an upload that was never recorded. It
 * is cleared once it is older than this, so another device's upload that
 * is still being recorded is left alone.
 */
const strayFileAge = 60 * 60 * 1000;

/* The account's files to delete: the backups past the newest three and stray files. */
export const backupFilesToRemove = (
  rows: { object_path: string }[],
  files: { created_at: string | null; name: string }[],
  { folder, now }: { folder: string; now: number },
) => {
  const recorded = new Set(rows.map((row) => row.object_path));
  const strays = files
    .map((file) => ({
      createdAt: Date.parse(file.created_at ?? ""),
      path: `${folder}/${file.name}`,
    }))
    .filter(
      (file) => !recorded.has(file.path) && now - file.createdAt > strayFileAge,
    )
    .map((file) => file.path);

  return [...rows.slice(keptBackups).map((row) => row.object_path), ...strays];
};

/* "iPhone", "Android", "Mac" or "Windows", for the backup list. */
export const describeDevice = (userAgent: string) => {
  if (/iPhone/.test(userAgent)) return "iPhone";
  if (/iPad/.test(userAgent)) return "iPad";
  if (/Android/.test(userAgent)) return "Android";
  if (/Macintosh/.test(userAgent)) return "Mac";
  if (/Windows/.test(userAgent)) return "Windows";

  return null;
};

const failed = (what: string, cause: unknown) =>
  new LocalDbError(`The account backup didn't ${what}. It tries again soon.`, {
    cause,
  });

export const createAccountBackups = (
  supabase: BrowserSupabaseClient,
  { userId }: { userId: string },
): AccountBackups => {
  const listNewest = async () => {
    const { data, error } = await supabase
      .from("user_backups")
      .select("id, object_path, device_name, saved_at")
      .order("created_at", { ascending: false })
      .order("id", { ascending: false });

    if (error) throw failed("load", error);

    return data;
  };

  /*
   * Deletes all but the newest three, files first, and stray files. Runs
   * before an upload too, so a cleanup that failed can't leave the account
   * full.
   */
  const prune = async () => {
    const rows = await listNewest();
    const old = rows.slice(keptBackups);
    const { data: files } = await supabase.storage.from(bucket).list(userId);
    const paths = backupFilesToRemove(rows, files ?? [], {
      folder: userId,
      now: Date.now(),
    });

    if (paths.length) await supabase.storage.from(bucket).remove(paths);
    if (old.length) {
      await supabase
        .from("user_backups")
        .delete()
        .in(
          "id",
          old.map((row) => row.id),
        );
    }
  };

  return {
    latestId: async () => (await listNewest())[0]?.id ?? null,
    read: async (id) => {
      const row = (await listNewest()).find((item) => item.id === id);
      const { data, error } = row
        ? await supabase.storage.from(bucket).download(row.object_path)
        : { data: null, error: new Error("That backup is gone.") };

      if (error || !data) throw failed("download", error);

      const backup = await readBackupFile(
        new Uint8Array(await data.arrayBuffer()),
      );

      return {
        name: row?.device_name ?? null,
        savedAt: backup.savedAt,
        snapshot: {
          changes: backup.changes,
          idChanges: backup.idChanges,
          tables: backup.tables,
        },
      };
    },
    upload: async (snapshot, parentId) => {
      const savedAt = new Date();
      const backup = createBackup(snapshot, savedAt);
      const bytes = await writeBackupFile(backup);

      if (bytes.byteLength > maxBackupBytes) {
        throw new LocalDbError(
          "Your data is too big for an account backup. Save a backup file instead.",
        );
      }

      await prune().catch(() => undefined);

      const objectPath = `${userId}/${savedAt.getTime()}-${crypto.randomUUID()}.json.gz`;
      const stored = await supabase.storage
        .from(bucket)
        .upload(objectPath, bytes, { contentType: "application/gzip" });

      if (stored.error) throw failed("upload", stored.error);

      const { data: backupId, error } = await supabase.rpc("add_user_backup", {
        p_byte_size: bytes.byteLength,
        p_device_name: describeDevice(navigator.userAgent) ?? undefined,
        p_format: backupFormat,
        p_object_path: objectPath,
        p_parent_id: parentId ?? undefined,
        p_saved_at: backup.savedAt,
      });

      /* Another device saved first, or it failed: the file isn't kept. */
      if (error || !backupId) {
        await supabase.storage.from(bucket).remove([objectPath]);

        if (error) throw failed("upload", error);

        return null;
      }

      await prune().catch(() => undefined);

      return backupId;
    },
  };
};
