"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { CheckCircle2, Circle, Eye } from "lucide-react";

import { setMainlinePokedexSpeciesProgress } from "@/modules/mainline/features/play/server/progress-actions";
import { ActionError } from "@/modules/mainline/features/play/components/detail/actions/action-error";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type PokedexOptimisticProgress = {
  caught: boolean;
  serverKey: string;
  seen: boolean;
};

type PokedexProgressButtonsProps = {
  isCaught: boolean | null;
  isSeen: boolean | null;
  playId: string;
  speciesId: number | null;
};

export const PokedexProgressButtons = ({
  isCaught,
  isSeen,
  playId,
  speciesId,
}: PokedexProgressButtonsProps) => {
  const serverCaught = Boolean(isCaught);
  const serverSeen = Boolean(isSeen);
  const serverKey = `${serverSeen}:${serverCaught}`;

  const [error, setError] = useState<string | null>(null);
  const [optimisticProgress, setOptimisticProgress] =
    useState<PokedexOptimisticProgress | null>(null);
  const [pendingControl, setPendingControl] = useState<
    "seen" | "caught" | null
  >(null);
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  const currentProgress =
    optimisticProgress?.serverKey === serverKey
      ? optimisticProgress
      : {
          caught: serverCaught,
          seen: serverSeen,
        };

  const updateProgress = (
    control: "seen" | "caught",
    nextSeen: boolean,
    nextCaught: boolean,
  ) => {
    if (!speciesId) {
      return;
    }

    setError(null);
    setPendingControl(control);
    setOptimisticProgress({
      caught: nextCaught,
      seen: nextSeen || nextCaught,
      serverKey,
    });

    startTransition(async () => {
      try {
        const result = await setMainlinePokedexSpeciesProgress({
          isCaught: nextCaught,
          isSeen: nextSeen || nextCaught,
          playId,
          speciesId,
        });

        if (!result.ok) {
          setError(result.error);
          setOptimisticProgress(null);
          return;
        }

        router.refresh();
      } finally {
        setPendingControl(null);
      }
    });
  };

  const isSeenPending = isPending && pendingControl === "seen";
  const isCaughtPending = isPending && pendingControl === "caught";

  return (
    <div className="flex flex-col gap-2">
      <div className="grid grid-cols-2 overflow-hidden rounded-lg border">
        <Button
          type="button"
          variant={currentProgress.seen ? "default" : "ghost"}
          className="rounded-none"
          disabled={isPending || !speciesId}
          aria-pressed={currentProgress.seen}
          onClick={() =>
            updateProgress(
              "seen",
              !currentProgress.seen,
              currentProgress.caught && !currentProgress.seen,
            )
          }
        >
          {isSeenPending ? (
            <Spinner data-icon="inline-start" />
          ) : (
            <Eye data-icon="inline-start" />
          )}
          {isSeenPending
            ? "Updating..."
            : currentProgress.seen
              ? "Seen"
              : "Mark seen"}
        </Button>
        <Button
          type="button"
          variant={currentProgress.caught ? "default" : "ghost"}
          className="rounded-none border-l"
          disabled={isPending || !speciesId}
          aria-pressed={currentProgress.caught}
          onClick={() =>
            updateProgress("caught", true, !currentProgress.caught)
          }
        >
          {isCaughtPending ? (
            <Spinner data-icon="inline-start" />
          ) : currentProgress.caught ? (
            <CheckCircle2 data-icon="inline-start" />
          ) : (
            <Circle data-icon="inline-start" />
          )}
          {isCaughtPending
            ? "Updating..."
            : currentProgress.caught
              ? "Caught"
              : "Mark caught"}
        </Button>
      </div>
      <ActionError error={error} />
    </div>
  );
};
