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
 * The newest (by the server's clock) is the one devices merge with, and
 * the last three are kept.
 */

const bucket = "backups";

/* How many backups an account keeps. */
export const keptBackups = 3;

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
      .select("id, object_path")
      .order("created_at", { ascending: false })
      .order("id", { ascending: false });

    if (error) throw failed("load", error);

    return data;
  };

  /* Deletes all but the newest three, files first. */
  const prune = async (rows: { id: string; object_path: string }[]) => {
    const old = rows.slice(keptBackups);

    if (!old.length) return;

    await supabase.storage
      .from(bucket)
      .remove(old.map((row) => row.object_path));
    await supabase
      .from("user_backups")
      .delete()
      .in(
        "id",
        old.map((row) => row.id),
      );
  };

  return {
    latest: async () => {
      const [newest] = await listNewest();

      if (!newest) return null;

      const { data, error } = await supabase.storage
        .from(bucket)
        .download(newest.object_path);

      if (error || !data) throw failed("download", error);

      const backup = await readBackupFile(
        new Uint8Array(await data.arrayBuffer()),
      );

      return {
        id: newest.id,
        snapshot: { changes: backup.changes, tables: backup.tables },
      };
    },
    upload: async (snapshot) => {
      const savedAt = new Date();
      const backup = createBackup(snapshot.tables, snapshot.changes, savedAt);
      const bytes = await writeBackupFile(backup);
      const objectPath = `${userId}/${savedAt.getTime()}-${crypto.randomUUID()}.json.gz`;
      const stored = await supabase.storage
        .from(bucket)
        .upload(objectPath, bytes, { contentType: "application/gzip" });

      if (stored.error) throw failed("upload", stored.error);

      const { data, error } = await supabase
        .from("user_backups")
        .insert({
          byte_size: bytes.byteLength,
          device_name: describeDevice(navigator.userAgent),
          format: backupFormat,
          object_path: objectPath,
          saved_at: backup.savedAt,
          user_id: userId,
        })
        .select("id")
        .single();

      if (error) {
        await supabase.storage.from(bucket).remove([objectPath]);
        throw failed("upload", error);
      }

      const rows = await listNewest();

      await prune(rows).catch(() => undefined);

      return { id: data.id, latest: rows[0]?.id === data.id };
    },
  };
};
