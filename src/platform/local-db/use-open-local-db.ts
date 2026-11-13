"use client";

import { startTransition, useCallback, useEffect, useState } from "react";

import type { GameDataVersions } from "@/platform/local-db/game-data";
import type { LocalDb } from "@/platform/local-db/local-db";
import {
  openLocalDb,
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
 * Opens the device database (once per visit) for the screens under a gate,
 * with the step it is on for the start screen, then gets the pages
 * `prepare` names ready before it says the database is open. `retry` tries
 * again; `startFresh` deletes the device's data first (the caller confirms).
 */
export const useOpenLocalDb = ({
  prepare,
}: { prepare?: PreparePages } = {}) => {
  const [state, setState] = useState<LocalDbOpenState>({
    status: "opening",
    step: null,
  });

  const run = useCallback(
    (open: typeof openLocalDb) => {
      setState({ status: "opening", step: null });

      return open((step) => setState({ status: "opening", step })).then(
        async ({ db, versions }) => {
          await getReady(db, prepare);
          showOpen(setState, { db, status: "open", versions });
        },
        (error: unknown) => setState(toFailedState(error)),
      );
    },
    [prepare],
  );

  useEffect(() => {
    let current = true;

    openLocalDb((step) => {
      if (current) setState({ status: "opening", step });
    }).then(
      async ({ db, versions }) => {
        await getReady(db, prepare);

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
