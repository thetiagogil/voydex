"use client";

import { useState, useTransition } from "react";

import { getLibraryDeleteNote } from "@/modules/mainline/features/library/data/library-model";
import type { LibraryUsage } from "@/modules/mainline/features/library/types";
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
import { FieldError } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * Deleting a rule or tag for good: it says how many Plays let it go,
 * and that it can't be undone.
 */
export const LibraryDeleteDialog = ({
  name,
  noun,
  onConfirm,
  onOpenChange,
  open,
  usage,
}: {
  name: string;
  /* "rule" or "tag". */
  noun: string;
  /* Deletes it; a message keeps the dialog open and shows it. */
  onConfirm: () => Promise<string | null>;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  usage: LibraryUsage;
}) => {
  const [error, setError] = useState<string | null>(null);
  const [isDeleting, startDeleting] = useTransition();
  const note = getLibraryDeleteNote(usage);

  const confirm = () =>
    startDeleting(async () => {
      const message = await onConfirm();

      if (message) {
        setError(message);
        return;
      }

      onOpenChange(false);
    });

  return (
    <AlertDialog
      open={open}
      onOpenChange={(next) => {
        if (isDeleting) return;

        setError(null);
        onOpenChange(next);
      }}
    >
      <AlertDialogContent>
        <AlertDialogHeader>
          <AlertDialogTitle>Delete {name}?</AlertDialogTitle>
          <AlertDialogDescription>
            {note ? `${note} ` : ""}This can&apos;t be undone.
          </AlertDialogDescription>
        </AlertDialogHeader>
        {error ? <FieldError>{error}</FieldError> : null}
        <AlertDialogFooter>
          <AlertDialogCancel disabled={isDeleting}>Keep it</AlertDialogCancel>
          <Button
            type="button"
            variant="destructive"
            disabled={isDeleting}
            aria-busy={isDeleting}
            onClick={confirm}
          >
            {isDeleting ? <Spinner data-icon="inline-start" /> : null}
            Delete {noun}
          </Button>
        </AlertDialogFooter>
      </AlertDialogContent>
    </AlertDialog>
  );
};
