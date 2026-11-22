"use client";

import { useSyncExternalStore } from "react";

import { createAccountBackups } from "@/platform/local-db/account-backups";
import { ownDataStore } from "@/platform/local-db/device-copy";
import {
  type AccountBackupEntry,
  type AccountProgress,
  backUpDevice,
  clearAccountData,
  hasOwnData,
  hasUnsavedChanges,
  readDeviceAccount,
  takeAccountBackup,
} from "@/platform/local-db/device-account";
import { ensureVersionGroupData } from "@/platform/local-db/game-downloads";
import { LocalDbError, runQuery } from "@/platform/local-db/local-db";
import {
  notifyLocalSave,
  subscribeLocalSaves,
} from "@/platform/local-db/local-db-context";
import { waitForWrites } from "@/platform/local-db/durable-writes";
import { openLocalDb } from "@/platform/local-db/open-local-db";
import {
  bringOwnDataBack,
  setOwnDataAside,
} from "@/platform/local-db/own-data-aside";
import { MovedOnError } from "@/platform/local-db/user-snapshot";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * Your account on this device while you're logged in. Logging in asks
 * nothing: the device's own data is set aside and the account's newest
 * backup comes in. Then a few seconds after each save the device backs up
 * to the account, and whenever the app opens or comes back to the front it
 * looks for a newer backup another device saved. Nothing is ever merged:
 * a newer backup comes down by itself only while this device has nothing
 * new of its own; otherwise you choose which to keep, and backups wait
 * until you do. Log out backs up one last time, then the account's data
 * leaves the device and its own comes back.
 */

/*
 * Whether this device holds `userId`'s account, as saved on it. A device
 * that doesn't (it never finished opening it, or a reload came before the
 * browser had saved it) waits for the account again, behind the loading
 * bar, instead of opening on an app that looks empty meanwhile.
 */
export const hasOpenedAccount = async (userId: string) => {
  const { db } = await openLocalDb();
  const [row] = await runQuery<{ opened: boolean }>(
    db,
    `SELECT account_id = $1 AND synced_at IS NOT NULL AS opened
     FROM device.sync`,
    [userId],
  );

  return row?.opened ?? false;
};

export type AccountBackupStatus =
  | { status: "off" }
  | { status: "idle" }
  | { status: "saving" }
  /* Another device saved a newer backup, and this one changed things too. */
  | { device: AccountBackupEntry; status: "newer" }
  | { message: string; status: "failed" };

/* After a save, wait this long for more before backing up. */
const saveDelayMs = 5000;
/* After a failure, try again this much later. */
const retryDelayMs = 60_000;
/* After losing an upload race, look again soon. */
const raceDelayMs = 2000;

let current: AccountBackupStatus = { status: "off" };
const listeners = new Set<() => void>();

const setStatus = (next: AccountBackupStatus) => {
  current = next;

  for (const listener of listeners) listener();
};

export const useAccountBackupStatus = () =>
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
 * Opening the account after logging in: the app waits behind it
 * (`AccountGate`) until your account is on the device and its pages are
 * read, so it opens finished, never on its loading states. The step says
 * how far it has got.
 */

/* What the step shows: taking the account's backup, then the app's pages. */
export type AccountOpenProgress = AccountProgress | { step: "pages" } | null;

/*
 * Kept in the browser while the wait lasts, so a reload in the middle of
 * it (the data may not be saved yet) comes back to the same wait, not to
 * an app that looks empty while it starts over.
 */
const openNoteKey = "voydex-first-sync";

const readOpenNote = () => {
  try {
    return window.localStorage.getItem(openNoteKey) !== null;
  } catch {
    return false;
  }
};

const writeOpenNote = (pending: boolean) => {
  try {
    if (pending) window.localStorage.setItem(openNoteKey, "1");
    else window.localStorage.removeItem(openNoteKey);
  } catch {
    /* Storage refused: a reload mid-wait opens the app and loads behind it. */
  }
};

let openPending = typeof window !== "undefined" && readOpenNote();
let openSince = 0;
let openProgress: AccountOpenProgress = null;
/* Why opening the account is stuck (it failed, or takes long), for its step. */
let openProblem: string | null = null;
let openTimer: ReturnType<typeof setTimeout> | null = null;
let openStall: ReturnType<typeof setTimeout> | null = null;
/* Counts each wait, so a slow finish of an earlier one can't end a later one. */
let openRound = 0;
const openListeners = new Set<() => void>();

/*
 * The app never opens before the account is in: a half-opened device would
 * take saves that belong to nobody. A wait that stops moving for this long
 * (a connection that hangs) says so on the step, which offers Try again and
 * Log out; so does opening that fails or goes offline.
 */
export const accountOpenStallMs = 60_000;
/* The least its step shows once it shows, so it never flashes by. */
export const accountOpenMinMs = 1000;

/* Gets the app's pages ready once the account is in; the app's route names them. */
let prepareApp: (() => Promise<void>) | null = null;

/*
 * Names how the app's pages are read ahead after the account opens, so the
 * step gives way to a finished app and not to its loading states. Returns
 * the way to take it back.
 */
export const prepareAppAfterAccountOpen = (prepare: () => Promise<void>) => {
  prepareApp = prepare;

  return () => {
    if (prepareApp === prepare) prepareApp = null;
  };
};

const tellOpen = () => {
  for (const listener of openListeners) listener();
};

const showOpen = (pending: boolean) => {
  if (openPending === pending) return;

  openPending = pending;

  if (!pending) {
    openProgress = null;
    openProblem = null;

    if (openStall !== null) clearTimeout(openStall);

    openStall = null;
  }

  tellOpen();
};

/* Something moved: the stall guard starts again. */
const watchOpenStall = () => {
  if (openStall !== null) clearTimeout(openStall);

  const round = openRound;

  openStall = setTimeout(() => {
    if (round === openRound) {
      setOpenProblem(
        "This is taking longer than usual. Check your connection, then try again.",
      );
    }
  }, accountOpenStallMs);
};

/* The steps in the order the wait goes through them. */
const openSteps = ["reading", "games", "applying", "pages"] as const;

const stepIndex = (progress: AccountOpenProgress) =>
  progress ? openSteps.indexOf(progress.step) : -1;

const setOpenProblem = (problem: string | null) => {
  if (openProblem === problem) return;

  openProblem = problem;
  tellOpen();
};

const setOpenProgress = (progress: AccountOpenProgress) => {
  if (!openPending) return;

  /* Still moving, whatever it says. */
  watchOpenStall();

  /* A second try starts from reading again: the step never goes back. */
  if (stepIndex(progress) < stepIndex(openProgress)) return;

  openProgress = progress;
  tellOpen();
};

const setOpenPending = (next: boolean) => {
  if (openTimer !== null) clearTimeout(openTimer);

  openTimer = null;

  if (next) {
    openRound += 1;

    if (!openPending) openSince = Date.now();

    writeOpenNote(true);
    showOpen(true);
    watchOpenStall();

    return;
  }

  if (!openPending) return;

  /* An account that opens at once still shows its step for a moment. */
  const shownForMs = Date.now() - openSince;

  if (shownForMs < accountOpenMinMs) {
    openTimer = setTimeout(
      () => setOpenPending(false),
      accountOpenMinMs - shownForMs,
    );

    return;
  }

  /*
   * The account is in: once it is saved on the device (a reload must find
   * it there), read the app's pages again, then show the app.
   */
  const round = openRound;
  const open = () => {
    if (round !== openRound) return;

    writeOpenNote(false);
    showOpen(false);
  };

  void waitForWrites()
    .catch(() => undefined)
    .then(async () => {
      if (!prepareApp) return;

      setOpenProgress({ step: "pages" });
      await prepareApp();
    })
    .catch(() => undefined)
    .finally(open);
};

/*
 * Ends the wait with nothing to wait for: logged out, or the session went.
 * The app opens as it is.
 */
export const endAccountOpen = () => {
  openRound += 1;

  if (openTimer !== null) clearTimeout(openTimer);

  openTimer = null;
  writeOpenNote(false);
  showOpen(false);
};

/* Whether the account is on its way (read once, by the device's start screen). */
export const isAccountOpenPending = () => openPending;

/* Log in calls this: the app waits for the account to open. */
export const expectAccountOpen = () => setOpenPending(true);

/* Whether the app is still waiting for the account. */
export const useAccountOpenPending = () =>
  useSyncExternalStore(
    (listener) => {
      openListeners.add(listener);

      return () => {
        openListeners.delete(listener);
      };
    },
    () => openPending,
    () => false,
  );

/* Why opening the account is stuck, for its step; null while it moves. */
export const useAccountOpenProblem = () =>
  useSyncExternalStore(
    (listener) => {
      openListeners.add(listener);

      return () => {
        openListeners.delete(listener);
      };
    },
    () => openProblem,
    () => null,
  );

/* How far opening the account has got, for its step. */
export const useAccountOpenProgress = () =>
  useSyncExternalStore(
    (listener) => {
      openListeners.add(listener);

      return () => {
        openListeners.delete(listener);
      };
    },
    () => openProgress,
    () => null,
  );

let accountId: string | null = null;
let running: Promise<RunResult> | null = null;
let runAgain = false;
/* Restores or Log out changing the device: no backup starts meanwhile. */
let pauses = 0;
const isPaused = () => pauses > 0;
let timer: number | null = null;
/* The save this runner announced itself (the account's data came in); not yours. */
let ownSave = false;

/* Every screen reads again, without counting as a save of yours. */
const announce = () => {
  ownSave = true;
  notifyLocalSave({ background: true });
  ownSave = false;
};

const accountBackups = (userId: string) =>
  createAccountBackups(getBrowserSupabaseClient(), { userId });

/*
 * How one look at the account ended: everything of this device's is in
 * the account (`done`), look again at once (`again`: another device saved
 * first, or you saved meanwhile), a newer backup waits for your choice
 * (`waiting`), it failed, or the account couldn't be opened after Log in
 * (`unopened`: the step stays and says why).
 */
type RunResult = "again" | "done" | "failed" | "unopened" | "waiting";

const run = async ({
  keep = false,
  loggingOut = false,
}: {
  keep?: boolean;
  /* Log out's last backup: a newer one elsewhere is its own answer, not a dialog too. */
  loggingOut?: boolean;
} = {}): Promise<RunResult> => {
  const userId = accountId;

  if (!userId) return "failed";

  setStatus({ status: "saving" });

  let opening = false;

  try {
    const { db } = await openLocalDb();
    const account = accountBackups(userId);
    const state = await readDeviceAccount(db);

    /*
     * Just logged in: the device's own data goes aside (a copy, beside the
     * database), and the account's newest backup takes its place. Another
     * account's data left here (its session ended without Log out) gives
     * way only when it has nothing that isn't in that account's backups.
     */
    if (state.accountId !== userId) {
      opening = true;
      setOpenProblem(null);

      if (state.accountId && (await hasUnsavedChanges(db))) {
        throw new LocalDbError(
          "This device has changes from another account that aren't backed up yet. Log out, log in to that account so they back up, then log in here again.",
        );
      }

      const [newest = null] = await account.list();

      if (!state.accountId && (await hasOwnData(db))) {
        await setOwnDataAside(db, ownDataStore);
      }

      await takeAccountBackup(db, {
        account,
        accountId: userId,
        backupId: newest?.id ?? null,
        ensureGame: ensureVersionGroupData,
        onProgress: setOpenProgress,
      });
      announce();
      setStatus({ status: "idle" });

      return "done";
    }

    const outcome = await backUpDevice(db, {
      account,
      accountId: userId,
      ensureGame: ensureVersionGroupData,
      keep,
    });

    if (outcome.status === "newer") {
      setStatus(
        loggingOut
          ? { status: "idle" }
          : { device: outcome.device, status: "newer" },
      );

      return "waiting";
    }

    if (outcome.status === "raced") {
      setStatus({ status: "idle" });
      schedule(raceDelayMs);

      return "again";
    }

    if (outcome.status !== "unchanged") announce();

    setStatus({ status: "idle" });

    return "done";
  } catch (error) {
    if (error instanceof MovedOnError) {
      runAgain = true;
      setStatus({ status: "idle" });

      return "again";
    }

    const message =
      error instanceof LocalDbError
        ? error.message
        : opening
          ? "Your account didn't open. Check your connection, then try again."
          : "The account backup didn't go up. It tries again soon.";

    setStatus({ message, status: "failed" });

    if (opening) {
      setOpenProblem(message);

      return "unopened";
    }

    schedule(retryDelayMs);

    return "failed";
  }
};

/*
 * Backs up now, or once more after the one already running. A newer
 * backup waiting for your choice, or a restore under way, holds it.
 */
export const backUpNow = (): Promise<void> => {
  if (!accountId || current.status === "newer") return Promise.resolve();

  if (running || isPaused()) {
    runAgain = true;

    return running?.then(() => undefined) ?? Promise.resolve();
  }

  running = run();

  const done = running
    .then((result) => {
      /*
       * The account is in (backed up, waiting on you, or failing to back
       * up): the app needn't wait any more. Not opened yet, the step stays.
       */
      if (result !== "again" && result !== "unopened") setOpenPending(false);
    })
    .finally(() => {
      running = null;

      if (runAgain && !isPaused()) {
        runAgain = false;
        void backUpNow();
      }
    });

  return done;
};

const schedule = (delayMs: number) => {
  if (timer !== null) window.clearTimeout(timer);

  timer = window.setTimeout(() => {
    timer = null;
    void backUpNow();
  }, delayMs);
};

/* Opens the newer backup's question again after "Later". */
export const askAgain = () => {
  if (current.status === "newer") setStatus({ ...current });
};

/*
 * Runs `change` with backups held: it waits for one under way and starts
 * none until every held change is done, then backs up.
 */
const whilePaused = async <Result>(
  change: () => Promise<Result>,
): Promise<Result> => {
  pauses += 1;

  try {
    if (timer !== null) window.clearTimeout(timer);

    timer = null;
    await running;

    return await change();
  } finally {
    pauses -= 1;

    if (!isPaused()) runAgain = false;
  }
};

export const withBackupsPaused = async <Result>(
  change: () => Promise<Result>,
): Promise<Result> => {
  try {
    return await whilePaused(change);
  } finally {
    void backUpNow();
  }
};

/*
 * "Keep this device's": what this device has goes up as the account's
 * newest backup, over the newer one another device saved.
 */
export const keepThisDevice = async () => {
  if (current.status !== "newer") return;

  setStatus({ status: "idle" });
  await withBackupsPaused(() => run({ keep: true }));
};

/*
 * Puts one of the account's backups in place of this device's data: the
 * newer one another device saved ("Use those"), or any of the last 3 from
 * Settings. An older one then goes up as the account's newest, since you
 * chose it.
 */
export const takeBackupFromAccount = async (backupId: string) => {
  const userId = accountId;

  if (!userId) return;

  await withBackupsPaused(async () => {
    const { db } = await openLocalDb();
    const account = accountBackups(userId);
    const [newest = null] = await account.list();

    await takeAccountBackup(db, {
      account,
      accountId: userId,
      backupId,
      ensureGame: ensureVersionGroupData,
      newestId: newest?.id ?? backupId,
      replaced: newest !== null && newest.id !== backupId,
    });
    setStatus({ status: "idle" });
    announce();
  });
};

/* The account's backups, newest first, for Settings' Restore. */
export const listAccountBackups = async () => {
  if (!accountId) return [];

  return accountBackups(accountId).list();
};

/* Whether this device keeps data of its own aside while you're logged in. */
export const hasOwnDataAside = async () =>
  (await ownDataStore.read().catch(() => null)) !== null;

/*
 * Logged out, with the device's own data still set aside (a log out cut
 * short after the account's data left): brings it back. It does nothing
 * unless the device belongs to no account and is empty.
 */
export const bringOwnDataBackIfLeft = async () => {
  if (accountId || isPaused()) return;

  const { db } = await openLocalDb();
  const back = await bringOwnDataBack(db, ownDataStore, {
    ensureGame: ensureVersionGroupData,
    waitForWrites,
  }).catch(() => false);

  if (back) notifyLocalSave({ background: true });
};

/* A few tries for Log out's last backup: a race or a late save runs it again. */
const logOutTries = 3;

/*
 * How Log out went: the account's data left the device (`cleared`); or
 * nothing changed, because the last backup couldn't go up (`unsaved`:
 * offline or failing) or another device saved a newer backup and this one
 * changed things too (`newer`: choose which to keep first).
 */
export type LogOutResult = "cleared" | "newer" | "unsaved";

/*
 * The account's data leaves the device (only the account's: a device that
 * never finished opening it holds none) and what the device had of its own
 * comes back, then this browser signs out. If the data can't be cleared,
 * it stays logged in and throws: never logged out over an account's data.
 */
const leave = async (userId: string, signOut: () => Promise<void>) => {
  const { db } = await openLocalDb();

  if ((await readDeviceAccount(db)).accountId === userId) {
    await clearAccountData(db);
  }

  accountId = null;
  await signOut();
  /* If it can't come back now, it does the next time the app opens. */
  await bringOwnDataBack(db, ownDataStore, {
    ensureGame: ensureVersionGroupData,
    waitForWrites,
  }).catch(() => false);
  /* Every screen reads again: the account's Plays are gone from this device. */
  announce();
  endAccountOpen();
};

/* Log out's steps, as the account in `userId` even on a page that runs no backups. */
const asAccount = async <Result>(
  userId: string,
  change: () => Promise<Result>,
) => {
  /* On a page that doesn't keep backups running (the Codex), this one is its own. */
  const ownAccount = accountId === null;

  if (ownAccount) accountId = userId;

  try {
    return await whilePaused(change);
  } finally {
    if (ownAccount && accountId === userId) accountId = null;
  }
};

/*
 * Log out: backs up one last time so the account has everything, then
 * leaves (`leave`). If that backup doesn't go up, nothing changes and the
 * answer says why: you choose to stay, or to log out anyway.
 */
export const logOutClean = (
  userId: string,
  signOut: () => Promise<void>,
): Promise<LogOutResult> =>
  asAccount(userId, async () => {
    let result: RunResult = "again";

    for (let tries = 0; result === "again" && tries < logOutTries; tries++) {
      result = await run({ loggingOut: true });
    }

    if (result === "waiting") return "newer";
    if (result !== "done") return "unsaved";

    await leave(userId, signOut);

    return "cleared";
  });

/*
 * "Log out anyway": leaves without the last backup. What changed since the
 * account's newest backup is lost.
 */
export const logOutAnyway = (userId: string, signOut: () => Promise<void>) =>
  asAccount(userId, () => leave(userId, signOut));

/*
 * Starts backing up for the signed-in account (opening it first, if this
 * device doesn't hold it yet); returns the way to stop (signing out,
 * leaving the app).
 */
export const startAccountBackups = (userId: string) => {
  /* A wait carried over a reload: it gets its guard and its least time again. */
  if (openPending && openStall === null) {
    openSince = Date.now();
    watchOpenStall();
  }

  accountId = userId;
  setStatus({ status: "idle" });

  const onFront = () => {
    if (document.visibilityState === "visible") void backUpNow();
  };
  const stopSaves = subscribeLocalSaves(() => {
    if (!ownSave) schedule(saveDelayMs);
  });

  document.addEventListener("visibilitychange", onFront);
  window.addEventListener("online", onFront);
  void backUpNow();

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
