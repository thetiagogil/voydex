"use client";

import { Suspense, useEffect, useState, type ReactNode } from "react";

import { DeviceProblemState } from "@/features/system/components/device-problem-state";
import { DeviceStartState } from "@/features/system/components/device-start-state";
import { OldGameDataNotice } from "@/features/system/components/old-game-data-notice";
import { isAccountOpenPending } from "@/platform/local-db/account-runner";
import { watchBackgroundDownloads } from "@/platform/local-db/game-downloads";
import { listenForInstallPrompt } from "@/platform/local-db/install-prompt";
import {
  LocalDbProvider,
  useLocalDb,
} from "@/platform/local-db/local-db-context";
import { keepPagesReady } from "@/platform/local-db/page-reads";
import {
  useOpenLocalDb,
  type PreparePages,
} from "@/platform/local-db/use-open-local-db";

/*
 * The start screen and a device problem stand alone on the wall: the app's
 * bars and its `main` come with the app, once the device is ready.
 */
const StartFrame = ({ children }: { children: ReactNode }) => (
  <div className="flex min-h-svh flex-col items-center justify-center px-(--page-gutter) py-10">
    {children}
  </div>
);

/*
 * Opens the device database once per visit and shows the app under it when
 * it's ready: the start screen until then, or why it couldn't open. The app's
 * frame and bars sit inside it, so nothing of the app shows before it works.
 * The server renders the start screen too, so a page never flashes blank.
 *
 * The start screen stays while the database opens and `prepare` gets the
 * tabs ready (at most a few seconds); a page still reading the device then
 * shows its own loading state (each folder's `loading.tsx`). This fallback
 * shows only if something else waits outside a transition.
 *
 * Once open, the games the device should have download in the background,
 * and a device still on older game data (an update that didn't go in) says
 * so, with a way to try again (`OldGameDataNotice`).
 *
 * `prepare` gets the pages ready (the app's tabs): the start screen waits
 * until it settles (Mainline settles once Home is ready and reads the
 * other tabs behind it), so changing tabs rarely waits on the device. It
 * runs once when the database opens and again whenever the device's data
 * changes (a save, an account backup coming in, a game added), in the background.
 */
export const DeviceGate = ({
  children,
  prepare,
}: {
  children: ReactNode;
  prepare?: PreparePages;
}) => {
  /*
   * Right after Log in the account opens next and changes what the
   * pages show: they are read once, after it, as the last step of the same
   * bar, not here too.
   */
  const [withAccount] = useState(isAccountOpenPending);
  const { retry, startFresh, state } = useOpenLocalDb({
    prepare,
    readPagesLater: withAccount,
  });

  const opened = state.status === "open";

  useEffect(listenForInstallPrompt, []);
  useEffect(() => (opened ? watchBackgroundDownloads() : undefined), [opened]);

  return (
    <Suspense
      fallback={
        <StartFrame>
          <DeviceStartState step={null} withAccount={withAccount} />
        </StartFrame>
      }
    >
      {state.status === "opening" ? (
        <StartFrame>
          <DeviceStartState
            pages={state.pages}
            step={state.step}
            withAccount={withAccount}
          />
        </StartFrame>
      ) : state.status === "failed" ? (
        <StartFrame>
          <DeviceProblemState
            problem={state.problem}
            onRetry={() => void retry()}
            onStartFresh={() => void startFresh()}
          />
        </StartFrame>
      ) : (
        <LocalDbProvider db={state.db} versions={state.versions}>
          {children}
          <OldGameDataNotice />
          {prepare ? <KeepPagesReady prepare={prepare} /> : null}
        </LocalDbProvider>
      )}
    </Suspense>
  );
};

/*
 * After the device's data changes (or a kept page is let go, as opening a
 * Play does to Home), gets the pages ready again once things settle, so the
 * next tab shows the new data at once.
 */
const KeepPagesReady = ({ prepare }: { prepare: PreparePages }) => {
  const { db } = useLocalDb();

  /* Once at first too: a change while the start screen showed cut it short. */
  useEffect(
    () => keepPagesReady(() => prepare(db), { immediately: true }),
    [db, prepare],
  );

  return null;
};
