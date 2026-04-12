import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import type { PlayPokedexEntry } from "../types";

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
  old: PlayPokedexEntry[] | undefined,
  pokedexEntryIds: number[],
  isCaught: boolean,
) => {
  if (!old) return old;
  return old.map((entry) =>
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
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/catch`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);

      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, (old) =>
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
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/see`,
        { pokedexEntryId },
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);

      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, (old) => {
        if (!old) return old;
        return old.map((entry) =>
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
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/unmark?pokedexEntryId=${pokedexEntryId}`,
      );
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);

      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, (old) => {
        if (!old) return old;
        return old.map((entry) =>
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
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/bulk-catch`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);

      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, (old) =>
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
        `/api/features/plays/${encodeURIComponent(playId)}/pokedex/bulk-unmark`,
        { pokedexEntryIds },
      );
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.pokedex });
      const previousPokedex = qc.getQueryData<PlayPokedexEntry[]>(keys.pokedex);

      qc.setQueryData<PlayPokedexEntry[]>(keys.pokedex, (old) => {
        if (!old) return old;
        return old.map((entry) =>
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
