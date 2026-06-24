"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { setMainlineCollectibleEntryProgress } from "@/modules/mainline/features/play/server/progress-actions";
import { ActionError } from "@/modules/mainline/features/play/components/detail/actions/action-error";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type CollectibleOptimisticProgress = {
  collected: boolean;
  serverKey: string;
};

type CollectibleProgressButtonProps = {
  collectibleEntryId: number | null;
  isCollected: boolean | null;
  playId: string;
};

export const CollectibleProgressButton = ({
  collectibleEntryId,
  isCollected,
  playId,
}: CollectibleProgressButtonProps) => {
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
          <AppIcon icon={appIcons.product.collected} inline="start" />
        ) : (
          <AppIcon icon={appIcons.product.uncollected} inline="start" />
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
};
