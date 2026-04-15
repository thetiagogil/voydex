import { playKeys } from "@/features/play/api/query-keys";
import type {
  PlayPokedexEntry,
  PlayPokedexOverviewSummary,
} from "@/features/play/types";
import type { QueryClient } from "@tanstack/react-query";

export type PokedexMutationContext = {
  keys: ReturnType<typeof getPokedexMutationKeys>;
  previousPokedex: PlayPokedexEntry[] | undefined;
  previousSummary: PlayPokedexOverviewSummary[] | undefined;
};

export const getPokedexMutationKeys = (playId: string) => ({
  pokedex: playKeys.pokedex(playId),
  pokedexSummary: playKeys.pokedexSummary(playId),
});

export const updatePokedexEntries = (
  entries: PlayPokedexEntry[] | undefined,
  pokedexEntryIds: number[],
  update: Partial<Pick<PlayPokedexEntry, "isCaught" | "isSeen">>,
) => {
  if (!entries) return entries;

  const idSet = new Set(pokedexEntryIds);

  return entries.map((entry) =>
    idSet.has(entry.pokedexEntryId)
      ? {
          ...entry,
          ...update,
          ...(update.isCaught ? { isSeen: true } : {}),
        }
      : entry,
  );
};

export const derivePokedexSummary = (
  entries: PlayPokedexEntry[] | undefined,
  summary: PlayPokedexOverviewSummary[] | undefined,
) => {
  if (!entries || !summary) return summary;

  const pokedexMap = new Map<
    number,
    {
      totalEntries: number;
      seenCount: number;
      caughtCount: number;
      mythicalCount: number;
      mythicalSeenCount: number;
      mythicalCaughtCount: number;
    }
  >();

  for (const entry of entries) {
    const pokedexId = entry.pokedex.id;

    if (!pokedexMap.has(pokedexId)) {
      pokedexMap.set(pokedexId, {
        totalEntries: 0,
        seenCount: 0,
        caughtCount: 0,
        mythicalCount: 0,
        mythicalSeenCount: 0,
        mythicalCaughtCount: 0,
      });
    }

    const counts = pokedexMap.get(pokedexId);

    if (!counts) continue;

    counts.totalEntries++;

    if (entry.isSeen) counts.seenCount++;
    if (entry.isCaught) counts.caughtCount++;

    if (entry.species.isMythical) {
      counts.mythicalCount++;

      if (entry.isSeen) counts.mythicalSeenCount++;
      if (entry.isCaught) counts.mythicalCaughtCount++;
    }
  }

  return summary.map((item) => {
    const counts = pokedexMap.get(item.pokedexId);
    return counts ? { ...item, ...counts } : item;
  });
};

export const getPokedexMutationContext = async (
  queryClient: QueryClient,
  playId: string,
) => {
  const keys = getPokedexMutationKeys(playId);

  await queryClient.cancelQueries({ queryKey: keys.pokedex });
  await queryClient.cancelQueries({ queryKey: keys.pokedexSummary });

  return {
    keys,
    previousPokedex: queryClient.getQueryData<PlayPokedexEntry[]>(keys.pokedex),
    previousSummary: queryClient.getQueryData<PlayPokedexOverviewSummary[]>(
      keys.pokedexSummary,
    ),
  } satisfies PokedexMutationContext;
};

export const restorePokedexMutationContext = (
  queryClient: QueryClient,
  context?: PokedexMutationContext,
) => {
  if (!context) return;

  queryClient.setQueryData(context.keys.pokedex, context.previousPokedex);
  queryClient.setQueryData(
    context.keys.pokedexSummary,
    context.previousSummary,
  );
};

export const syncPokedexSummaryCache = (
  queryClient: QueryClient,
  context: Pick<PokedexMutationContext, "keys">,
  updatedEntries: PlayPokedexEntry[] | undefined,
) => {
  queryClient.setQueryData<PlayPokedexOverviewSummary[]>(
    context.keys.pokedexSummary,
    (old) => derivePokedexSummary(updatedEntries, old),
  );
};

export const invalidatePokedexQueries = (
  queryClient: QueryClient,
  playId: string,
) => {
  queryClient.invalidateQueries({
    queryKey: playKeys.pokedex(playId),
    exact: true,
  });
  queryClient.invalidateQueries({ queryKey: playKeys.completion(playId) });
};
