"use client";

import { Suspense, useEffect, type ReactNode } from "react";

import { DeviceProblemState } from "@/features/system/components/device-problem-state";
import { DeviceStartState } from "@/features/system/components/device-start-state";
import { watchBackgroundDownloads } from "@/platform/local-db/game-downloads";
import { listenForInstallPrompt } from "@/platform/local-db/install-prompt";
import {
  LocalDbProvider,
  useLocalDb,
} from "@/platform/local-db/local-db-context";
import { subscribeForgottenPageReads } from "@/platform/local-db/page-reads";
import {
  useOpenLocalDb,
  type PreparePages,
} from "@/platform/local-db/use-open-local-db";

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
 *
 * Once open, the games the device should have download in the background.
 *
 * `prepare` names the pages to get ready while the start screen shows (the
 * app's tabs), so changing tabs never waits on the device. They are read
 * once when the database opens and again whenever the device's data
 * changes (a save, a sync, a game added), in the background.
 */
export const DeviceGate = ({
  children,
  prepare,
}: {
  children: ReactNode;
  prepare?: PreparePages;
}) => {
  const { retry, startFresh, state } = useOpenLocalDb({ prepare });

  const open = state.status === "open";

  useEffect(listenForInstallPrompt, []);
  useEffect(() => (open ? watchBackgroundDownloads() : undefined), [open]);

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
          {prepare ? <KeepPagesReady prepare={prepare} /> : null}
        </LocalDbProvider>
      )}
    </Suspense>
  );
};

/*
 * After the device's data changes (or a kept page is let go, as opening a
 * Play does to Home), gets the pages ready again once things settle, so the
 * next tab shows the new data at once. One round at a time:
 * a change during a round starts another after it.
 */
const settleMs = 300;

const KeepPagesReady = ({ prepare }: { prepare: PreparePages }) => {
  const { db } = useLocalDb();

  useEffect(() => {
    let timer: ReturnType<typeof setTimeout> | undefined;
    let running = false;
    let again = false;
    let stopped = false;

    const round = async () => {
      if (running) {
        again = true;
        return;
      }

      running = true;

      try {
        do {
          again = false;
          await prepare(db).catch(() => undefined);
        } while (again && !stopped);
      } finally {
        running = false;
      }
    };

    const stop = subscribeForgottenPageReads(() => {
      clearTimeout(timer);
      timer = setTimeout(() => void round(), settleMs);
    });

    return () => {
      stopped = true;
      clearTimeout(timer);
      stop();
    };
  }, [db, prepare]);

  return null;
};
