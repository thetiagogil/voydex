"use client";

import { useState } from "react";

import type { BackupFile } from "@/platform/local-db/backup-file";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

const savedOnFormat = new Intl.DateTimeFormat("en-GB", {
  day: "numeric",
  month: "long",
  year: "numeric",
});

const count = (value: number, one: string, many: string) =>
  `${value} ${value === 1 ? one : many}`;

/* "2 Plays and 1 Plan", or "no Plays or Plans". */
const describeContents = (backup: BackupFile) => {
  const plays = backup.tables["gameplay.mainline_plays"]?.length ?? 0;
  const plans = backup.tables["planning.mainline_team_plans"]?.length ?? 0;

  if (!plays && !plans) return "no Plays or Plans";

  return [
    plays ? count(plays, "Play", "Plays") : null,
    plans ? count(plans, "Plan", "Plans") : null,
  ]
    .filter(Boolean)
    .join(" and ");
};

/*
 * Asks before a backup replaces this device's data, saying when it was
 * saved and what it holds; stays open, busy, while the games it needs
 * download and the data goes in.
 */
export const SettingsRestoreDialog = ({
  backup,
  onClose,
  onRestore,
}: {
  backup: BackupFile | null;
  onClose: () => void;
  /* Resolves to whether the restore worked. */
  onRestore: (backup: BackupFile) => Promise<boolean>;
}) => {
  const [restoring, setRestoring] = useState(false);

  const restore = async () => {
    if (!backup) return;

    setRestoring(true);

    const restored = await onRestore(backup);

    setRestoring(false);

    if (restored) onClose();
  };

  return (
    <AlertDialog
      open={backup !== null}
      onOpenChange={(open) => {
        if (!open && !restoring) onClose();
      }}
    >
      <AlertDialogContent>
        <AlertDialogHeader>
          <AlertDialogTitle>Restore this backup?</AlertDialogTitle>
          <AlertDialogDescription>
            {backup
              ? `Saved on ${savedOnFormat.format(new Date(backup.savedAt))}, with ${describeContents(backup)}. `
              : null}
            It replaces everything Voydex has on this device now.
          </AlertDialogDescription>
        </AlertDialogHeader>
        <AlertDialogFooter>
          <AlertDialogCancel disabled={restoring}>
            Keep this device&apos;s data
          </AlertDialogCancel>
          <Button
            type="button"
            variant="destructive"
            disabled={restoring}
            aria-busy={restoring}
            onClick={() => void restore()}
          >
            {restoring ? <Spinner data-icon="inline-start" /> : null}
            {restoring ? "Restoring..." : "Replace with the backup"}
          </Button>
        </AlertDialogFooter>
      </AlertDialogContent>
    </AlertDialog>
  );
};
