"use client";

import { useEffect, useRef } from "react";
import { toast } from "sonner";

import { oldGameDataCopy } from "@/features/system/utils/game-data-update-copy";
import {
  readGameDataBehind,
  retryGameDataUpdate,
} from "@/platform/local-db/game-downloads";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { wideToast } from "@/shared/components/ui/sonner";
import { describeGameDataUpdateFailure } from "@/platform/local-db/prepare-device";

const toastId = "old-game-data";

/*
 * Says when the device is still on older game data than the latest
 * release (an update that didn't go in when the app opened or a game
 * downloaded), so old details on screen have a reason, with a way to try
 * again. A toast that stays until it's dealt with: Try again, or Not now
 * for the rest of the visit. It goes once the device is up to date.
 */
export const OldGameDataNotice = () => {
  const behind = useLocalRead("game-data:behind", readGameDataBehind);
  const isBehind = behind.status === "ready" && behind.data;
  /*
   * What the toast shows: "asking" (the notice), "updating", "done" (the
   * update went in, said once), or "quiet" after Not now.
   */
  const phase = useRef<"asking" | "done" | "none" | "quiet" | "updating">(
    "none",
  );

  useEffect(() => {
    if (!isBehind) {
      /* Brought up to date elsewhere (another tab, a game download). */
      if (phase.current === "asking") {
        phase.current = "none";
        toast.dismiss(toastId);
      }

      return;
    }

    if (phase.current !== "none" && phase.current !== "done") return;

    /* Not now, or swiped away: quiet for the rest of the visit. */
    const keepQuiet = () => {
      if (phase.current === "asking") phase.current = "quiet";
    };

    const ask = (title: string, description?: string) => {
      phase.current = "asking";
      toast.warning(title, {
        ...wideToast,
        action: {
          label: oldGameDataCopy.retry,
          onClick: (event) => {
            /* The toast stays, and turns into the update's own. */
            event.preventDefault();
            void retry();
          },
        },
        cancel: { label: oldGameDataCopy.later, onClick: keepQuiet },
        description,
        duration: Infinity,
        id: toastId,
        onDismiss: keepQuiet,
      });
    };

    const retry = async () => {
      phase.current = "updating";
      toast.loading(oldGameDataCopy.updating, {
        action: undefined,
        cancel: undefined,
        description: undefined,
        duration: Infinity,
        id: toastId,
      });

      try {
        await retryGameDataUpdate();
        phase.current = "done";
        toast.success(oldGameDataCopy.updated, { duration: 4000, id: toastId });
      } catch (error) {
        ask(
          oldGameDataCopy.title,
          describeGameDataUpdateFailure(error, { online: navigator.onLine }),
        );
      }
    };

    ask(oldGameDataCopy.title);
  }, [isBehind]);

  return null;
};
