import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

interface MarkDexEntryParams {
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
  dex: ["play", playId, "pokedex"],
});

const updateDexOptimistically = (
  old: any[],
  pokedexEntryIds: number[],
  isCaught: boolean,
) => {
  if (!old) return old;
  return old.map((entry: any) =>
    pokedexEntryIds.includes(entry.pokedexEntryId)
      ? { ...entry, isCaught, isSeen: isCaught ? true : entry.isSeen }
      : entry,
  );
};

// =============================================================================
// MARK POKEDEX ENTRY AS CAUGHT
// =============================================================================

export const useMarkPokedexEntryCaught = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkDexEntryParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/catch`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) =>
        updateDexOptimistically(old, [pokedexEntryId], true),
      );

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
  });
};

// =============================================================================
// MARK POKEDEX ENTRY AS SEEN
// =============================================================================

export const useMarkPokedexEntrySeen = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkDexEntryParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/see`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.pokedexEntryId === pokedexEntryId ? { ...entry, isSeen: true } : entry,
        );
      });

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
  });
};

// =============================================================================
// UNMARK POKEDEX ENTRY
// =============================================================================

export const useUnmarkPokedexEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: MarkDexEntryParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/unmark?pokedexEntryId=${pokedexEntryId}`,
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.pokedexEntryId === pokedexEntryId
            ? { ...entry, isSeen: false, isCaught: false }
            : entry,
        );
      });

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
  });
};

// =============================================================================
// BULK MARK POKEDEX ENTRIES AS CAUGHT
// =============================================================================

export const useMarkPokedexEntriesCaughtBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryIds }: MarkPokedexEntriesBulkParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/bulk-catch`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) =>
        updateDexOptimistically(old, pokedexEntryIds, true),
      );

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
    },
  });
};

// =============================================================================
// BULK UNMARK POKEDEX ENTRIES
// =============================================================================

export const useUnmarkPokedexEntriesBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryIds }: MarkPokedexEntriesBulkParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/bulk-unmark`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          pokedexEntryIds.includes(entry.pokedexEntryId)
            ? { ...entry, isSeen: false, isCaught: false }
            : entry,
        );
      });

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
    },
  });
};
