"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { CheckCircle2, Eye, Loader2, X } from "lucide-react";

import {
  completeMainlinePlayMilestone,
  setMainlineCollectibleEntryProgress,
  setMainlinePokedexSpeciesProgress,
} from "@/modules/mainline/features/play/server/actions";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/lib/utils";

type ActionErrorProps = {
  error: string | null;
};

function ActionError({ error }: ActionErrorProps) {
  if (!error) {
    return null;
  }

  return <p className="text-destructive text-xs">{error}</p>;
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
          <Loader2 data-icon="inline-start" className="animate-spin" />
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
  const [error, setError] = useState<string | null>(null);
  const [optimisticCaught, setOptimisticCaught] = useState(Boolean(isCaught));
  const [optimisticSeen, setOptimisticSeen] = useState(Boolean(isSeen));
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  function updateProgress(nextSeen: boolean, nextCaught: boolean) {
    if (!speciesId) {
      return;
    }

    setError(null);
    setOptimisticSeen(nextSeen || nextCaught);
    setOptimisticCaught(nextCaught);
    startTransition(async () => {
      const result = await setMainlinePokedexSpeciesProgress({
        isCaught: nextCaught,
        isSeen: nextSeen || nextCaught,
        playId,
        speciesId,
      });

      if (!result.ok) {
        setError(result.error);
        setOptimisticSeen(Boolean(isSeen));
        setOptimisticCaught(Boolean(isCaught));
        return;
      }

      router.refresh();
    });
  }

  return (
    <div className="flex flex-col gap-2">
      <div className="grid grid-cols-2 overflow-hidden rounded-lg border">
        <Button
          type="button"
          variant={optimisticSeen ? "default" : "ghost"}
          className="rounded-none"
          disabled={isPending || !speciesId}
          aria-pressed={optimisticSeen}
          onClick={() =>
            updateProgress(!optimisticSeen, optimisticCaught && !optimisticSeen)
          }
        >
          <Eye data-icon="inline-start" />
          Seen
        </Button>
        <Button
          type="button"
          variant={optimisticCaught ? "default" : "ghost"}
          className="rounded-none border-l"
          disabled={isPending || !speciesId}
          aria-pressed={optimisticCaught}
          onClick={() => updateProgress(true, !optimisticCaught)}
        >
          <CheckCircle2 data-icon="inline-start" />
          Caught
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
  const [error, setError] = useState<string | null>(null);
  const [optimisticCollected, setOptimisticCollected] = useState(
    Boolean(isCollected),
  );
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  return (
    <div className="flex flex-col gap-2">
      <Button
        type="button"
        variant={optimisticCollected ? "default" : "outline"}
        size="sm"
        disabled={isPending || !collectibleEntryId}
        className={cn("w-full justify-start", optimisticCollected && "gap-1.5")}
        aria-pressed={optimisticCollected}
        onClick={() => {
          if (!collectibleEntryId) {
            return;
          }

          const nextCollected = !optimisticCollected;
          setError(null);
          setOptimisticCollected(nextCollected);
          startTransition(async () => {
            const result = await setMainlineCollectibleEntryProgress({
              collectibleEntryId,
              isCollected: nextCollected,
              playId,
            });

            if (!result.ok) {
              setError(result.error);
              setOptimisticCollected(Boolean(isCollected));
              return;
            }

            router.refresh();
          });
        }}
      >
        {optimisticCollected ? (
          <CheckCircle2 data-icon="inline-start" />
        ) : (
          <X data-icon="inline-start" />
        )}
        {isPending
          ? "Updating..."
          : optimisticCollected
            ? "Collected"
            : "Missing"}
      </Button>
      <ActionError error={error} />
    </div>
  );
}
