import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

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
});

const updatePokedexOptimistically = (
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
    mutationFn: async ({ playId, pokedexEntryId }: MarkPokedexEntryParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/catch`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData(keys.pokedex);

      qc.setQueryData(keys.pokedex, (old: any) =>
        updatePokedexOptimistically(old, [pokedexEntryId], true),
      );

      return { previousPokedex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/see`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData(keys.pokedex);

      qc.setQueryData(keys.pokedex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.pokedexEntryId === pokedexEntryId
            ? { ...entry, isSeen: true }
            : entry,
        );
      });

      return { previousPokedex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/unmark?pokedexEntryId=${pokedexEntryId}`,
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData(keys.pokedex);

      qc.setQueryData(keys.pokedex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.pokedexEntryId === pokedexEntryId
            ? { ...entry, isSeen: false, isCaught: false }
            : entry,
        );
      });

      return { previousPokedex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/bulk-catch`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData(keys.pokedex);

      qc.setQueryData(keys.pokedex, (old: any) =>
        updatePokedexOptimistically(old, pokedexEntryIds, true),
      );

      return { previousPokedex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex/bulk-unmark`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData(keys.pokedex);

      qc.setQueryData(keys.pokedex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          pokedexEntryIds.includes(entry.pokedexEntryId)
            ? { ...entry, isSeen: false, isCaught: false }
            : entry,
        );
      });

      return { previousPokedex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.pokedex, context.previousPokedex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
