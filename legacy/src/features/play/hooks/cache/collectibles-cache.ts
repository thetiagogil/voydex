import { playKeys } from "@/features/play/api/query-keys";
import type {
  PlayCollectible,
  PlayCollectibleSummary,
} from "@/features/play/types";
import { toCollectiblesSummary } from "@/features/play/utils/collectibles-summary";
import type { QueryClient } from "@tanstack/react-query";

export type CollectiblesMutationContext = {
  key: ReturnType<typeof playKeys.collectibles>;
  summaryKey: ReturnType<typeof playKeys.collectiblesSummary>;
  previous: PlayCollectible[] | undefined;
  previousSummary: PlayCollectibleSummary[] | undefined;
};

export const deriveCollectiblesSummary = (
  collectibles: PlayCollectible[] | undefined,
  previousSummary: PlayCollectibleSummary[] | undefined,
) => {
  if (!collectibles) return previousSummary;

  return toCollectiblesSummary(collectibles);
};

export const updateCollectiblesEntryState = (
  collectibles: PlayCollectible[] | undefined,
  collectibleEntryId: number,
  isCollected: boolean,
) => {
  return collectibles?.map((collectible) => ({
    ...collectible,
    collectedCount: collectible.entries.some(
      (entry) =>
        entry.id === collectibleEntryId && entry.isCollected !== isCollected,
    )
      ? collectible.collectedCount + (isCollected ? 1 : -1)
      : collectible.collectedCount,
    entries: collectible.entries.map((entry) =>
      entry.id === collectibleEntryId ? { ...entry, isCollected } : entry,
    ),
  }));
};

export const updateCollectiblesEntriesState = (
  collectibles: PlayCollectible[] | undefined,
  collectibleEntryIds: number[],
  isCollected: boolean,
) => {
  const idSet = new Set(collectibleEntryIds);

  return collectibles?.map((collectible) => {
    const changedCount = collectible.entries.filter(
      (entry) => idSet.has(entry.id) && entry.isCollected !== isCollected,
    ).length;

    return {
      ...collectible,
      collectedCount:
        collectible.collectedCount + (isCollected ? changedCount : -changedCount),
      entries: collectible.entries.map((entry) =>
        idSet.has(entry.id) ? { ...entry, isCollected } : entry,
      ),
    };
  });
};

export const getCollectiblesMutationContext = async (
  queryClient: QueryClient,
  playId: string,
) => {
  const key = playKeys.collectibles(playId);
  const summaryKey = playKeys.collectiblesSummary(playId);

  await queryClient.cancelQueries({ queryKey: key });
  await queryClient.cancelQueries({ queryKey: summaryKey });

  return {
    key,
    summaryKey,
    previous: queryClient.getQueryData<PlayCollectible[]>(key),
    previousSummary: queryClient.getQueryData<PlayCollectibleSummary[]>(summaryKey),
  } satisfies CollectiblesMutationContext;
};

export const restoreCollectiblesMutationContext = (
  queryClient: QueryClient,
  context?: CollectiblesMutationContext,
) => {
  if (!context) return;

  queryClient.setQueryData(context.key, context.previous);
  queryClient.setQueryData(context.summaryKey, context.previousSummary);
};

export const syncCollectiblesSummaryCache = (
  queryClient: QueryClient,
  context: Pick<
    CollectiblesMutationContext,
    "key" | "summaryKey" | "previousSummary"
  >,
) => {
  const updatedCollectibles = queryClient.getQueryData<PlayCollectible[]>(
    context.key,
  );

  queryClient.setQueryData<PlayCollectibleSummary[]>(
    context.summaryKey,
    deriveCollectiblesSummary(updatedCollectibles, context.previousSummary),
  );
};

export const invalidateCollectiblesQueries = (
  queryClient: QueryClient,
  playId: string,
) => {
  queryClient.invalidateQueries({
    queryKey: playKeys.collectibles(playId),
    exact: true,
  });
  queryClient.invalidateQueries({ queryKey: playKeys.completion(playId) });
};
