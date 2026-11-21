"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

import { rememberHasPlays, rememberSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import {
  closeLogOut,
  logOutAndClear,
  logOutAndKeep,
  useLogOutAsked,
} from "@/features/app-shell/client/sign-out";
import { useAuthSession } from "@/platform/local-db/account-session";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

/* Why the last save to the account didn't go through, if it didn't. */
type Stuck = "failed" | "waiting" | null;

type Pending = "clean" | "keep" | null;

/*
 * Log out, asked wherever it is tapped. Logging out saves to your account
 * one last time, signs this browser out and removes your Plays from this
 * device: they are the account's, and come back when you log in again.
 * If that last save can't finish (offline, or a sync question still
 * waits), nothing is removed and you choose: stay logged in, or log out
 * and keep your Plays on this device. Then Log in opens.
 */
export const LogOutDialog = () => {
  const router = useRouter();
  const asked = useLogOutAsked();
  const userId = useAuthSession()?.userId ?? null;
  const [pending, setPending] = useState<Pending>(null);
  const [stuck, setStuck] = useState<Stuck>(null);

  const close = () => {
    closeLogOut();
    setStuck(null);
  };

  const leave = () => {
    rememberSignedIn(false);
    close();
    router.push(appRoutes.login);
  };

  const logOut = async () => {
    if (!userId) return;

    setPending("clean");

    try {
      const result = await logOutAndClear(userId);

      if (result === "waiting" || result === "failed") {
        setStuck(result);

        return;
      }

      /* Cleared: the front page has a Play to start again. */
      if (result === "cleared") rememberHasPlays(false);

      leave();
    } finally {
      setPending(null);
    }
  };

  const keep = async () => {
    setPending("keep");

    try {
      await logOutAndKeep();
      leave();
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
      title={
        stuck ? "Your latest changes aren't in your account yet" : "Log out?"
      }
      description={
        stuck === "waiting"
          ? "A sync question is waiting for your answer, so nothing was removed from this device."
          : stuck === "failed"
            ? "Voydex couldn't save to your account just now, so nothing was removed from this device."
            : "Your Plays stay in your account and are removed from this device."
      }
      footer={
        /* The longer pair of answers stacks on a phone, the way out last. */
        <div
          className={cn(
            "flex gap-2 max-sm:w-full sm:justify-end",
            stuck ? "max-sm:flex-col-reverse" : "max-sm:*:flex-1",
          )}
        >
          <Button
            type="button"
            variant="secondary"
            disabled={pending !== null}
            onClick={close}
          >
            {stuck ? "Stay logged in" : "Cancel"}
          </Button>
          {stuck ? (
            <Button
              type="button"
              variant="destructive"
              disabled={pending !== null}
              aria-busy={pending === "keep"}
              onClick={() => void keep()}
            >
              {pending === "keep" ? <Spinner data-icon="inline-start" /> : null}
              Log out and keep them here
            </Button>
          ) : (
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
              {pending === "clean" ? "Saving to your account..." : "Log out"}
            </Button>
          )}
        </div>
      }
    >
      <p className="text-ink-2 copy-body">
        {stuck
          ? "Stay logged in and try again later, or log out now and keep your Plays on this device. Kept here, they sync the next time you log in to this account."
          : "Voydex saves to your account one last time first. Your Plays, Plans, tags, rules, favourites, name and settings come back when you log in again."}
      </p>
    </OverlayDialog>
  );
};
