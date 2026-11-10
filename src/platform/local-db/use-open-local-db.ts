"use client";

import { useCallback, useEffect, useState } from "react";

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
 * Opens the device database (once per visit) for the screens under a gate, with the step
 * it is on for the start screen. `retry` tries again; `startFresh` deletes
 * the device's data first (the caller confirms).
 */
export const useOpenLocalDb = () => {
  const [state, setState] = useState<LocalDbOpenState>({
    status: "opening",
    step: null,
  });

  const run = useCallback((open: typeof openLocalDb) => {
    setState({ status: "opening", step: null });

    return open((step) => setState({ status: "opening", step })).then(
      ({ db, versions }) => setState({ db, status: "open", versions }),
      (error: unknown) => setState(toFailedState(error)),
    );
  }, []);

  useEffect(() => {
    let current = true;

    openLocalDb((step) => {
      if (current) setState({ status: "opening", step });
    }).then(
      ({ db, versions }) => {
        if (current) setState({ db, status: "open", versions });
      },
      (error: unknown) => {
        if (current) setState(toFailedState(error));
      },
    );

    return () => {
      current = false;
    };
  }, []);

  return {
    retry: () => run(openLocalDb),
    startFresh: () => run(startFreshLocalDb),
    state,
  };
};
