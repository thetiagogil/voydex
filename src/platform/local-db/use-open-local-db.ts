"use client";

import { startTransition, useCallback, useEffect, useState } from "react";

import type { GameDataVersions } from "@/platform/local-db/game-data";
import type { LocalDb } from "@/platform/local-db/local-db";
import {
  openLocalDb,
  readOpenedLocalDb,
  startFreshLocalDb,
} from "@/platform/local-db/open-local-db";
import {
  DeviceProblemError,
  type DeviceProblem,
  type PrepareStep,
} from "@/platform/local-db/prepare-device";

export type LocalDbOpenState =
  | { status: "opening"; step: PrepareStep | null }
  | { db: LocalDb; status: "open"; versions: GameDataVersions | null }
  | { message: string; problem: DeviceProblem | "failed"; status: "failed" };

const toFailedState = (error: unknown): LocalDbOpenState => ({
  message:
    error instanceof Error && error.message
      ? error.message
      : "Voydex couldn't open the data on this device.",
  problem: error instanceof DeviceProblemError ? error.problem : "failed",
  status: "failed",
});

/*
 * Shows the open database as a transition, so the start screen stays until
 * the page under the gate has its data (`useLocalPageRead`).
 */
const showOpen = (
  setState: (state: LocalDbOpenState) => void,
  state: LocalDbOpenState,
) => startTransition(() => setState(state));

/* Pages the app gets ready before it shows (see `DeviceGate`). */
export type PreparePages = (db: LocalDb) => Promise<void>;

/*
 * The longest the start screen waits for the pages getting ready; on a slow
 * device the rest carry on in the background.
 */
export const preparePagesLimitMs = 4000;

/* Gets the pages ready, for at most the limit; never fails. */
const getReady = async (db: LocalDb, prepare: PreparePages | undefined) => {
  if (!prepare) return;

  let timer: ReturnType<typeof setTimeout> | undefined;

  await Promise.race([
    prepare(db).catch(() => undefined),
    new Promise<void>((resolve) => {
      timer = setTimeout(resolve, preparePagesLimitMs);
    }),
  ]);
  clearTimeout(timer);
};

/*
 * The least the start screen shows once it shows, so it never flashes by on
 * a device that opens quickly.
 */
export const startScreenMinMs = 1000;

/* How much longer the start screen stays, having shown for `shownForMs`. */
export const getStartScreenWaitMs = (shownForMs: number) =>
  Math.max(0, startScreenMinMs - shownForMs);

const wait = (ms: number) =>
  ms > 0
    ? new Promise<void>((resolve) => {
        setTimeout(resolve, ms);
      })
    : Promise.resolve();

/* The pages each open database already has ready, by what got them ready. */
const readyPages = new WeakMap<LocalDb, Set<PreparePages>>();

const markPagesReady = (db: LocalDb, prepare: PreparePages | undefined) => {
  if (!prepare) return;

  const ready = readyPages.get(db) ?? new Set<PreparePages>();

  ready.add(prepare);
  readyPages.set(db, ready);
};

/*
 * The open state when this visit already opened the database and got these
 * pages ready: a gate mounting again (back from the front page, or from Log
 * in) starts on the app, with no start screen in between. Null otherwise.
 */
const readOpenNow = (
  prepare: PreparePages | undefined,
): LocalDbOpenState | null => {
  const opened = readOpenedLocalDb();

  return opened && (!prepare || readyPages.get(opened.db)?.has(prepare))
    ? { db: opened.db, status: "open", versions: opened.versions }
    : null;
};

/*
 * Opens the device database (once per visit) for the screens under a gate,
 * with the step it is on for the start screen, then gets the pages
 * `prepare` names ready before it says the database is open. A start
 * screen that shows stays at least `startScreenMinMs`; a gate that mounts
 * again in the same visit shows no start screen at all. `retry` tries
 * again; `startFresh` deletes the device's data first (the caller confirms).
 */
export const useOpenLocalDb = ({
  prepare,
}: { prepare?: PreparePages } = {}) => {
  const [state, setState] = useState<LocalDbOpenState>(
    () => readOpenNow(prepare) ?? { status: "opening", step: null },
  );

  const run = useCallback(
    (open: typeof openLocalDb) => {
      setState({ status: "opening", step: null });

      return open((step) => setState({ status: "opening", step })).then(
        async ({ db, versions }) => {
          await getReady(db, prepare);
          markPagesReady(db, prepare);
          showOpen(setState, { db, status: "open", versions });
        },
        (error: unknown) => setState(toFailedState(error)),
      );
    },
    [prepare],
  );

  useEffect(() => {
    /* Already open and ready in this visit: the app is showing. */
    if (readOpenNow(prepare)) return;

    let current = true;
    const shownAt = performance.now();

    openLocalDb((step) => {
      if (current) setState({ status: "opening", step });
    }).then(
      async ({ db, versions }) => {
        await getReady(db, prepare);
        markPagesReady(db, prepare);
        await wait(getStartScreenWaitMs(performance.now() - shownAt));

        if (current) showOpen(setState, { db, status: "open", versions });
      },
      (error: unknown) => {
        if (current) setState(toFailedState(error));
      },
    );

    return () => {
      current = false;
    };
  }, [prepare]);

  return {
    retry: () => run(openLocalDb),
    startFresh: () => run(startFreshLocalDb),
    state,
  };
};
