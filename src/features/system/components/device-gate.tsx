"use client";

import { useEffect, type ReactNode } from "react";

import { DeviceProblemState } from "@/features/system/components/device-problem-state";
import { DeviceStartState } from "@/features/system/components/device-start-state";
import { listenForInstallPrompt } from "@/platform/local-db/install-prompt";
import { LocalDbProvider } from "@/platform/local-db/local-db-context";
import { useOpenLocalDb } from "@/platform/local-db/use-open-local-db";

/*
 * Opens the device database once per visit and shows the screens under it
 * when it's ready: the start screen until then, or why it couldn't open.
 * The server renders the start screen too, so a page never flashes blank.
 */
export const DeviceGate = ({ children }: { children: ReactNode }) => {
  const { retry, startFresh, state } = useOpenLocalDb();

  useEffect(listenForInstallPrompt, []);

  if (state.status === "opening") {
    return <DeviceStartState step={state.step} />;
  }

  if (state.status === "failed") {
    return (
      <DeviceProblemState
        problem={state.problem}
        onRetry={() => void retry()}
        onStartFresh={() => void startFresh()}
      />
    );
  }

  return (
    <LocalDbProvider db={state.db} versions={state.versions}>
      {children}
    </LocalDbProvider>
  );
};
