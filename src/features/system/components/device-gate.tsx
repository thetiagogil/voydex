"use client";

import { Suspense, useEffect, type ReactNode } from "react";

import { DeviceProblemState } from "@/features/system/components/device-problem-state";
import { DeviceStartState } from "@/features/system/components/device-start-state";
import { listenForInstallPrompt } from "@/platform/local-db/install-prompt";
import { LocalDbProvider } from "@/platform/local-db/local-db-context";
import { useOpenLocalDb } from "@/platform/local-db/use-open-local-db";

/*
 * Opens the device database once per visit and shows the screens under it
 * when it's ready: the start screen until then, or why it couldn't open.
 * The server renders the start screen too, so a page never flashes blank.
 *
 * The app's one loading boundary: a page waits on its device read
 * (`useLocalPageRead`), and since opening the database, a link and a save
 * are all transitions, the start screen or the page you came from stays
 * until the next page is ready. Its fallback shows only if something else
 * waits outside a transition.
 */
export const DeviceGate = ({ children }: { children: ReactNode }) => {
  const { retry, startFresh, state } = useOpenLocalDb();

  useEffect(listenForInstallPrompt, []);

  return (
    <Suspense fallback={<DeviceStartState step={null} />}>
      {state.status === "opening" ? (
        <DeviceStartState step={state.step} />
      ) : state.status === "failed" ? (
        <DeviceProblemState
          problem={state.problem}
          onRetry={() => void retry()}
          onStartFresh={() => void startFresh()}
        />
      ) : (
        <LocalDbProvider db={state.db} versions={state.versions}>
          {children}
        </LocalDbProvider>
      )}
    </Suspense>
  );
};
