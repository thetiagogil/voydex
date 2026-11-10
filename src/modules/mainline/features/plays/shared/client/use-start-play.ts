"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { createMainlinePlay } from "@/modules/mainline/features/plays/shared/client/create-play-command";
import {
  NewPlayInputError,
  parseNewPlayInput,
  type NewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { forgetStartedIntentAction } from "@/modules/mainline/features/plays/shared/server/start-intent-actions";
import { getPlayCalendarDay } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { ensureGameData } from "@/platform/local-db/game-downloads";
import { LocalDbError } from "@/platform/local-db/local-db";
import { useLocalDb } from "@/platform/local-db/local-db-context";
import { isStorageFullError } from "@/platform/local-db/prepare-device";

const describeFailure = (error: unknown, step: "download" | "start") => {
  if (error instanceof NewPlayInputError) return error.message;

  if (isStorageFullError(error)) {
    return "This device is out of room for the game's data.";
  }

  /* The download's own messages say what to do (check the connection). */
  if (step === "download" && error instanceof LocalDbError) {
    return error.message;
  }

  return step === "download"
    ? "The game didn't download. Try again."
    : "Unable to start the Play right now. Try again.";
};

/*
 * Starts a Play on the device and opens it, the one start flow New Play and
 * Home share. The game downloads first when it isn't on the device yet
 * (`useGameDownload` moves the bar), its learnsets after, in the background.
 * The Play starts on the viewer's own calendar day; a failure says why and
 * keeps everything picked.
 */
export const useStartPlay = () => {
  const router = useRouter();
  const { save } = useLocalDb();
  const [isPending, setIsPending] = useState(false);
  const newPlayDialog = useNewPlayDialog();

  const startPlay = async (
    input: Omit<NewPlayInput, "startedOn">,
    gameShortName: string,
  ) => {
    if (isPending) return;

    setIsPending(true);

    let step: "download" | "start" = "download";

    try {
      await ensureGameData(input.gameSlug);
      step = "start";

      const result = await save((client) =>
        createMainlinePlay({
          input: parseNewPlayInput({
            ...input,
            startedOn: getPlayCalendarDay(
              Intl.DateTimeFormat().resolvedOptions().timeZone,
            ),
          }),
          supabase: client,
        }),
      );

      newPlayDialog?.forgetIntent(input.gameSlug);
      void forgetStartedIntentAction(input.gameSlug);
      toast.success(`${gameShortName}: ${result.playName} started`);
      router.push(appRoutes.mainlinePlay(result.playId));
    } catch (error) {
      toast.error(describeFailure(error, step));
    } finally {
      setIsPending(false);
    }
  };

  return {
    isPending,
    startPlay: (...args: Parameters<typeof startPlay>) =>
      void startPlay(...args),
  };
};
