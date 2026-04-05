import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

interface MarkDexEntryParams {
  playId: string;
  dexEntryId: number;
}

interface MarkDexEntriesBulkParams {
  playId: string;
  dexEntryIds: number[];
}

// =============================================================================
// OPTIMISTIC UPDATE HELPERS
// =============================================================================

const getQueryKeys = (playId: string) => ({
  dex: ["play", playId, "dex"],
});

const updateDexOptimistically = (
  old: any[],
  dexEntryIds: number[],
  isCaught: boolean,
) => {
  if (!old) return old;
  return old.map((entry: any) =>
    dexEntryIds.includes(entry.dexEntryId)
      ? { ...entry, isCaught, isSeen: isCaught ? true : entry.isSeen }
      : entry,
  );
};

// =============================================================================
// MARK DEX ENTRY AS CAUGHT
// =============================================================================

export const useMarkDexEntryCaught = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, dexEntryId }: MarkDexEntryParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/dex/catch`,
        { dexEntryId },
      );
    },
    onMutate: async ({ playId, dexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) =>
        updateDexOptimistically(old, [dexEntryId], true),
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
// MARK DEX ENTRY AS SEEN
// =============================================================================

export const useMarkDexEntrySeen = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, dexEntryId }: MarkDexEntryParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/dex/see`,
        { dexEntryId },
      );
    },
    onMutate: async ({ playId, dexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.dexEntryId === dexEntryId ? { ...entry, isSeen: true } : entry,
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
// UNMARK DEX ENTRY
// =============================================================================

export const useUnmarkDexEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, dexEntryId }: MarkDexEntryParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/dex/unmark?dexEntryId=${dexEntryId}`,
      );
    },
    onMutate: async ({ playId, dexEntryId }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          entry.dexEntryId === dexEntryId
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
// BULK MARK DEX ENTRIES AS CAUGHT
// =============================================================================

export const useMarkDexEntriesCaughtBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, dexEntryIds }: MarkDexEntriesBulkParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/dex/bulk-catch`,
        { dexEntryIds },
      );
    },
    onMutate: async ({ playId, dexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) =>
        updateDexOptimistically(old, dexEntryIds, true),
      );

      return { previousDex, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.dex, context.previousDex);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "dex"] });
    },
  });
};

// =============================================================================
// BULK UNMARK DEX ENTRIES
// =============================================================================

export const useUnmarkDexEntriesBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, dexEntryIds }: MarkDexEntriesBulkParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/dex/bulk-unmark`,
        { dexEntryIds },
      );
    },
    onMutate: async ({ playId, dexEntryIds }) => {
      const keys = getQueryKeys(playId);
      await qc.cancelQueries({ queryKey: keys.dex });
      const previousDex = qc.getQueryData(keys.dex);

      qc.setQueryData(keys.dex, (old: any) => {
        if (!old) return old;
        return old.map((entry: any) =>
          dexEntryIds.includes(entry.dexEntryId)
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
      qc.invalidateQueries({ queryKey: ["play", playId, "dex"] });
    },
  });
};
