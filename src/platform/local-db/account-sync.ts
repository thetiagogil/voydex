"use client";

import { useSyncExternalStore } from "react";

import { createAccountBackups } from "@/platform/local-db/account-backups";
import { recordBackup } from "@/platform/local-db/backups";
import {
  type BackupDevice,
  hasPlaysOrPlans,
  joinAccount,
  readDeviceSyncState,
  saveDeviceSyncState,
  syncDevice,
  takeAccountData,
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
 * it. A clash waits for your answer; nothing syncs until then. So do Plays
 * from another account this device last synced with: you add them to this
 * account or leave them out.
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
  | { clashes: Clash[]; otherDevice: BackupDevice; status: "clashes" }
  /* This device's Plays came from another account: add them, or leave them out. */
  | { status: "other-account" }
  | { message: string; status: "failed" };

/* Waiting for your answer: nothing syncs until you give it. */
const isWaiting = (status: AccountSyncStatus) =>
  status.status === "clashes" || status.status === "other-account";

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
    let state = await readDeviceSyncState(db, userId);

    /* With no Plays or Plans to ask about, what's here simply joins. */
    if (state.otherAccount) {
      if (await hasPlaysOrPlans(db)) {
        setStatus({ status: "other-account" });

        return;
      }

      await joinAccount(db, userId);
      state = await readDeviceSyncState(db, userId);
    }

    const outcome = await syncDevice(db, {
      account: createAccountBackups(getBrowserSupabaseClient(), { userId }),
      choices: answers,
      ensureGame: ensureVersionGroupData,
      state,
    });

    if (outcome.status === "clashes") {
      setStatus({
        clashes: outcome.clashes,
        otherDevice: outcome.otherDevice,
        status: "clashes",
      });

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
      notifyLocalSave({ background: true });
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
 * Syncs now, or once more after the sync already running. A question
 * waiting for your answer, or a restore under way, holds it.
 */
export const syncNow = (): Promise<void> => {
  if (!accountId || isWaiting(current)) return Promise.resolve();

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

/* Opens the waiting question again after "Later". */
export const askAgain = () => {
  if (current.status === "clashes") {
    setStatus({ ...current, clashes: [...current.clashes] });
  } else if (current.status === "other-account") {
    setStatus({ status: "other-account" });
  }
};

/* Answers the clashes and syncs with every answer so far. */
export const resolveAccountClashes = (choices: MergeChoices) => {
  answers = { ...answers, ...choices };
  setStatus({ status: "idle" });

  return syncNow();
};

/* "Add them": this device's Plays from another account join this one. */
export const addPlaysToAccount = async () => {
  const userId = accountId;

  if (!userId || current.status !== "other-account") return;

  const { db } = await openLocalDb();

  await joinAccount(db, userId);
  setStatus({ status: "idle" });
  /*
   * A save like any you make: counted, and a reload waits for its write, so
   * the question doesn't come back.
   */
  ownSave = true;
  notifyLocalSave();
  ownSave = false;

  return syncNow();
};

/*
 * "Leave them out": this device takes this account's data in place of the
 * other account's. Save a backup file of the device first; if this
 * fails, the question stays and nothing changed.
 */
export const leavePlaysOut = async () => {
  const userId = accountId;

  if (!userId || current.status !== "other-account") return;

  const { db } = await openLocalDb();

  await takeAccountData(db, {
    account: createAccountBackups(getBrowserSupabaseClient(), { userId }),
    accountId: userId,
    ensureGame: ensureVersionGroupData,
  });
  setStatus({ status: "idle" });
  ownSave = true;
  /* Counted like any save you make: it follows your tap. */
  notifyLocalSave();
  ownSave = false;

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
