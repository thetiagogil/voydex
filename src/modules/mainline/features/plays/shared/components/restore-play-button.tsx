"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { toast } from "sonner";

import { setPlayArchivedAction } from "@/modules/mainline/features/plays/shared/server/play-archive-action";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type RestorePlayButtonProps = {
  playId: string;
  playName: string;
};

/*
 * Restore puts an archived Play back in your lists, then the page reloads its
 * data: the Plays page's Archived list drops it, the Play's banner goes.
 */
export const RestorePlayButton = ({
  playId,
  playName,
}: RestorePlayButtonProps) => {
  const router = useRouter();
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
          const result = await setPlayArchivedAction({
            archived: false,
            playId,
          });

          if (result.status === "error") {
            toast.error(result.message);
            return;
          }

          toast.success(`${playName} restored`);
          router.refresh();
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
