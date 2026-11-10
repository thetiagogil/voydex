"use client";

import { useSyncExternalStore } from "react";

import { createAccountBackups } from "@/platform/local-db/account-backups";
import { recordBackup } from "@/platform/local-db/backups";
import {
  readDeviceSyncState,
  saveDeviceSyncState,
  syncDevice,
} from "@/platform/local-db/device-sync";
import { ensureVersionGroupData } from "@/platform/local-db/game-downloads";
import { runQuery, type LocalDb } from "@/platform/local-db/local-db";
import {
  notifyLocalSave,
  subscribeLocalSaves,
} from "@/platform/local-db/local-db-context";
import { openLocalDb } from "@/platform/local-db/open-local-db";
import type { Clash, MergeChoices } from "@/platform/local-db/sync-merge";
import { SyncMovedOnError } from "@/platform/local-db/sync-snapshot";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * Account sync while you're signed in: a few seconds after each save the
 * device's data goes up as the account's backup, and whenever the app
 * opens or comes back to the front it checks for a newer one and merges
 * it. A clash waits for your answer; nothing syncs until then.
 */

/* When this device last synced with its account; null if never. */
export const readLastSync = async (db: LocalDb) => {
  const [row] = await runQuery<{ synced_at: string | null }>(
    db,
    "SELECT synced_at FROM device.sync",
  );

  return row?.synced_at ?? null;
};

export type AccountSyncStatus =
  | { status: "off" }
  | { status: "idle" }
  | { status: "syncing" }
  | { clashes: Clash[]; status: "clashes" }
  | { message: string; status: "failed" };

/* After a save, wait this long for more before uploading. */
const saveDelayMs = 5000;
/* After a failure, try again this much later. */
const retryDelayMs = 60_000;

let current: AccountSyncStatus = { status: "off" };
const listeners = new Set<() => void>();

const setStatus = (next: AccountSyncStatus) => {
  current = next;

  for (const listener of listeners) listener();
};

export const useAccountSync = () =>
  useSyncExternalStore(
    (listener) => {
      listeners.add(listener);

      return () => {
        listeners.delete(listener);
      };
    },
    () => current,
    () => current,
  );

let accountId: string | null = null;
let running: Promise<void> | null = null;
let runAgain = false;
let timer: number | null = null;
/* The save this runner announced itself after a merge; not yours. */
let ownSave = false;

const run = async (choices: MergeChoices = {}) => {
  const userId = accountId;

  if (!userId) return;

  setStatus({ status: "syncing" });

  try {
    const { db } = await openLocalDb();
    const outcome = await syncDevice(db, {
      account: createAccountBackups(getBrowserSupabaseClient(), { userId }),
      choices,
      ensureGame: ensureVersionGroupData,
      state: await readDeviceSyncState(db, userId),
    });

    if (outcome.status === "clashes") {
      setStatus({ clashes: outcome.clashes, status: "clashes" });

      return;
    }

    if (outcome.status === "synced") {
      await saveDeviceSyncState(db, {
        accountId: userId,
        backupId: outcome.backupId,
      });
      await recordBackup(db, "account", new Date().toISOString());
      ownSave = true;
      notifyLocalSave();
      ownSave = false;
    }

    setStatus({ status: "idle" });
  } catch (error) {
    if (error instanceof SyncMovedOnError) {
      runAgain = true;
      setStatus({ status: "idle" });

      return;
    }

    setStatus({
      message:
        error instanceof Error
          ? error.message
          : "The account backup didn't sync. It tries again soon.",
      status: "failed",
    });
    schedule(retryDelayMs);
  }
};

/* Syncs now, or once more after the sync already running. */
export const syncNow = (choices?: MergeChoices) => {
  if (!accountId || (current.status === "clashes" && !choices)) {
    return Promise.resolve();
  }

  if (running) {
    runAgain = true;

    return running;
  }

  running = run(choices).finally(() => {
    running = null;

    if (runAgain) {
      runAgain = false;
      void syncNow();
    }
  });

  return running;
};

const schedule = (delayMs: number) => {
  if (timer !== null) window.clearTimeout(timer);

  timer = window.setTimeout(() => {
    timer = null;
    void syncNow();
  }, delayMs);
};

/* Opens the clash sheet again after "Later". */
export const askAboutClashesAgain = () => {
  if (current.status === "clashes") {
    setStatus({ clashes: [...current.clashes], status: "clashes" });
  }
};

/* Answers the clashes and syncs with them. */
export const resolveAccountClashes = (choices: MergeChoices) => {
  setStatus({ status: "idle" });

  return syncNow(choices);
};

/*
 * Starts syncing for the signed-in account; returns the way to stop
 * (signing out, leaving the app).
 */
export const startAccountSync = (userId: string) => {
  accountId = userId;
  setStatus({ status: "idle" });

  const onFront = () => {
    if (document.visibilityState === "visible") void syncNow();
  };
  const stopSaves = subscribeLocalSaves(() => {
    if (!ownSave) schedule(saveDelayMs);
  });

  document.addEventListener("visibilitychange", onFront);
  window.addEventListener("online", onFront);
  void syncNow();

  return () => {
    accountId = null;
    stopSaves();
    document.removeEventListener("visibilitychange", onFront);
    window.removeEventListener("online", onFront);

    if (timer !== null) window.clearTimeout(timer);

    timer = null;
    setStatus({ status: "off" });
  };
};
