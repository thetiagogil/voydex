"use client";

import { useSyncExternalStore } from "react";

import { createAccountBackups } from "@/platform/local-db/account-backups";
import { recordBackup } from "@/platform/local-db/backups";
import { ownDataStore } from "@/platform/local-db/device-copy";
import {
  type BackupDevice,
  clearAccountData,
  hasOwnData,
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
import { waitForWrites } from "@/platform/local-db/durable-writes";
import { openLocalDb } from "@/platform/local-db/open-local-db";
import {
  addAsideDataToAccount,
  addOwnDataToAccount,
  bringOwnDataBack,
  setOwnDataAside,
} from "@/platform/local-db/own-data-aside";
import type { Clash, MergeChoices } from "@/platform/local-db/sync-merge";
import { SyncMovedOnError } from "@/platform/local-db/sync-snapshot";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * Account sync while you're signed in: a few seconds after each save the
 * device's data goes up as the account's backup, and whenever the app
 * opens or comes back to the front it checks for a newer one and merges
 * it. A clash waits for your answer; nothing syncs until then. So do Plays
 * from another account this device last synced with (you add them to this
 * account or leave them out), and data the device made without any account
 * (you add it, or keep it separate: set aside until you log out).
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
  /* This device has data made without an account: add it, or keep it separate. */
  | { status: "own-data" }
  | { message: string; status: "failed" };

/* Waiting for your answer: nothing syncs until you give it. */
const isWaiting = (status: AccountSyncStatus) =>
  status.status === "clashes" ||
  status.status === "other-account" ||
  status.status === "own-data";

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

/*
 * The first sync after logging in, or after answering what to do with the
 * device's own data: the app waits behind it (`AccountGate`), so your
 * account is here before anything shows.
 */
let firstSyncPending = false;
let firstSyncSince = 0;
let firstSyncTimer: ReturnType<typeof setTimeout> | null = null;
/* Counts each wait, so a slow finish of an earlier one can't end a later one. */
let firstSyncRound = 0;
const firstSyncListeners = new Set<() => void>();

/*
 * The longest the app waits for it: on a slow or missing connection the
 * app opens with what the device has, and sync carries on behind it.
 */
export const firstSyncLimitMs = 10_000;
/* The least its step shows once it shows, so it never flashes by. */
export const firstSyncMinMs = 1000;
/* The longest it then waits for the app's pages to be read again. */
export const firstSyncPagesLimitMs = 4000;

/* Gets the app's pages ready once the account is in; the app's route names them. */
let prepareApp: (() => Promise<void>) | null = null;

/*
 * Names how the app's pages are read ahead after the first sync, so the
 * step gives way to a finished app and not to its loading states. Returns
 * the way to take it back.
 */
export const prepareAppAfterFirstSync = (prepare: () => Promise<void>) => {
  prepareApp = prepare;

  return () => {
    if (prepareApp === prepare) prepareApp = null;
  };
};

const showFirstSync = (pending: boolean) => {
  if (firstSyncPending === pending) return;

  firstSyncPending = pending;

  for (const listener of firstSyncListeners) listener();
};

const setFirstSyncPending = (next: boolean) => {
  if (firstSyncTimer !== null) clearTimeout(firstSyncTimer);

  firstSyncTimer = null;

  if (next) {
    firstSyncRound += 1;

    const round = firstSyncRound;

    /* Whatever happens, the app opens after the limit. */
    firstSyncTimer = setTimeout(() => {
      if (round === firstSyncRound) showFirstSync(false);
    }, firstSyncLimitMs);

    if (!firstSyncPending) firstSyncSince = Date.now();

    showFirstSync(true);

    return;
  }

  if (!firstSyncPending) return;

  /* A sync that goes through at once still shows its step for a moment. */
  const shownForMs = Date.now() - firstSyncSince;

  if (shownForMs < firstSyncMinMs) {
    firstSyncTimer = setTimeout(
      () => setFirstSyncPending(false),
      firstSyncMinMs - shownForMs,
    );

    return;
  }

  /* The account is in: read the app's pages again, then show the app. */
  const round = firstSyncRound;
  const open = () => {
    if (round === firstSyncRound) showFirstSync(false);
  };

  if (!prepareApp) {
    open();

    return;
  }

  let limit: ReturnType<typeof setTimeout> | undefined;

  void Promise.race([
    prepareApp().catch(() => undefined),
    new Promise<void>((resolve) => {
      limit = setTimeout(resolve, firstSyncPagesLimitMs);
    }),
  ]).finally(() => {
    clearTimeout(limit);
    open();
  });
};

/* Log in calls this: the next sync is one the app waits for. */
export const expectFirstSync = () => setFirstSyncPending(true);

/* Whether the app is still waiting for that sync. */
export const useFirstSyncPending = () =>
  useSyncExternalStore(
    (listener) => {
      firstSyncListeners.add(listener);

      return () => {
        firstSyncListeners.delete(listener);
      };
    },
    () => firstSyncPending,
    () => false,
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

/*
 * How one sync ended: everything of the device's is in the account
 * (`done`), it should run again at once (`again`: another device uploaded
 * first, or you saved meanwhile), it waits for your answer, or it failed.
 */
type RunResult = "again" | "done" | "failed" | "waiting";

const run = async (): Promise<RunResult> => {
  const userId = accountId;

  if (!userId) return "failed";

  setStatus({ status: "syncing" });

  try {
    const { db } = await openLocalDb();
    let state = await readDeviceSyncState(db, userId);

    /* With no Plays or Plans to ask about, what's here simply joins. */
    if (state.otherAccount) {
      if (await hasPlaysOrPlans(db)) {
        setStatus({ status: "other-account" });

        return "waiting";
      }

      await joinAccount(db, userId);
      state = await readDeviceSyncState(db, userId);
    }

    /*
     * A device that never had an account, with data of its own: yours to
     * add, or someone else's to keep out of your account (a friend's
     * computer). Nothing merges until you say.
     */
    if (state.unjoined) {
      if (await hasOwnData(db)) {
        setStatus({ status: "own-data" });

        return "waiting";
      }

      /*
       * With nothing of its own it joins at once, so what you make from now
       * on is this account's and is never asked about.
       */
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

      return "waiting";
    }

    if (outcome.status === "raced") {
      setStatus({ status: "idle" });
      schedule(raceDelayMs);

      return "again";
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

    return "done";
  } catch (error) {
    if (error instanceof SyncMovedOnError) {
      runAgain = true;
      setStatus({ status: "idle" });

      return "again";
    }

    setStatus({
      message:
        error instanceof Error
          ? error.message
          : "The account backup didn't sync. It tries again soon.",
      status: "failed",
    });
    schedule(retryDelayMs);

    return "failed";
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

  running = run()
    .then((result) => {
      /* Through, waiting on you, or failed: the app needn't wait any more. */
      if (result !== "again") setFirstSyncPending(false);
    })
    .finally(() => {
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
  } else if (
    current.status === "other-account" ||
    current.status === "own-data"
  ) {
    setStatus({ status: current.status });
  }
};

/* Answers the clashes and syncs with every answer so far. */
export const resolveAccountClashes = (choices: MergeChoices) => {
  answers = { ...answers, ...choices };
  setStatus({ status: "idle" });

  return syncNow();
};

/*
 * "Add them": this device's Plays, from another account or made without
 * one, join this account. Of data made without an account a copy is kept
 * aside first, so logging out gives the device back what it had.
 */
export const addPlaysToAccount = async () => {
  const userId = accountId;

  if (
    !userId ||
    (current.status !== "other-account" && current.status !== "own-data")
  ) {
    return;
  }

  const { db } = await openLocalDb();

  if (current.status === "own-data") {
    await addOwnDataToAccount(db, ownDataStore, userId);
    setFirstSyncPending(true);
  } else {
    await joinAccount(db, userId);
  }

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
 * "Keep them separate": this device's own data is set aside, whole, and the
 * device shows this account alone; logging out brings it back
 * (`own-data-aside.ts`). If it can't be set aside, the question stays and
 * nothing changed.
 */
export const keepOwnDataSeparate = async () => {
  const userId = accountId;

  if (!userId || current.status !== "own-data") return;

  const { db } = await openLocalDb();

  await setOwnDataAside(db, ownDataStore, userId);
  setFirstSyncPending(true);
  setStatus({ status: "idle" });
  ownSave = true;
  /* Counted like any save you make: it follows your tap. */
  notifyLocalSave();
  ownSave = false;

  return syncNow();
};

/* Whether this device keeps data of its own aside while you're logged in. */
export const hasOwnDataAside = async () =>
  (await ownDataStore.read().catch(() => null)) !== null;

/*
 * What became of the data this device had before you logged in: nothing
 * was kept aside (`none`), it is kept separate from this account, or a
 * copy of it was added to the account. It waits for Log out either way.
 */
export type OwnDataAside = "added" | "none" | "separate";

export const readOwnDataAside = async (): Promise<OwnDataAside> => {
  if (!(await hasOwnDataAside())) return "none";

  return (await ownDataStore.readAddedTo().catch(() => null))
    ? "added"
    : "separate";
};

/*
 * From Settings: adds the data kept separate to this account after all. It
 * syncs first, so the account has everything on this device, then puts the
 * kept data in the device's place to join the account, and syncs again to
 * merge the two. If the first sync doesn't go through, nothing changes.
 */
export const addAsideToAccount = async (): Promise<
  "added" | "failed" | "waiting"
> => {
  const userId = accountId;

  if (!userId) return "failed";
  if (isWaiting(current)) return "waiting";

  paused = true;

  try {
    if (timer !== null) window.clearTimeout(timer);

    timer = null;
    await running;

    let result: RunResult = "again";

    for (
      let tries = 0;
      result === "again" && tries < logOutSyncTries;
      tries++
    ) {
      result = await run();
    }

    if (result !== "done") return result === "waiting" ? "waiting" : "failed";

    const { db } = await openLocalDb();

    await addAsideDataToAccount(db, ownDataStore, userId, {
      ensureGame: ensureVersionGroupData,
    });
    ownSave = true;
    notifyLocalSave();
    ownSave = false;
  } finally {
    paused = false;
    runAgain = false;
  }

  await syncNow();

  return "added";
};

/*
 * Logged out, with the device's own data still set aside (a log out cut
 * short after the account's data left): brings it back. It does nothing
 * unless the device belongs to no account and is empty.
 */
export const bringOwnDataBackIfLeft = async () => {
  if (accountId || paused) return;

  const { db } = await openLocalDb();
  const back = await bringOwnDataBack(db, ownDataStore, {
    ensureGame: ensureVersionGroupData,
    waitForWrites,
  }).catch(() => false);

  if (back) notifyLocalSave({ background: true });
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

/* A few tries for Log out's last sync: a race or a late save runs it again. */
const logOutSyncTries = 3;

/*
 * How Log out went: the device's data reached the account and left the
 * device (`cleared`); or nothing was removed, because a sync question
 * waits for your answer (`waiting`) or the last sync couldn't finish
 * (`failed`, offline for one). `kept`: logged out, but the device's data
 * couldn't be removed and stays.
 */
export type LogOutResult = "cleared" | "failed" | "kept" | "waiting";

/*
 * Log out, clean: syncs one last time so the account has everything, signs
 * out (`signOut`), then takes `userId`'s data off this device
 * (`clearAccountData`) and brings back what the device had of its own, if
 * it was kept separate. In that order and never further than it got: if the
 * last sync doesn't go through, nothing is signed out or removed and the
 * answer says why. No other sync runs meanwhile: an emptied device must
 * never reach the account as if you had deleted everything.
 */
export const logOutClean = async (
  userId: string,
  signOut: () => Promise<void>,
): Promise<LogOutResult> => {
  if (isWaiting(current)) return "waiting";

  /* On a page that doesn't keep sync running (the Codex), this sync is its own. */
  const ownAccount = accountId === null;

  if (ownAccount) accountId = userId;

  paused = true;

  try {
    if (timer !== null) window.clearTimeout(timer);

    timer = null;
    await running;

    let result: RunResult = "again";

    for (
      let tries = 0;
      result === "again" && tries < logOutSyncTries;
      tries++
    ) {
      result = await run();
    }

    if (result !== "done") return result === "waiting" ? "waiting" : "failed";

    const { db } = await openLocalDb();

    await signOut();
    accountId = null;

    try {
      await clearAccountData(db);
    } catch {
      return "kept";
    }

    /*
     * What the device had before this account logged in, kept separate,
     * comes back. If it can't now, it does the next time the app opens.
     */
    await bringOwnDataBack(db, ownDataStore, {
      ensureGame: ensureVersionGroupData,
      waitForWrites,
    }).catch(() => false);

    /* Every screen reads again: the Plays are gone from this device. */
    ownSave = true;
    notifyLocalSave({ background: true });
    ownSave = false;

    return "cleared";
  } finally {
    if (ownAccount) accountId = null;

    paused = false;
    runAgain = false;
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
