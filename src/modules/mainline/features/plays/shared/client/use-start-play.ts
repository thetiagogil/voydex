"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  ensureLocalGame,
  installLocalLearnsetsLater,
} from "@/modules/mainline/features/plays/shared/client/local-play-game";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { createMainlinePlay } from "@/modules/mainline/features/plays/shared/server/create-play-command";
import {
  NewPlayInputError,
  parseNewPlayInput,
  type NewPlayInput,
} from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { forgetStartedIntentAction } from "@/modules/mainline/features/plays/shared/server/start-intent-actions";
import { getPlayCalendarDay } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import type { GameDataProgress } from "@/platform/local-db/game-data";
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
 * (`download` moves the bar), and its learnsets follow in the background.
 * The Play starts on the viewer's own calendar day; a failure says why and
 * keeps everything picked.
 */
export const useStartPlay = () => {
  const router = useRouter();
  const { db, save, versions } = useLocalDb();
  const [isPending, setIsPending] = useState(false);
  const [download, setDownload] = useState<GameDataProgress | null>(null);
  const newPlayDialog = useNewPlayDialog();

  const startPlay = async (
    input: Omit<NewPlayInput, "startedOn">,
    gameShortName: string,
  ) => {
    if (isPending) return;

    setIsPending(true);

    let step: "download" | "start" = "download";

    try {
      const fileSlug = await ensureLocalGame(db, {
        gameSlug: input.gameSlug,
        onProgress: setDownload,
        versions,
      });

      step = "start";
      setDownload(null);

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

      installLocalLearnsetsLater(db, fileSlug, versions);
      newPlayDialog?.forgetIntent(input.gameSlug);
      void forgetStartedIntentAction(input.gameSlug);
      toast.success(`${gameShortName}: ${result.playName} started`);
      router.push(appRoutes.mainlinePlay(result.playId));
    } catch (error) {
      toast.error(describeFailure(error, step));
    } finally {
      setIsPending(false);
      setDownload(null);
    }
  };

  return {
    download,
    isPending,
    startPlay: (...args: Parameters<typeof startPlay>) =>
      void startPlay(...args),
  };
};
