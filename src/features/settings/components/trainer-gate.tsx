"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import { TrainerSetup } from "@/features/settings/components/trainer-setup";
import {
  readTrainerSetup,
  type TrainerSetup as TrainerSetupData,
} from "@/features/settings/client/trainer-setup-query";
import { useAuthSession } from "@/platform/local-db/account-session";
import { subscribeLocalSaves } from "@/platform/local-db/local-db-context";
import {
  getStartupSteps,
  getStartupTitle,
  startupStepLabels,
} from "@/platform/local-db/startup-steps";
import { LoadingSteps } from "@/shared/components/brand/loading-steps";

/* Alone on the wall, like the start screen: no bars until the app shows. */
const GateFrame = ({ children }: { children: ReactNode }) => (
  <div className="flex min-h-svh flex-col items-center justify-center px-(--page-gutter) py-10">
    {children}
  </div>
);

/*
 * Whose profile was last found complete: "device" is the device's own
 * profile, an id an account's. Kept for this visit and in the browser, so
 * the gate mounting again (back from the front page, after the account
 * step, a reload) shows the app at once and checks behind it.
 */
const readyKey = "voydex-trainer-ready";
let completeThisVisit: string | null = null;

const readReady = () => {
  if (completeThisVisit) return completeThisVisit;

  try {
    return window.localStorage.getItem(readyKey);
  } catch {
    /* Storage refused (a private window): the gate checks first. */
    return null;
  }
};

const rememberReady = (owner: string | null) => {
  completeThisVisit = owner;

  try {
    if (owner) window.localStorage.setItem(readyKey, owner);
    else window.localStorage.removeItem(readyKey);
  } catch {
    /* Storage refused: the next visit checks first. */
  }
};

/*
 * Every trainer has a display name, a trainer name and an icon. Before the
 * app opens, a profile missing any of them (a new device, an account with
 * no backup yet, an older backup) shows the trainer step instead, and the
 * app waits until it is saved. It looks again after every change of the
 * device's data, so a backup or a file that brings an incomplete profile
 * shows the step too. A profile found complete before opens the app at
 * once and is checked behind it. A profile that can't be read never holds the app:
 * the app's own pages say what went wrong.
 */
export const TrainerGate = ({
  children,
  prepare,
}: {
  children: ReactNode;
  /*
   * Reads the app's pages again once the step is saved, so it gives way to
   * a finished app, never to its loading states.
   */
  prepare?: () => Promise<void>;
}) => {
  const owner = useAuthSession()?.userId ?? "device";
  /* Saved and getting the pages ready: the step stays until they are. */
  const finishing = useRef(false);
  const [setup, setSetup] = useState<TrainerSetupData | null>(null);
  const [checked, setChecked] = useState<{
    complete: boolean;
    owner: string;
  } | null>(() => {
    const ready = readReady();

    return ready ? { complete: true, owner: ready } : null;
  });

  useEffect(() => {
    let current = true;
    const check = () => {
      readTrainerSetup().then(
        (next) => {
          if (!current || finishing.current) return;

          rememberReady(next.complete ? owner : null);
          setSetup(next);
          setChecked({ complete: next.complete, owner });
        },
        () => {
          if (current) setChecked({ complete: true, owner });
        },
      );
    };

    check();

    const stop = subscribeLocalSaves(check);

    return () => {
      current = false;
      stop();
    };
  }, [owner]);

  if (checked?.owner === owner && checked.complete) return children;

  if (checked?.owner === owner && setup) {
    return (
      <GateFrame>
        <TrainerSetup
          choices={setup.choices}
          profile={setup.profile}
          onDone={async () => {
            finishing.current = true;

            try {
              await prepare?.().catch(() => undefined);
              rememberReady(owner);
              setChecked({ complete: true, owner });
            } finally {
              finishing.current = false;
            }
          }}
        />
      </GateFrame>
    );
  }

  /* A blink while it reads: the start screen's last step, unchanged. */
  return (
    <GateFrame>
      <LoadingSteps
        title={getStartupTitle(false)}
        steps={getStartupSteps(false).map(
          (stepKey) => startupStepLabels[stepKey],
        )}
        current={getStartupSteps(false).indexOf("pages")}
      />
    </GateFrame>
  );
};
