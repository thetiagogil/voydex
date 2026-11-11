"use client";

import { useState } from "react";

import { SystemState } from "@/features/system/components/system-state";
import type { DeviceProblem } from "@/platform/local-db/prepare-device";
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

const problemCopy: Record<
  DeviceProblem | "failed",
  { description: string; title: string }
> = {
  failed: {
    description:
      "Something stopped Voydex opening the data on this device. Try again.",
    title: "Your Plays didn't open",
  },
  "needs-fresh-start": {
    description:
      "This version of Voydex can't read the data saved on this device. Starting fresh deletes the Plays saved here.",
    title: "This device needs a fresh start",
  },
  offline: {
    description:
      "Voydex needs the internet once to set up on this device. Connect, then try again.",
    title: "You're offline",
  },
  "storage-full": {
    description:
      "This device has no room left for Voydex's data. Free up some space, then try again.",
    title: "This device is full",
  },
  "update-failed": {
    description:
      "Voydex couldn't update the data on this device, and left it as it was. Try again.",
    title: "The update didn't finish",
  },
};

/* Starting fresh deletes every Play on the device, so it asks first. */
const StartFreshButton = ({ onConfirm }: { onConfirm: () => void }) => {
  const [open, setOpen] = useState(false);

  return (
    <>
      <Button
        type="button"
        size="lg"
        variant="destructive"
        onClick={() => setOpen(true)}
      >
        Start fresh
      </Button>
      <AlertDialog open={open} onOpenChange={setOpen}>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>
              Delete the Plays on this device?
            </AlertDialogTitle>
            <AlertDialogDescription>
              Everything Voydex saved on this device goes. This can&apos;t be
              undone.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel>Keep them</AlertDialogCancel>
            <Button
              type="button"
              variant="destructive"
              onClick={() => {
                setOpen(false);
                onConfirm();
              }}
            >
              Delete and start fresh
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
};

/* Why the device data didn't open: offline, full, an update, or a fresh start. */
export const DeviceProblemState = ({
  onRetry,
  onStartFresh,
  problem,
}: {
  onRetry: () => void;
  onStartFresh: () => void;
  problem: DeviceProblem | "failed";
}) => {
  const copy = problemCopy[problem];
  const retry = (
    <Button
      type="button"
      size="lg"
      variant={problem === "needs-fresh-start" ? "secondary" : "default"}
      onClick={onRetry}
    >
      <AppIcon icon={appIcons.actions.retry} inline="start" />
      Try again
    </Button>
  );

  return (
    <SystemState
      title={copy.title}
      description={copy.description}
      actions={
        problem === "needs-fresh-start" ? (
          <>
            <StartFreshButton onConfirm={onStartFresh} />
            {retry}
          </>
        ) : (
          retry
        )
      }
    />
  );
};
