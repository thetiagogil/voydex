"use client";

import { useTransition } from "react";
import { toast } from "sonner";

import { setPlayArchived } from "@/modules/mainline/features/plays/shared/client/play-archive-command";
import { localUserId } from "@/platform/local-db/device-schema";
import { useLocalDb } from "@/platform/local-db/local-db-context";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type RestorePlayButtonProps = {
  playId: string;
  playName: string;
};

/*
 * Restore puts an archived Play back in your lists, on the device. The
 * Plays page's Archived list reads again and drops it; the Play's banner,
 * still read on the server, goes with a refresh.
 */
export const RestorePlayButton = ({
  playId,
  playName,
}: RestorePlayButtonProps) => {
  const { save } = useLocalDb();
  const [isRestoring, startRestoring] = useTransition();

  return (
    <Button
      type="button"
      variant="secondary"
      size="sm"
      disabled={isRestoring}
      aria-busy={isRestoring}
      aria-label={`Restore ${playName}`}
      onClick={() => {
        startRestoring(async () => {
          try {
            await save((client) =>
              setPlayArchived(client, {
                archived: false,
                playId,
                userId: localUserId,
              }),
            );
          } catch {
            toast.error("Unable to restore this Play.");
            return;
          }

          toast.success(`${playName} restored`);
        });
      }}
    >
      {isRestoring ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.actions.restore} inline="start" />
      )}
      Restore
    </Button>
  );
};
