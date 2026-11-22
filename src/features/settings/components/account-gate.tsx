"use client";

import { useEffect, useState, type ReactNode } from "react";

import { AccountSyncRunner } from "@/features/settings/components/account-sync-runner";
import { useAuthSession } from "@/platform/local-db/account-session";
import {
  addPlaysToAccount,
  keepOwnDataSeparate,
  prepareAppAfterFirstSync,
  useAccountSync,
  useFirstSyncPending,
} from "@/platform/local-db/account-sync";
import { LocalDbError } from "@/platform/local-db/local-db";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { StartMark } from "@/shared/components/brand/start-mark";
import { IconDisc } from "@/shared/components/icon-disc";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type AccountGateProps = {
  children: ReactNode;
  /* What this device holds, shown with the question (the app's Plays). */
  deviceData: ReactNode;
  /* "Log out instead": signs out and leaves the device as it is. */
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

/*
 * The wait after logging in: your account's Plays are on their way. It is
 * laid out as the start screen it follows, so the mark stays where it was,
 * and its words come a moment late: a wait that ends at once (straight on
 * to the question below) never flashes them.
 */
const SyncStep = () => (
  <div
    role="status"
    className="mx-auto flex w-full max-w-sm flex-col items-center gap-3 text-center"
  >
    <StartMark progress="busy" progressLabel="Syncing with your account" />
    <p className="title-card appear-late mt-2">
      Bringing your account to this device
    </p>
  </div>
);

/* The device and the account, drawn apart or joined by an arrow. */
const Diagram = ({ joined }: { joined: boolean }) => (
  <span aria-hidden className="flex items-center gap-2">
    <IconDisc size="lg">
      <AppIcon icon={appIcons.devices.computer} size="lg" />
    </IconDisc>
    <span
      className={cn(
        "text-ink-3 grid w-8 place-items-center",
        !joined && "opacity-0",
      )}
    >
      <AppIcon icon={appIcons.actions.continue} size="md" />
    </span>
    <IconDisc size="lg" className={cn(joined && "bg-select-soft text-calm")}>
      <AppIcon icon={appIcons.devices.account} size="lg" />
    </IconDisc>
  </span>
);

const Point = ({
  children,
  icon,
}: {
  children: ReactNode;
  icon: AppIconComponent;
}) => (
  <li className="text-ink-2 copy-note flex items-start gap-2">
    <AppIcon icon={icon} size="sm" className="text-ink-3 mt-0.5 shrink-0" />
    <span>{children}</span>
  </li>
);

type Pending = "add" | "separate" | null;

/*
 * The question a device with data of its own asks when you log in, as a
 * step before the app: what is here, and two answers side by side. Keep
 * them separate is the main one: it changes nothing for good, and they can
 * still be added later from Settings. Add them puts a copy in the account,
 * which can't be taken back, so it asks once more. Neither deletes anything
 * from the device.
 */
const OwnDataChoice = ({
  deviceData,
  email,
  onLogOut,
}: {
  deviceData: ReactNode;
  email: string | null;
  onLogOut: () => Promise<void>;
}) => {
  const [pending, setPending] = useState<Pending>(null);
  const [confirmingAdd, setConfirmingAdd] = useState(false);
  const [message, setMessage] = useState<string | null>(null);
  const busy = pending !== null;

  const answer = async (choice: Exclude<Pending, null>) => {
    setPending(choice);
    setMessage(null);

    try {
      await (choice === "add" ? addPlaysToAccount() : keepOwnDataSeparate());
    } catch (error) {
      setMessage(
        error instanceof LocalDbError
          ? error.message
          : "That didn't work, so nothing changed. Try again.",
      );
      setPending(null);
    }
  };

  return (
    <section
      aria-labelledby="own-data-title"
      className="mx-auto flex w-full max-w-3xl flex-col gap-6"
    >
      <header className="flex flex-col items-center gap-2 text-center">
        <h1 id="own-data-title" className="title-page text-balance">
          This device already has Plays
        </h1>
        <p className="text-ink-2 copy-body max-w-xl text-balance">
          They were saved here without an account.
          {email ? ` You're logging in as ${email}.` : null} What should happen
          to them?
        </p>
      </header>

      {deviceData}

      <div className="grid gap-4 sm:grid-cols-2">
        <Card className="gap-4">
          <div className="flex items-center justify-between gap-3">
            <Diagram joined={false} />
            <Badge variant="select" size="md">
              Recommended
            </Badge>
          </div>
          <div className="flex flex-col gap-2">
            <h2 className="title-card">Keep them separate</h2>
            <ul className="flex flex-col gap-1.5">
              <Point icon={appIcons.devices.computer}>
                They stay on this device only
              </Point>
              <Point icon={appIcons.actions.restore}>
                They come back when you log out
              </Point>
              <Point icon={appIcons.actions.create}>
                You can still add them later, in Settings
              </Point>
            </ul>
          </div>
          <Button
            type="button"
            className="mt-auto w-full"
            disabled={busy}
            aria-busy={pending === "separate"}
            onClick={() => void answer("separate")}
          >
            {pending === "separate" ? (
              <Spinner data-icon="inline-start" />
            ) : null}
            Keep them separate
          </Button>
        </Card>

        <Card className="gap-4">
          <Diagram joined />
          <div className="flex flex-col gap-2">
            <h2 className="title-card">Add them to my account</h2>
            <ul className="flex flex-col gap-1.5">
              <Point icon={appIcons.devices.account}>
                A copy joins your account
              </Point>
              <Point icon={appIcons.devices.phone}>
                It follows you to your other devices
              </Point>
              <Point icon={appIcons.status.locked}>
                This can&apos;t be undone
              </Point>
            </ul>
          </div>
          {confirmingAdd ? (
            <div className="mt-auto flex flex-col gap-2">
              <p className="text-ink copy-label">
                Add a copy to your account for good?
              </p>
              <div className="flex gap-2 *:flex-1">
                <Button
                  type="button"
                  variant="secondary"
                  disabled={busy}
                  onClick={() => setConfirmingAdd(false)}
                >
                  No
                </Button>
                <Button
                  type="button"
                  variant="secondary"
                  disabled={busy}
                  aria-busy={pending === "add"}
                  onClick={() => void answer("add")}
                >
                  {pending === "add" ? (
                    <Spinner data-icon="inline-start" />
                  ) : null}
                  Yes, add them
                </Button>
              </div>
            </div>
          ) : (
            <Button
              type="button"
              variant="secondary"
              className="mt-auto w-full"
              disabled={busy}
              onClick={() => setConfirmingAdd(true)}
            >
              Add them to my account
            </Button>
          )}
        </Card>
      </div>

      {message ? (
        <p role="alert" className="text-danger copy-body text-center">
          {message}
        </p>
      ) : null}

      <div className="flex flex-col items-center gap-3 text-center">
        <p className="text-ink-2 copy-note">
          Either way, nothing is deleted from this device.
        </p>
        <Button
          type="button"
          variant="ghost"
          size="sm"
          disabled={busy}
          onClick={() => void onLogOut()}
        >
          Log out instead
        </Button>
      </div>
    </section>
  );
};

/*
 * The step between logging in and the app, standing where the app would:
 * nothing of the app shows until your account is in sync with this device.
 * Right after Log in it waits for the first sync and for the app's pages
 * to be read again (`prepare`), so the app opens finished; after a few
 * seconds at most it opens anyway and sync carries on. When this device holds
 * data of its own, made without an account, it asks what to do with it
 * first. It also keeps account sync running under the app
 * (`AccountSyncRunner`).
 */
export const AccountGate = ({
  children,
  deviceData,
  onLogOut,
  prepare,
}: AccountGateProps) => {
  useEffect(
    () => (prepare ? prepareAppAfterFirstSync(prepare) : undefined),
    [prepare],
  );

  const session = useAuthSession();
  const sync = useAccountSync();
  const firstSyncPending = useFirstSyncPending();
  const step = !session
    ? null
    : sync.status === "own-data"
      ? "choice"
      : firstSyncPending
        ? "sync"
        : null;

  return (
    <>
      <AccountSyncRunner />
      {step === "choice" ? (
        <GateFrame>
          <OwnDataChoice
            deviceData={deviceData}
            email={session?.email ?? null}
            onLogOut={onLogOut}
          />
        </GateFrame>
      ) : step === "sync" ? (
        <GateFrame>
          <SyncStep />
        </GateFrame>
      ) : (
        children
      )}
    </>
  );
};
