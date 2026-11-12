"use client";

import { useState } from "react";

import { leaveOtherAccountOut } from "@/features/settings/client/backup-actions";
import {
  addPlaysToAccount,
  useAccountSync,
} from "@/platform/local-db/account-sync";
import { useLocalDb } from "@/platform/local-db/local-db-context";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type Pending = "add" | "leave" | null;

/*
 * Asks what to do with this device's Plays when it last synced with
 * another account: add them to the signed-in account, or leave them out
 * (saved to a backup file first). Closing it waits: nothing syncs until
 * you answer (Settings' Sync row opens it again).
 */
export const AccountOtherPlaysDialog = () => {
  const { db } = useLocalDb();
  const sync = useAccountSync();
  const [dismissed, setDismissed] = useState<object | null>(null);
  const [pending, setPending] = useState<Pending>(null);
  const [message, setMessage] = useState<string | null>(null);

  if (sync.status !== "other-account") return null;

  const add = async () => {
    setPending("add");
    setMessage(null);

    try {
      await addPlaysToAccount();
    } finally {
      setPending(null);
    }
  };

  const leave = async () => {
    setPending("leave");
    setMessage(null);

    const result = await leaveOtherAccountOut(db);

    setPending(null);

    if (result.status === "error") setMessage(result.message);
  };

  return (
    <OverlayDialog
      open={dismissed !== sync}
      onOpenChange={(open) => {
        if (!open && !pending) setDismissed(sync);
      }}
      size="md"
      title="Add this device's Plays to your account?"
      description="This device has Plays from another account. Add them to this account, or leave them out."
      footer={
        <div className="flex justify-end gap-2 max-sm:*:flex-1">
          <Button
            type="button"
            variant="secondary"
            disabled={pending !== null}
            aria-busy={pending === "leave"}
            onClick={() => void leave()}
          >
            {pending === "leave" ? <Spinner data-icon="inline-start" /> : null}
            Leave them out
          </Button>
          <Button
            type="button"
            disabled={pending !== null}
            aria-busy={pending === "add"}
            onClick={() => void add()}
          >
            {pending === "add" ? <Spinner data-icon="inline-start" /> : null}
            Add them
          </Button>
        </div>
      }
    >
      <div className="flex flex-col gap-3">
        <p className="text-ink-2 text-15">
          Leaving them out saves them to a backup file first. Then this device
          shows only this account&apos;s Plays.
        </p>
        {message ? (
          <p role="alert" className="text-danger text-15 font-semibold">
            {message}
          </p>
        ) : null}
      </div>
    </OverlayDialog>
  );
};
