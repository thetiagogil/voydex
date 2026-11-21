"use client";

import { useState } from "react";

import {
  addPlaysToAccount,
  keepOwnDataSeparate,
  useAccountSync,
} from "@/platform/local-db/account-sync";
import { LocalDbError } from "@/platform/local-db/local-db";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type Pending = "add" | "separate" | null;

/*
 * Asks what to do with what this device already had when you log in: it
 * was made here without an account. Yours: add it to your account. Someone
 * else's (you logged in on a friend's computer): keep it separate, set
 * aside while you're logged in and back in place when you log out. Closing
 * it waits: nothing syncs until you answer (Settings' Sync row opens it
 * again).
 */
export const AccountOwnDataDialog = () => {
  const sync = useAccountSync();
  const [dismissed, setDismissed] = useState<object | null>(null);
  const [pending, setPending] = useState<Pending>(null);
  const [message, setMessage] = useState<string | null>(null);

  if (sync.status !== "own-data") return null;

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
    } finally {
      setPending(null);
    }
  };

  return (
    <OverlayDialog
      open={dismissed !== sync}
      onOpenChange={(open) => {
        if (!open && !pending) setDismissed(sync);
      }}
      size="md"
      title="Add this device's Plays to your account?"
      description="This device already has Plays and settings saved without an account."
      footer={
        <div className="flex gap-2 max-sm:w-full max-sm:flex-col-reverse sm:justify-end">
          <Button
            type="button"
            variant="secondary"
            disabled={pending !== null}
            aria-busy={pending === "separate"}
            onClick={() => void answer("separate")}
          >
            {pending === "separate" ? (
              <Spinner data-icon="inline-start" />
            ) : null}
            Keep them separate
          </Button>
          <Button
            type="button"
            disabled={pending !== null}
            aria-busy={pending === "add"}
            onClick={() => void answer("add")}
          >
            {pending === "add" ? <Spinner data-icon="inline-start" /> : null}
            Add them to my account
          </Button>
        </div>
      }
    >
      <div className="flex flex-col gap-3">
        <p className="text-ink-2 copy-body">
          If they are yours, add them: they become part of your account and
          follow you to your other devices.
        </p>
        <p className="text-ink-2 copy-body">
          If this is someone else&apos;s device, keep them separate: they are
          set aside while you&apos;re logged in and come back, untouched, when
          you log out.
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
