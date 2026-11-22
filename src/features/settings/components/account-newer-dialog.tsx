"use client";

import { useState } from "react";

import {
  describeBackupDevice,
  describeBackupTime,
} from "@/features/settings/utils/backup-copy";
import {
  keepThisDevice,
  takeBackupFromAccount,
  useAccountBackupStatus,
} from "@/platform/local-db/account-runner";
import { LocalDbError } from "@/platform/local-db/local-db";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type Pending = "keep" | "use" | null;

/*
 * Another device saved a newer backup to your account, and this one
 * changed things too since its last backup. Nothing is merged: you keep
 * one side. Keeping this device's sends it up as the newest (the other
 * stays among the account's last 3 backups); using the other device's
 * replaces what this one has, and its unsaved changes are lost. Closing it waits: no backup goes up until
 * you choose (Settings' Account backup row opens it again).
 */
export const AccountNewerDialog = () => {
  const status = useAccountBackupStatus();
  const [dismissed, setDismissed] = useState<object | null>(null);
  const [pending, setPending] = useState<Pending>(null);
  const [message, setMessage] = useState<string | null>(null);

  if (status.status !== "newer") return null;

  const device = describeBackupDevice(status.device);
  const other = status.device.name
    ? `${status.device.name}'s`
    : "the newer one";

  const choose = async (choice: Exclude<Pending, null>) => {
    setPending(choice);
    setMessage(null);

    try {
      await (choice === "keep"
        ? keepThisDevice()
        : takeBackupFromAccount(status.device.id));
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
      open={dismissed !== status}
      onOpenChange={(open) => {
        if (!open && !pending) setDismissed(status);
      }}
      size="md"
      title="Your account has newer Plays"
      description={`${device} backed up ${describeBackupTime(status.device.savedAt)}, and this device has changes of its own. Which do you keep?`}
      footer={
        <div className="flex gap-2 max-sm:w-full max-sm:flex-col-reverse sm:justify-end">
          <Button
            type="button"
            variant="secondary"
            disabled={pending !== null}
            aria-busy={pending === "use"}
            onClick={() => void choose("use")}
          >
            {pending === "use" ? <Spinner data-icon="inline-start" /> : null}
            Use {other}
          </Button>
          <Button
            type="button"
            disabled={pending !== null}
            aria-busy={pending === "keep"}
            onClick={() => void choose("keep")}
          >
            {pending === "keep" ? <Spinner data-icon="inline-start" /> : null}
            Keep this device&apos;s
          </Button>
        </div>
      }
    >
      <div className="flex flex-col gap-3">
        <p className="text-ink-2 copy-body">
          Nothing is merged. Keep this device&apos;s and it becomes the newest
          backup; {other} stays among your last 3 for a while. Use {other} and
          this device&apos;s changes since its last backup are lost.
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
