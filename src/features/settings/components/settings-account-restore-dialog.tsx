"use client";

import { useEffect, useState } from "react";
import { toast } from "sonner";

import {
  describeBackupDevice,
  describeBackupTime,
} from "@/features/settings/utils/backup-copy";
import {
  listAccountBackups,
  takeBackupFromAccount,
} from "@/platform/local-db/account-runner";
import type { AccountBackupEntry } from "@/platform/local-db/device-account";
import { LocalDbError } from "@/platform/local-db/local-db";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { Badge } from "@/shared/components/ui/badge";
import { NeedsInternet } from "@/shared/components/needs-internet";
import { Button } from "@/shared/components/ui/button";
import {
  Field,
  FieldContent,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";
import { Spinner } from "@/shared/components/ui/spinner";

type Backups =
  | { status: "loading" }
  | { backups: AccountBackupEntry[]; status: "ready" }
  | { message: string; status: "error" };

const toMessage = (error: unknown, fallback: string) =>
  error instanceof LocalDbError ? error.message : fallback;

/*
 * Restore from account: your account's last 3 backups, newest first, each
 * with the device that saved it and when. The one you pick replaces what
 * is on this device, then goes up as the account's newest backup.
 */
export const SettingsAccountRestoreDialog = ({
  onClose,
  open,
}: {
  onClose: () => void;
  open: boolean;
}) => {
  const [backups, setBackups] = useState<Backups>({ status: "loading" });
  const [picked, setPicked] = useState<string | null>(null);
  const [restoring, setRestoring] = useState(false);

  useEffect(() => {
    if (!open) return;

    let current = true;

    listAccountBackups()
      .then((list) => {
        if (!current) return;

        setBackups({ backups: list, status: "ready" });
        setPicked(list[0]?.id ?? null);
      })
      .catch((error: unknown) => {
        if (current) {
          setBackups({
            message: toMessage(
              error,
              "Your account's backups didn't load. Try again when you're online.",
            ),
            status: "error",
          });
        }
      });

    return () => {
      current = false;
    };
  }, [open]);

  /* Closed, it reads the list afresh the next time it opens. */
  const close = () => {
    setBackups({ status: "loading" });
    onClose();
  };

  const restore = async () => {
    if (!picked) return;

    setRestoring(true);

    try {
      await takeBackupFromAccount(picked);
      toast.success("Backup restored");
      close();
    } catch (error) {
      toast.error(
        toMessage(error, "The backup didn't restore, so nothing changed."),
      );
    } finally {
      setRestoring(false);
    }
  };

  return (
    <OverlayDialog
      open={open}
      onOpenChange={(next) => {
        if (!next && !restoring) close();
      }}
      size="md"
      title="Restore from your account"
      description="The backup you pick replaces everything on this device now, then becomes your account's newest."
      footer={
        <div className="flex justify-end gap-2 max-sm:*:flex-1">
          <Button
            type="button"
            variant="secondary"
            disabled={restoring}
            onClick={close}
          >
            Cancel
          </Button>
          <NeedsInternet className="max-sm:*:w-full">
            {(offline) => (
              <Button
                type="button"
                variant="destructive"
                disabled={restoring || offline || !picked}
                aria-busy={restoring}
                onClick={() => void restore()}
              >
                {restoring ? <Spinner data-icon="inline-start" /> : null}
                {restoring ? "Restoring..." : "Replace with this backup"}
              </Button>
            )}
          </NeedsInternet>
        </div>
      }
    >
      {backups.status === "loading" ? (
        <p className="text-ink-2 copy-body flex items-center gap-2">
          <Spinner />
          Reading your account&apos;s backups...
        </p>
      ) : backups.status === "error" ? (
        <p role="alert" className="text-danger copy-body">
          {backups.message}
        </p>
      ) : backups.backups.length === 0 ? (
        <p className="text-ink-2 copy-body">
          Your account has no backups yet. One goes up a few seconds after your
          next change.
        </p>
      ) : (
        <RadioGroup
          aria-label="Backup to restore"
          value={picked ?? ""}
          onValueChange={(value) => setPicked(String(value))}
          disabled={restoring}
        >
          {backups.backups.map((backup, index) => (
            <FieldLabel key={backup.id} className="cursor-pointer">
              <Field orientation="horizontal" className="gap-3">
                <RadioGroupItem value={backup.id} />
                <FieldContent>
                  <span className="copy-strong flex items-center gap-2">
                    {describeBackupDevice(backup)}
                    {index === 0 ? (
                      <Badge variant="select" size="sm">
                        Newest
                      </Badge>
                    ) : null}
                  </span>
                  <FieldDescription>
                    Saved {describeBackupTime(backup.savedAt)}
                  </FieldDescription>
                </FieldContent>
              </Field>
            </FieldLabel>
          ))}
        </RadioGroup>
      )}
    </OverlayDialog>
  );
};
