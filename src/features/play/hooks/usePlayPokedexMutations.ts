import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import type { PlayPokedexEntry, PlayPokedexOverviewSummary } from "../types";

// =============================================================================
// TYPES
// =============================================================================

interface MarkPokedexEntryParams {
  playId: string;
  pokedexEntryId: number;
}

interface MarkPokedexEntriesBulkParams {
  playId: string;
  pokedexEntryIds: number[];
}

// =============================================================================
// OPTIMISTIC UPDATE HELPERS
// =============================================================================

const getQueryKeys = (playId: string) => ({
  pokedex: ["play", playId, "pokedex"],
  pokedexSummary: ["play", playId, "pokedex", "summary"],
});

const updatePokedexOptimistically = (
  old: PlayPokedexEntry[] | undefined,
  pokedexEntryIds: number[],
  update: Partial<Pick<PlayPokedexEntry, "isCaught" | "isSeen">>,
) => {
  if (!old) return old;
  const idSet = new Set(pokedexEntryIds);
  return old.map((entry) =>
    idSet.has(entry.pokedexEntryId)
      ? {
          ...entry,
          ...update,
          // catching always implies seen
          ...(update.isCaught ? { isSeen: true } : {}),
        }
      : entry,
  );
};

/** Derive updated summary counts from the optimistically-updated entries cache */
const deriveSummaryFromEntries = (
  entries: PlayPokedexEntry[] | undefined,
  oldSummary: PlayPokedexOverviewSummary[] | undefined,
): PlayPokedexOverviewSummary[] | undefined => {
  if (!entries || !oldSummary) return oldSummary;
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
    const id = entry.pokedex.id;
    if (!pokedexMap.has(id)) {
      pokedexMap.set(id, {
        totalEntries: 0,
        seenCount: 0,
        caughtCount: 0,
        mythicalCount: 0,
        mythicalSeenCount: 0,
        mythicalCaughtCount: 0,
      });
    }
    const s = pokedexMap.get(id)!;
    s.totalEntries++;
    if (entry.isSeen) s.seenCount++;
    if (entry.isCaught) s.caughtCount++;
    if (entry.species.isMythical) {
      s.mythicalCount++;
      if (entry.isSeen) s.mythicalSeenCount++;
      if (entry.isCaught) s.mythicalCaughtCount++;
    }
  }
  return oldSummary.map((sum) => {
    const counts = pokedexMap.get(sum.pokedexId);
    return counts ? { ...sum, ...counts } : sum;
  });
};

// =============================================================================
// MARK POKEDEX ENTRY AS CAUGHT
// =============================================================================

export const useMarkPokedexEntryCaught = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkPokedexEntryParams) => {
      return postFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/catch`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      await qc.cancelQueries({ queryKey: keys.pokedexSummary });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);
      const previousSummary = qc.getQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
      );

      const updatedEntries = updatePokedexOptimistically(
        previousPokedex,
        [pokedexEntryId],
        { isCaught: true },
      );
      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, updatedEntries);
      qc.setQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
        (old) => deriveSummaryFromEntries(updatedEntries, old),
      );

      return { previousPokedex, previousSummary, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
        qc.setQueryData(context.keys.pokedexSummary, context.previousSummary);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokedex", "summary"],
      });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// MARK POKEDEX ENTRY AS SEEN
// =============================================================================

export const useMarkPokedexEntrySeen = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkPokedexEntryParams) => {
      return postFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/see`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      await qc.cancelQueries({ queryKey: keys.pokedexSummary });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);
      const previousSummary = qc.getQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
      );

      const updatedEntries = updatePokedexOptimistically(
        previousPokedex,
        [pokedexEntryId],
        { isSeen: true },
      );
      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, updatedEntries);
      qc.setQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
        (old) => deriveSummaryFromEntries(updatedEntries, old),
      );

      return { previousPokedex, previousSummary, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
        qc.setQueryData(context.keys.pokedexSummary, context.previousSummary);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokedex", "summary"],
      });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// UNMARK POKEDEX ENTRY
// =============================================================================

export const useUnmarkPokedexEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkPokedexEntryParams) => {
      return deleteFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/unmark?pokedexEntryId=${pokedexEntryId}`,
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      await qc.cancelQueries({ queryKey: keys.pokedexSummary });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);
      const previousSummary = qc.getQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
      );

      const updatedEntries = updatePokedexOptimistically(
        previousPokedex,
        [pokedexEntryId],
        { isSeen: false, isCaught: false },
      );
      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, updatedEntries);
      qc.setQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
        (old) => deriveSummaryFromEntries(updatedEntries, old),
      );

      return { previousPokedex, previousSummary, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
        qc.setQueryData(context.keys.pokedexSummary, context.previousSummary);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokedex", "summary"],
      });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// BULK MARK POKEDEX ENTRIES AS CAUGHT
// =============================================================================

export const useMarkPokedexEntriesCaughtBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokedexEntryIds,
    }: MarkPokedexEntriesBulkParams) => {
      return postFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/bulk-catch`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      await qc.cancelQueries({ queryKey: keys.pokedexSummary });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);
      const previousSummary = qc.getQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
      );

      const updatedEntries = updatePokedexOptimistically(
        previousPokedex,
        pokedexEntryIds,
        { isCaught: true },
      );
      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, updatedEntries);
      qc.setQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
        (old) => deriveSummaryFromEntries(updatedEntries, old),
      );

      return { previousPokedex, previousSummary, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
        qc.setQueryData(context.keys.pokedexSummary, context.previousSummary);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokedex", "summary"],
      });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// BULK UNMARK POKEDEX ENTRIES
// =============================================================================

export const useUnmarkPokedexEntriesBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokedexEntryIds,
    }: MarkPokedexEntriesBulkParams) => {
      return deleteFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/bulk-unmark`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      await qc.cancelQueries({ queryKey: keys.pokedexSummary });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);
      const previousSummary = qc.getQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
      );

      const updatedEntries = updatePokedexOptimistically(
        previousPokedex,
        pokedexEntryIds,
        { isSeen: false, isCaught: false },
      );
      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, updatedEntries);
      qc.setQueryData<PlayPokedexOverviewSummary[]>(
        keys.pokedexSummary,
        (old) => deriveSummaryFromEntries(updatedEntries, old),
      );

      return { previousPokedex, previousSummary, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
        qc.setQueryData(context.keys.pokedexSummary, context.previousSummary);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokedex", "summary"],
      });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
