"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { createPlayAction } from "@/modules/mainline/features/plays/shared/server/create-play-action";
import type { NewPlayInput } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { getPlayCalendarDay } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";

/*
 * Starts a Play and opens it, the one start flow New Play and Home share. The
 * Play starts on the viewer's own calendar day; a failure says why and keeps
 * everything picked.
 */
export const useStartPlay = () => {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const newPlayDialog = useNewPlayDialog();

  const startPlay = (
    input: Omit<NewPlayInput, "startedOn">,
    gameShortName: string,
  ) => {
    startTransition(async () => {
      const result = await createPlayAction({
        ...input,
        startedOn: getPlayCalendarDay(
          Intl.DateTimeFormat().resolvedOptions().timeZone,
        ),
      });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      newPlayDialog?.forgetIntent(input.gameSlug);
      toast.success(`${gameShortName}: ${result.playName} started`);
      router.push(appRoutes.mainlinePlay(result.playId));
    });
  };

  return { isPending, startPlay };
};
