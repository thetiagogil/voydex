"use client";

import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";

import {
  leaveApp,
  rememberHasPlays,
  rememberSignedIn,
} from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import {
  closeLogOut,
  logOutAndClear,
  logOutWithoutBackup,
  useLogOutAsked,
} from "@/features/app-shell/client/sign-out";
import { useAuthSession } from "@/platform/local-db/account-session";
import { backUpNow, hasOwnDataAside } from "@/platform/local-db/account-runner";
import { LocalDbError } from "@/platform/local-db/local-db";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type Pending = "anyway" | "clean" | null;

/* Why the last backup didn't go up: offline or failing, or a newer one elsewhere. */
type Stuck = "newer" | "unsaved" | null;

const stuckCopy = {
  newer: {
    body: "Choose which Plays to keep first, or log out anyway: this device's changes since its last backup are lost.",
    description:
      "Another device saved newer Plays to your account, and this one has changes of its own, so nothing was removed.",
    title: "Your account has newer Plays",
  },
  unsaved: {
    body: "If you log out now, what changed since your last backup is lost. Stay logged in and try again when you're online.",
    description:
      "Voydex couldn't back up to your account just now, so nothing was removed from this device.",
    title: "Your latest changes aren't backed up",
  },
} as const;

/*
 * Log out, asked wherever it is tapped. Logging out backs up to your
 * account one last time, removes the account's Plays from this device and
 * signs this browser out: they are the account's, and come back when you
 * log in again. If that last backup can't go up (offline: stay logged in;
 * another device saved a newer one: choose which to keep), nothing is
 * removed, and you can log out anyway and lose what changed since the
 * last backup. What the device had of its own, set aside when you logged in,
 * comes back. Then Log in opens, and the device has left the app: Back
 * home shows the front page, not the app.
 */
export const LogOutDialog = () => {
  const router = useRouter();
  const asked = useLogOutAsked();
  const userId = useAuthSession()?.userId ?? null;
  const [pending, setPending] = useState<Pending>(null);
  const [stuck, setStuck] = useState<Stuck>(null);
  /* What went wrong logging out, said in the dialog. */
  const [message, setMessage] = useState<string | null>(null);
  /* The device's own data waits aside, apart from this account. */
  const [ownDataAside, setOwnDataAside] = useState(false);

  useEffect(() => {
    if (!asked) return;

    let current = true;

    void hasOwnDataAside().then((aside) => {
      if (current) setOwnDataAside(aside);
    });

    return () => {
      current = false;
    };
  }, [asked]);

  const close = () => {
    closeLogOut();
    setStuck(null);
    setMessage(null);
  };

  const failed = (error: unknown) =>
    setMessage(
      error instanceof LocalDbError
        ? error.message
        : "That didn't work, so you're still logged in. Try again.",
    );

  const leave = () => {
    rememberSignedIn(false);
    /* Logged out is out of the app too: Back home shows the front page. */
    leaveApp();
    close();
    router.push(appRoutes.login);
  };

  const logOut = async () => {
    if (!userId) return;

    setPending("clean");
    setMessage(null);

    try {
      const result = await logOutAndClear(userId);

      if (result !== "cleared") {
        setStuck(result);

        return;
      }

      /* Cleared: the front page has a Play to start again. */
      rememberHasPlays(false);
      leave();
    } catch (error) {
      failed(error);
    } finally {
      setPending(null);
    }
  };

  /* Closes this and opens the choice between the two devices' Plays. */
  const choose = () => {
    close();
    void backUpNow();
  };

  const logOutAnyway = async () => {
    if (!userId) return;

    setPending("anyway");
    setMessage(null);

    try {
      await logOutWithoutBackup(userId);
      rememberHasPlays(false);
      leave();
    } catch (error) {
      failed(error);
    } finally {
      setPending(null);
    }
  };

  return (
    <OverlayDialog
      open={asked && (userId !== null || pending !== null)}
      onOpenChange={(open) => {
        if (!open && !pending) close();
      }}
      size="md"
      title={stuck ? stuckCopy[stuck].title : "Log out?"}
      description={
        stuck
          ? stuckCopy[stuck].description
          : "Your Plays are backed up to your account, then removed from this device."
      }
      footer={
        /* The pair of answers stacks on a phone, the way out last. */
        <div
          className={cn(
            "flex gap-2 max-sm:w-full sm:justify-end",
            stuck ? "max-sm:flex-col-reverse" : "max-sm:*:flex-1",
          )}
        >
          {stuck ? (
            <>
              <Button
                type="button"
                variant="destructive"
                disabled={pending !== null}
                aria-busy={pending === "anyway"}
                onClick={() => void logOutAnyway()}
              >
                {pending === "anyway" ? (
                  <Spinner data-icon="inline-start" />
                ) : null}
                Log out anyway
              </Button>
              <Button
                type="button"
                disabled={pending !== null}
                onClick={stuck === "newer" ? choose : close}
              >
                {stuck === "newer" ? "Choose" : "Stay logged in"}
              </Button>
            </>
          ) : (
            <>
              <Button
                type="button"
                variant="secondary"
                disabled={pending !== null}
                onClick={close}
              >
                Cancel
              </Button>
              <Button
                type="button"
                variant="destructive"
                disabled={pending !== null}
                aria-busy={pending === "clean"}
                onClick={() => void logOut()}
              >
                {pending === "clean" ? (
                  <Spinner data-icon="inline-start" />
                ) : null}
                {pending === "clean" ? "Backing up..." : "Log out"}
              </Button>
            </>
          )}
        </div>
      }
    >
      <div className="flex flex-col gap-3">
        <p className="text-ink-2 copy-body">
          {stuck
            ? stuckCopy[stuck].body
            : ownDataAside
              ? "They come back when you log in again. What this device had before you logged in comes back now, as it was."
              : "They come back when you log in again, on this device or any other."}
        </p>
        {message ? (
          <p role="alert" className="text-danger copy-body">
            {message}
          </p>
        ) : null}
      </div>
    </OverlayDialog>
  );
};
