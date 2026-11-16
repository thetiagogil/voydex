#!/usr/bin/env node

/*
 * Gives each local fixture account its seeded Plays and Plans as an account
 * backup, so signing in to one on a device brings them in:
 *
 *   npm run db:fixtures     (runs on its own after npm run db:reset)
 *
 * The development seeds (database/seeds/90_development) put the fixture
 * accounts' rows in the local stack's tables, but the app keeps your data on
 * the device and only reads an account's backups. This reads each account's
 * rows the way a device's backup holds them (the device's one local user in
 * place of the account's id), saves them as the account's only backup and
 * leaves the tables as they are. Local stack only.
 */

import { execFileSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";

import {
  backupFormat,
  createBackup,
  writeBackupFile,
} from "@/platform/local-db/backup-file";
import type { UserData } from "@/platform/local-db/user-data";

import { databaseDir, resolveSupabaseBin, rootDir } from "./context.mjs";
import {
  accountDataSql,
  columnsSql,
  quote,
  toAccountColumns,
  type AccountColumns,
} from "./fixture-account-data.mjs";

/* Keep in step with database/seeds/90_development/README.md. */
const fixtureEmails = [
  "fixture@voydex.test",
  "specialist@voydex.test",
  "trainer@voydex.test",
];

const bucket = "backups";

const supabase = (args: string[]) =>
  execFileSync(resolveSupabaseBin(), args, {
    cwd: databaseDir,
    encoding: "utf8",
    maxBuffer: 256 * 1024 * 1024,
    stdio: ["ignore", "pipe", "pipe"],
  });

const query = <Row,>(sql: string): Row[] =>
  (
    JSON.parse(supabase(["db", "query", "--local", "-o", "json", sql])) as {
      rows: Row[];
    }
  ).rows;

/* A statement that returns no rows. */
const execute = (sql: string) => {
  supabase(["db", "query", "--local", sql]);
};

const readAccountData = (userId: string, columns: AccountColumns) => {
  const [{ data }] = query<{ data: string }>(accountDataSql(userId, columns));

  return JSON.parse(data) as UserData;
};

const readStatus = () =>
  JSON.parse(supabase(["status", "-o", "json"])) as {
    API_URL: string;
    SERVICE_ROLE_KEY: string;
  };

/* Storage restarts with a reset: wait for it rather than fail. */
const storageFetch = async (url: string, init: RequestInit) => {
  for (let attempt = 1; ; attempt += 1) {
    try {
      const response = await fetch(url, init);

      if (response.status < 500 || attempt === 30) return response;
    } catch (error) {
      if (attempt === 30) throw error;
    }

    await new Promise((resolve) => setTimeout(resolve, 1000));
  }
};

const main = async () => {
  const { API_URL, SERVICE_ROLE_KEY } = readStatus();
  const headers = {
    apikey: SERVICE_ROLE_KEY,
    Authorization: `Bearer ${SERVICE_ROLE_KEY}`,
  };
  const idChanges = (
    JSON.parse(
      fs.readFileSync(
        path.join(rootDir, "database", "game-data", "id-changes.json"),
        "utf8",
      ),
    ) as unknown[]
  ).length;
  const accounts = query<{ email: string; id: string }>(
    `SELECT email, id FROM auth.users
     WHERE email IN (${fixtureEmails.map(quote).join(", ")}) ORDER BY email`,
  );

  if (!accounts.length) {
    console.log("No fixture accounts in the local database: nothing to do.");
    return;
  }

  const columns = toAccountColumns(query(columnsSql));

  for (const { email, id } of accounts) {
    const tables = readAccountData(id, columns);
    const old = query<{ object_path: string }>(
      `SELECT object_path FROM public.user_backups WHERE user_id = ${quote(id)}`,
    );

    if (old.length) {
      const removed = await storageFetch(
        `${API_URL}/storage/v1/object/${bucket}`,
        {
          body: JSON.stringify({ prefixes: old.map((row) => row.object_path) }),
          headers: { ...headers, "Content-Type": "application/json" },
          method: "DELETE",
        },
      );

      if (!removed.ok) {
        throw new Error(`${email}: old backups stayed (${removed.status}).`);
      }

      execute(`DELETE FROM public.user_backups WHERE user_id = ${quote(id)}`);
    }

    const savedAt = new Date();
    const backup = createBackup({ changes: [], idChanges, tables }, savedAt);
    const bytes = await writeBackupFile(backup);
    const objectPath = `${id}/${savedAt.getTime()}-fixture.json.gz`;
    const stored = await storageFetch(
      `${API_URL}/storage/v1/object/${bucket}/${objectPath}`,
      {
        body: bytes,
        headers: { ...headers, "Content-Type": "application/gzip" },
        method: "POST",
      },
    );

    if (!stored.ok) {
      throw new Error(
        `${email}: the backup didn't upload (${stored.status} ${await stored.text()}).`,
      );
    }

    execute(
      `INSERT INTO public.user_backups
         (user_id, object_path, format, saved_at, device_name, byte_size)
       VALUES (${quote(id)}, ${quote(objectPath)}, ${backupFormat},
         ${quote(backup.savedAt)}, 'Test data', ${bytes.byteLength})`,
    );

    const plays = tables["gameplay.mainline_plays"]?.length ?? 0;
    const plans = tables["planning.mainline_team_plans"]?.length ?? 0;

    console.log(`${email}: backup with ${plays} Plays and ${plans} Plans.`);
  }
};

await main();
