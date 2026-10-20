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

import { describePlannerSwitchLoss } from "../data/planner-game-switch";

/*
 * Asks before a game switch drops Pokémon the new game doesn't have, naming
 * how many and which; a switch that keeps the whole team happens at once.
 */
export const PlannerSwitchDialog = ({
  names,
  onConfirm,
  onOpenChange,
  open,
  versionGroupName,
}: {
  names: string[];
  onConfirm: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  versionGroupName: string;
}) => (
  <AlertDialog open={open} onOpenChange={onOpenChange}>
    <AlertDialogContent>
      <AlertDialogHeader>
        <AlertDialogTitle>Switch to {versionGroupName}?</AlertDialogTitle>
        <AlertDialogDescription>
          {describePlannerSwitchLoss(names, versionGroupName)}
        </AlertDialogDescription>
      </AlertDialogHeader>
      <AlertDialogFooter>
        <AlertDialogCancel>Keep this game</AlertDialogCancel>
        <Button type="button" variant="destructive" onClick={onConfirm}>
          Switch game
        </Button>
      </AlertDialogFooter>
    </AlertDialogContent>
  </AlertDialog>
);
