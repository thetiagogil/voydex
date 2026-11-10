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
/* A restore is putting a backup in place: no sync starts meanwhile. */
let paused = false;
let timer: number | null = null;
/* The save this runner announced itself after a merge; not yours. */
let ownSave = false;
/*
 * Every clash answered since the last sync that went through: an answer can
 * bring up a new clash, and the next round mustn't forget the first.
 */
let answers: MergeChoices = {};

/* After losing an upload race, try again soon to merge the winner's. */
const raceDelayMs = 2000;

const run = async () => {
  const userId = accountId;

  if (!userId) return;

  setStatus({ status: "syncing" });

  try {
    const { db } = await openLocalDb();
    const outcome = await syncDevice(db, {
      account: createAccountBackups(getBrowserSupabaseClient(), { userId }),
      choices: answers,
      ensureGame: ensureVersionGroupData,
      state: await readDeviceSyncState(db, userId),
    });

    if (outcome.status === "clashes") {
      setStatus({ clashes: outcome.clashes, status: "clashes" });

      return;
    }

    if (outcome.status === "raced") {
      setStatus({ status: "idle" });
      schedule(raceDelayMs);

      return;
    }

    if (outcome.status === "synced") {
      answers = {};
      await saveDeviceSyncState(db, {
        accountId: userId,
        backupId: outcome.backupId,
        sentRestore: outcome.sentRestore,
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

/*
 * Syncs now, or once more after the sync already running. A clash waiting
 * for your answer, or a restore under way, holds it.
 */
export const syncNow = (): Promise<void> => {
  if (!accountId || current.status === "clashes") return Promise.resolve();

  if (running || paused) {
    runAgain = true;

    return running ?? Promise.resolve();
  }

  running = run().finally(() => {
    running = null;

    if (runAgain && !paused) {
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

/* Answers the clashes and syncs with every answer so far. */
export const resolveAccountClashes = (choices: MergeChoices) => {
  answers = { ...answers, ...choices };
  setStatus({ status: "idle" });

  return syncNow();
};

/*
 * Runs `change` (a restore) with sync held: it waits for a sync under way
 * and starts none until `change` is done, then syncs.
 */
export const withSyncPaused = async <Result>(
  change: () => Promise<Result>,
): Promise<Result> => {
  paused = true;

  try {
    await running;

    return await change();
  } finally {
    paused = false;
    runAgain = false;
    void syncNow();
  }
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
