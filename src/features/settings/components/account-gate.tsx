"use client";

import { useEffect, useState, type ReactNode } from "react";

import { AccountBackupRunner } from "@/features/settings/components/account-backup-runner";
import { useAuthSession } from "@/platform/local-db/account-session";
import {
  backUpNow,
  endAccountOpen,
  expectAccountOpen,
  hasOpenedAccount,
  prepareAppAfterAccountOpen,
  useAccountOpenPending,
  useAccountOpenProblem,
  useAccountOpenProgress,
  type AccountOpenProgress,
} from "@/platform/local-db/account-runner";
import {
  getStartupSteps,
  getStartupTitle,
  startupStepLabels,
} from "@/platform/local-db/startup-steps";
import { LoadingSteps } from "@/shared/components/brand/loading-steps";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type AccountGateProps = {
  children: ReactNode;
  /*
   * Log out from the step, when the account can't open: the device's own
   * data comes back and Log in opens (the route knows how to get there).
   */
  onLogOut: () => Promise<void>;
  /*
   * Reads the app's pages ahead once the account is in, so the step gives
   * way to a finished app, never to its loading states.
   */
  prepare?: () => Promise<void>;
};

/* Alone on the wall, like the start screen: no bars until the app shows. */
const GateFrame = ({ children }: { children: ReactNode }) => (
  <div className="flex min-h-svh flex-col items-center justify-center px-(--page-gutter) py-10">
    {children}
  </div>
);

/* Where opening the account is on the app's one loading bar. */
const describeProgress = (progress: AccountOpenProgress) => {
  switch (progress?.step) {
    case "games":
      return {
        detail: `${progress.done} of ${progress.total} ${progress.total === 1 ? "game" : "games"}`,
        fraction: progress.total ? progress.done / progress.total : null,
        key: "games" as const,
      };
    case "applying":
      return { detail: null, fraction: null, key: "applying" as const };
    case "pages":
      return { detail: null, fraction: null, key: "pages" as const };
    default:
      return { detail: null, fraction: null, key: "account" as const };
  }
};

/*
 * The wait after logging in: the next steps of the app's one loading bar,
 * after the device opened on the start screen (same title, same bar, same
 * place), through the account's newest backup to the pages being read.
 */
const OpenStep = ({ onLogOut }: { onLogOut: () => Promise<void> }) => {
  const { detail, fraction, key } = describeProgress(useAccountOpenProgress());
  const problem = useAccountOpenProblem();
  const [leaving, setLeaving] = useState(false);
  const steps = getStartupSteps(true);

  const logOut = async () => {
    setLeaving(true);

    try {
      await onLogOut();
    } finally {
      setLeaving(false);
    }
  };

  return (
    <div className="flex flex-col items-center gap-4">
      <LoadingSteps
        title={getStartupTitle(true)}
        steps={steps.map((stepKey) => startupStepLabels[stepKey])}
        current={steps.indexOf(key)}
        fraction={fraction}
        detail={detail}
      />
      {/*
       * Stuck: the app stays shut (a half-opened device would take saves
       * that belong to nobody), so the step says why and offers the ways on.
       */}
      {problem ? (
        <div className="flex max-w-sm flex-col items-center gap-3 text-center">
          <p role="alert" className="text-danger copy-body">
            {problem}
          </p>
          <div className="flex gap-2">
            <Button
              type="button"
              variant="secondary"
              disabled={leaving}
              aria-busy={leaving}
              onClick={() => void logOut()}
            >
              {leaving ? <Spinner data-icon="inline-start" /> : null}
              Log out
            </Button>
            <Button
              type="button"
              disabled={leaving}
              onClick={() => void backUpNow()}
            >
              Try again
            </Button>
          </div>
        </div>
      ) : null}
    </div>
  );
};

/*
 * The step between logging in and the app, standing where the app would:
 * nothing of the app shows until your account is on this device. Right
 * after Log in it waits for the account's newest backup (every game its
 * Plays need, however many) and for the app's pages to be read again
 * (`prepare`), so the app opens finished, saying how far it has got. The
 * app never opens before the account is in: a wait that fails or stops
 * moving for a minute says so, with Try again and Log out. It asks
 * nothing: what the device had of its own waits aside until you log out.
 * It also keeps account backups running under the app
 * (`AccountBackupRunner`).
 */
/*
 * The account this visit already checked: the gate mounting again (back
 * from the front page) shows the app at once, with no check in between.
 */
let checkedThisVisit: string | null = null;

export const AccountGate = ({
  children,
  onLogOut,
  prepare,
}: AccountGateProps) => {
  useEffect(
    () => (prepare ? prepareAppAfterAccountOpen(prepare) : undefined),
    [prepare],
  );

  const session = useAuthSession();
  const userId = session?.userId ?? null;
  /* The account this device was checked for: saved on it, or opened again. */
  const [checked, setChecked] = useState<string | null>(() => checkedThisVisit);

  /* Logged out (here or elsewhere): a wait left from before has nothing to wait for. */
  useEffect(() => {
    if (session !== null) return;

    checkedThisVisit = null;
    endAccountOpen();
  }, [session]);

  /*
   * Logged in: is the account saved on this device? If not (opening it
   * never finished, or a reload came before the browser had saved it), the
   * loading bar runs again before the app shows.
   */
  useEffect(() => {
    if (!userId) return;

    let current = true;

    void hasOpenedAccount(userId)
      .catch(() => true)
      .then((opened) => {
        if (!current) return;

        if (!opened) expectAccountOpen();

        checkedThisVisit = userId;
        setChecked(userId);
      });

    return () => {
      current = false;
    };
  }, [userId]);
  const openPending = useAccountOpenPending();
  /*
   * While the browser's session is still being read right after Log in
   * (`undefined`), the wait already stands, so nothing of the app flashes
   * before it; only a session read as logged out lets the app through.
   */
  const step =
    session === null
      ? null
      : openPending
        ? "open"
        : /*
           * Not known yet whether you're logged in, or not yet checked:
           * the app waits a blink rather than showing and then hiding
           * again (which would lose what it was opening, such as New Play).
           */
          session === undefined || checked !== session.userId
          ? "check"
          : null;

  return (
    <>
      <AccountBackupRunner />
      {step === "open" ? (
        <GateFrame>
          <OpenStep onLogOut={onLogOut} />
        </GateFrame>
      ) : step === "check" ? (
        /* A blink while it checks: the start screen's last step, unchanged. */
        <GateFrame>
          <LoadingSteps
            title={getStartupTitle(false)}
            steps={getStartupSteps(false).map(
              (stepKey) => startupStepLabels[stepKey],
            )}
            current={getStartupSteps(false).indexOf("pages")}
          />
        </GateFrame>
      ) : (
        children
      )}
    </>
  );
};
