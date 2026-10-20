"use client";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
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

/*
 * A Plan that Plays follow opens locked: the first edit asks here, saying
 * that what you save changes how each of those Plays compares with it.
 */
export const PlannerUnlockDialog = ({
  followerCount,
  onConfirm,
  onOpenChange,
  open,
}: {
  followerCount: number;
  onConfirm: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
}) => (
  <AlertDialog open={open} onOpenChange={onOpenChange}>
    <AlertDialogContent>
      <AlertDialogHeader>
        <AlertDialogTitle>Unlock this Plan?</AlertDialogTitle>
        <AlertDialogDescription>
          {followerCount === 1
            ? "A Play follows it. When you save, that Play compares against the changed Plan."
            : `${followerCount} Plays follow it. When you save, each of them compares against the changed Plan.`}
        </AlertDialogDescription>
      </AlertDialogHeader>
      <AlertDialogFooter>
        <AlertDialogCancel>Keep it locked</AlertDialogCancel>
        <Button type="button" onClick={onConfirm}>
          <AppIcon icon={appIcons.actions.unlock} inline="start" />
          Unlock
        </Button>
      </AlertDialogFooter>
    </AlertDialogContent>
  </AlertDialog>
);
