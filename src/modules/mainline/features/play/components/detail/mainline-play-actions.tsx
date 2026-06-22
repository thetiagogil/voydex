"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { CheckCircle2, Circle, Eye } from "lucide-react";

import {
  completeMainlinePlayMilestone,
  setMainlineCollectibleEntryProgress,
  setMainlinePokedexSpeciesProgress,
} from "@/modules/mainline/features/play/server/actions";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

type ActionErrorProps = {
  error: string | null;
};

type PokedexOptimisticProgress = {
  caught: boolean;
  serverKey: string;
  seen: boolean;
};

type CollectibleOptimisticProgress = {
  collected: boolean;
  serverKey: string;
};

function ActionError({ error }: ActionErrorProps) {
  if (!error) {
    return null;
  }

  return (
    <p role="alert" className="text-destructive text-xs">
      {error}
    </p>
  );
}

export function CompleteMilestoneButton({
  disabled = false,
  label = "Mark complete",
  milestoneId,
  playId,
}: {
  disabled?: boolean;
  label?: string;
  milestoneId: number | null;
  playId: string;
}) {
  const [error, setError] = useState<string | null>(null);
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  return (
    <div className="flex flex-col gap-2">
      <Button
        type="button"
        disabled={disabled || isPending || !milestoneId}
        onClick={() => {
          if (!milestoneId) {
            return;
          }

          setError(null);
          startTransition(async () => {
            const result = await completeMainlinePlayMilestone({
              milestoneId,
              playId,
            });

            if (!result.ok) {
              setError(result.error);
              return;
            }

            router.refresh();
          });
        }}
      >
        {isPending ? (
          <Spinner data-icon="inline-start" />
        ) : (
          <CheckCircle2 data-icon="inline-start" />
        )}
        {isPending ? "Updating..." : label}
      </Button>
      <ActionError error={error} />
    </div>
  );
}

export function PokedexProgressButtons({
  isCaught,
  isSeen,
  playId,
  speciesId,
}: {
  isCaught: boolean | null;
  isSeen: boolean | null;
  playId: string;
  speciesId: number | null;
}) {
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

  function updateProgress(
    control: "seen" | "caught",
    nextSeen: boolean,
    nextCaught: boolean,
  ) {
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
  }

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
}

export function CollectibleProgressButton({
  collectibleEntryId,
  isCollected,
  playId,
}: {
  collectibleEntryId: number | null;
  isCollected: boolean | null;
  playId: string;
}) {
  const serverCollected = Boolean(isCollected);
  const serverKey = String(serverCollected);
  const [error, setError] = useState<string | null>(null);
  const [optimisticProgress, setOptimisticProgress] =
    useState<CollectibleOptimisticProgress | null>(null);
  const [isPending, startTransition] = useTransition();
  const router = useRouter();
  const optimisticCollected =
    optimisticProgress?.serverKey === serverKey
      ? optimisticProgress.collected
      : serverCollected;

  return (
    <div className="flex flex-col gap-2">
      <Button
        type="button"
        variant={optimisticCollected ? "default" : "outline"}
        size="sm"
        disabled={isPending || !collectibleEntryId}
        className="w-full justify-start"
        aria-pressed={optimisticCollected}
        onClick={() => {
          if (!collectibleEntryId) {
            return;
          }

          const nextCollected = !optimisticCollected;
          setError(null);
          setOptimisticProgress({
            collected: nextCollected,
            serverKey,
          });
          startTransition(async () => {
            const result = await setMainlineCollectibleEntryProgress({
              collectibleEntryId,
              isCollected: nextCollected,
              playId,
            });

            if (!result.ok) {
              setError(result.error);
              setOptimisticProgress(null);
              return;
            }

            router.refresh();
          });
        }}
      >
        {isPending ? (
          <Spinner data-icon="inline-start" />
        ) : optimisticCollected ? (
          <CheckCircle2 data-icon="inline-start" />
        ) : (
          <Circle data-icon="inline-start" />
        )}
        {isPending
          ? "Updating..."
          : optimisticCollected
            ? "Collected"
            : "Mark collected"}
      </Button>
      <ActionError error={error} />
    </div>
  );
}
