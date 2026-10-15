"use client";

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
 * Asks before taking a planned Pokémon off the team when you filled in its
 * build (moves, ability, item, nature, role or notes); one just added goes
 * at once, with Undo in the toast.
 */
export const PlannerRemoveDialog = ({
  name,
  onConfirm,
  onOpenChange,
  open,
}: {
  name: string;
  onConfirm: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
}) => (
  <AlertDialog open={open} onOpenChange={onOpenChange}>
    <AlertDialogContent>
      <AlertDialogHeader>
        <AlertDialogTitle>Remove {name}?</AlertDialogTitle>
        <AlertDialogDescription>
          Its build goes with it: moves, ability, item, nature and notes.
        </AlertDialogDescription>
      </AlertDialogHeader>
      <AlertDialogFooter>
        <AlertDialogCancel>Keep it</AlertDialogCancel>
        <Button type="button" variant="destructive" onClick={onConfirm}>
          Remove {name}
        </Button>
      </AlertDialogFooter>
    </AlertDialogContent>
  </AlertDialog>
);
