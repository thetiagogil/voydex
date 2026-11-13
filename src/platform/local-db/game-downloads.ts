"use client";

import { useSyncExternalStore } from "react";

import {
  downloadGameDataFileWithin,
  fetchGameDataVersions,
  findGameData,
  installGame,
  installGameLearnsets,
  readInstalledGameData,
  type GameDataProgress,
  type GameDataVersions,
} from "@/platform/local-db/game-data";
import {
  backgroundDownloadKey,
  readBackgroundDownloads,
  runBackgroundDownloads,
  type BackgroundDownload,
} from "@/platform/local-db/game-data-background";
import { subscribeLocalSaves } from "@/platform/local-db/local-db-context";
import {
  LocalDbError,
  runQuery,
  type LocalDb,
} from "@/platform/local-db/local-db";
import {
  openLocalDb,
  refreshGameDataVersions,
} from "@/platform/local-db/open-local-db";
import { isStorageFullError } from "@/platform/local-db/prepare-device";

/*
 * A game's data on the device, downloaded the first time something needs
 * it: a Play's first start, the Team Planner opening on a game. Each game
 * file is named after its game's version group ("swsh") and holds its
 * expansions. While one downloads, `useGameDownload` says how far it is,
 * so whichever screen waits can show a bar. The games the device should
 * have before anyone waits download in the background
 * (`watchBackgroundDownloads`), always giving way to these.
 */

export type GameDownload = { name: string; progress: GameDataProgress };

let current: GameDownload | null = null;
/* Downloads someone waits for, running now. */
let waitedFor = 0;
const listeners = new Set<() => void>();

const notify = () => {
  for (const listener of listeners) listener();
};

const setCurrent = (next: GameDownload | null) => {
  current = next;
  notify();
};

const subscribe = (listener: () => void) => {
  listeners.add(listener);

  return () => {
    listeners.delete(listener);
  };
};

/* The download running now, or null. */
export const useGameDownload = () =>
  useSyncExternalStore(
    subscribe,
    () => current,
    () => null,
  );

/*
 * Only the move pickers need learnsets, so they follow the game without
 * holding up the screen; a failure retries later. The background counts
 * them as waited for, so it doesn't fetch the same file beside them.
 */
const installLearnsetsLater = (
  db: LocalDb,
  slug: string,
  versions: GameDataVersions,
) => {
  waitedFor += 1;
  void installGameLearnsets(db, slug, { versions })
    .catch(() => undefined)
    .finally(() => {
      waitedFor -= 1;
      notify();
    });
};

/*
 * Makes sure a version group's game is on the device, from the latest game
 * data release, downloading it (and the base file) when it isn't, then its
 * learnsets in the background. A device on an older release takes the new
 * one whole first. Offline, a game already on the device still opens.
 */
export const ensureVersionGroupData = async (versionGroupId: number) => {
  waitedFor += 1;

  try {
    await ensureVersionGroup(versionGroupId);
  } finally {
    waitedFor -= 1;
    notify();
  }
};

type RootGame = { id: number; name: string; slug: string };

/* The game a version group's data comes in: an expansion's is its game's. */
const readRootGame = async (db: LocalDb, versionGroupId: number) => {
  const [root] = await runQuery<RootGame>(
    db,
    `SELECT COALESCE(parent.id, groups.id) AS id,
       COALESCE(parent.name, groups.name) AS name,
       COALESCE(parent.slug, groups.slug) AS slug
     FROM reference.version_groups groups
     LEFT JOIN reference.version_groups parent ON parent.id = groups.parent_version_group_id
     WHERE groups.id = $1`,
    [versionGroupId],
  );

  if (!root) throw new LocalDbError("That game isn't one Voydex knows.");

  return root;
};

/*
 * The game's file when it is on the device from the release this visit
 * knows (nothing to fetch), else null.
 */
const findCurrentGameData = (
  known: GameDataVersions | null,
  installed: Map<string, string>,
  root: RootGame,
) => {
  const knownFile = known && findGameData(known, root.id);

  return known &&
    knownFile &&
    [known.base, knownFile.data].every(
      (entry) => installed.get(entry.name) === entry.hash,
    )
    ? knownFile
    : null;
};

const ensureVersionGroup = async (versionGroupId: number) => {
  const { db, versions: known } = await openLocalDb();
  const root = await readRootGame(db, versionGroupId);
  const installed = await readInstalledGameData(db);
  const current = findCurrentGameData(known, installed, root);

  if (known && current) {
    installLearnsetsLater(db, current.slug, known);

    return;
  }

  /* This visit may have started before a release: ask for the list again. */
  const versions = await refreshGameDataVersions();

  if (!versions) {
    if (installed.has(root.slug)) return;

    throw new LocalDbError(
      "You're offline. Connect once to download this game.",
    );
  }

  const file = findGameData(versions, root.id);

  if (!file) throw new LocalDbError("Voydex has no data for this game yet.");

  try {
    await installGame(db, file.slug, {
      onProgress: (progress) => setCurrent({ name: root.name, progress }),
      versions,
    });
    installLearnsetsLater(db, file.slug, versions);
  } catch (error) {
    /*
     * A game already on the device keeps the release it has when the new
     * one can't come in (a dropped connection, a refused release).
     */
    if (installed.has(root.slug) && !isStorageFullError(error)) return;

    throw error;
  } finally {
    setCurrent(null);
  }
};

/* The same, for a game by its slug ("sword"). */
export const ensureGameData = async (gameSlug: string) => {
  const { db } = await openLocalDb();
  const [game] = await runQuery<{ version_group_id: number }>(
    db,
    "SELECT version_group_id FROM reference.games WHERE slug = $1",
    [gameSlug],
  );

  if (!game) throw new LocalDbError("That game isn't one Voydex knows.");

  await ensureVersionGroupData(game.version_group_id);
};

/* Resolves once no download someone waits for is running. */
const waitForWaitedDownloads = () =>
  new Promise<void>((resolve) => {
    const check = () => {
      if (waitedFor > 0) return;

      listeners.delete(check);
      resolve();
    };

    listeners.add(check);
    check();
  });

const backgroundDelayMs = 3000;
/* A background file that takes longer is given up, and tried next visit. */
const backgroundTimeoutMs = 120_000;
const backgroundLock = "voydex-background-game-downloads";

let backgroundTimer: ReturnType<typeof setTimeout> | undefined;
let backgroundRun: Promise<void> | null = null;
let runAgain = false;
let watchers = 0;
/*
 * Downloads that failed this visit, left out until the connection comes
 * back or the app opens anew, so a file that keeps failing isn't fetched
 * again after every save. A full device stops them all.
 */
const failedThisVisit = new Set<string>();
let deviceFull = false;

const isOnline = () => navigator.onLine;

/* The browser's data saver (Android Chrome); others don't say. */
const savesData = () =>
  (navigator as Navigator & { connection?: { saveData?: boolean } }).connection
    ?.saveData === true;

const notFailed = (download: BackgroundDownload) =>
  !failedThisVisit.has(backgroundDownloadKey(download));

/*
 * Asks for the version list only when something is missing by the one this
 * visit knows, so a run after each save costs a few device reads. The list
 * stays this run's own: a newer release waits for the update on opening or
 * a game download, never one the background brings forward.
 */
const runBackground = async () => {
  if (!isOnline() || savesData() || deviceFull) return;

  const { db, versions: known } = await openLocalDb();

  if (known && !(await readBackgroundDownloads(db, known)).some(notFailed)) {
    return;
  }

  const versions = await fetchGameDataVersions().catch(() => null);

  if (!versions) return;

  const result = await runBackgroundDownloads(db, {
    beforeEach: waitForWaitedDownloads,
    download: downloadGameDataFileWithin(backgroundTimeoutMs),
    shouldStop: () => !isOnline(),
    skip: (download) => !notFailed(download),
    versions,
  });

  for (const { download } of result.failed) {
    failedThisVisit.add(backgroundDownloadKey(download));
  }

  if (result.status === "storage-full") deviceFull = true;
};

/*
 * Every tab shares the device, so tabs take turns; a tab whose turn comes
 * after another's run finds little left to do.
 */
const runInTurn = async () => {
  const locks = navigator.locks as LockManager | undefined;

  if (!locks) return runBackground();

  await locks.request(backgroundLock, runBackground);
};

const startBackgroundRun = () => {
  if (backgroundRun) {
    runAgain = true;
    return;
  }

  backgroundRun = runInTurn()
    /* Quiet: whatever failed is tried again later. */
    .catch(() => undefined)
    .finally(() => {
      backgroundRun = null;

      if (runAgain && watchers > 0) {
        runAgain = false;
        scheduleBackgroundDownloads();
      }
    });
};

/*
 * Downloads the games the device should have in the background, a few
 * seconds from now so the screen on the way draws first. Called again
 * before then, it waits from the new call; during a run, another run
 * follows it. Nothing runs offline or on data saver.
 */
const scheduleBackgroundDownloads = () => {
  clearTimeout(backgroundTimer);
  backgroundTimer = setTimeout(startBackgroundRun, backgroundDelayMs);
};

/* Back online, what failed is worth another try. */
const onOnline = () => {
  failedThisVisit.clear();
  scheduleBackgroundDownloads();
};

/*
 * For the device gate, once the database is open: a run now, after each
 * save (a new Play or Plan) and when the connection comes back. Returns
 * the way to stop.
 */
export const watchBackgroundDownloads = () => {
  watchers += 1;
  scheduleBackgroundDownloads();

  const stopSaves = subscribeLocalSaves(scheduleBackgroundDownloads);

  window.addEventListener("online", onOnline);

  return () => {
    watchers -= 1;
    stopSaves();
    window.removeEventListener("online", onOnline);

    if (watchers === 0) {
      runAgain = false;
      clearTimeout(backgroundTimer);
    }
  };
};
