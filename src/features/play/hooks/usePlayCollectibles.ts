import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import type { PlayCollectible, PlayCollectibleSummary } from "../types";

// =============================================================================
// GET PLAY COLLECTIBLES SUMMARY
// =============================================================================

export const usePlayCollectiblesSummary = (
  playId?: string,
  options?: {
    initialData?: PlayCollectibleSummary[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayCollectibleSummary[]>({
    queryKey: ["play", playId, "collectibles", "summary"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/collectibles/summary`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch collectibles summary");
      return data;
    },
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};

// =============================================================================
// GET PLAY COLLECTIBLES
// =============================================================================

export const usePlayCollectibles = (playId?: string) => {
  return useQuery<PlayCollectible[]>({
    queryKey: ["play", playId, "collectibles"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/collectibles`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch collectibles");
      return data;
    },
    enabled: Boolean(playId),
    staleTime: Infinity,
  });
};

// =============================================================================
// COLLECT / UNCOLLECT SINGLE ENTRY
// =============================================================================

export const useCollectEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: {
      playId: string;
      collectibleEntryId: number;
    }) => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}/collectibles/collect`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ collectibleEntryId }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to collect entry");
      }
      return res.json();
    },
    onMutate: async ({ playId, collectibleEntryId }) => {
      const key = ["play", playId, "collectibles"];
      await qc.cancelQueries({ queryKey: key });
      const previous = qc.getQueryData<PlayCollectible[]>(key);
      qc.setQueryData<PlayCollectible[]>(key, (old) =>
        old?.map((c) => ({
          ...c,
          collectedCount: c.entries.some(
            (e) => e.id === collectibleEntryId && !e.isCollected,
          )
            ? c.collectedCount + 1
            : c.collectedCount,
          entries: c.entries.map((e) =>
            e.id === collectibleEntryId ? { ...e, isCollected: true } : e,
          ),
        })),
      );
      return { previous, key };
    },
    onError: (_err, _vars, context) => {
      if (context) qc.setQueryData(context.key, context.previous);
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "collectibles"] });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

export const useUncollectEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: {
      playId: string;
      collectibleEntryId: number;
    }) => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}/collectibles/uncollect`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ collectibleEntryId }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncollect entry");
      }
      return res.json();
    },
    onMutate: async ({ playId, collectibleEntryId }) => {
      const key = ["play", playId, "collectibles"];
      await qc.cancelQueries({ queryKey: key });
      const previous = qc.getQueryData<PlayCollectible[]>(key);
      qc.setQueryData<PlayCollectible[]>(key, (old) =>
        old?.map((c) => ({
          ...c,
          collectedCount: c.entries.some(
            (e) => e.id === collectibleEntryId && e.isCollected,
          )
            ? c.collectedCount - 1
            : c.collectedCount,
          entries: c.entries.map((e) =>
            e.id === collectibleEntryId ? { ...e, isCollected: false } : e,
          ),
        })),
      );
      return { previous, key };
    },
    onError: (_err, _vars, context) => {
      if (context) qc.setQueryData(context.key, context.previous);
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "collectibles"] });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// BULK COLLECT / UNCOLLECT
// =============================================================================

export const useCollectEntriesBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryIds,
    }: {
      playId: string;
      collectibleEntryIds: number[];
    }) => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}/collectibles/collect-bulk`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ collectibleEntryIds }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to bulk collect entries");
      }
      return res.json();
    },
    onMutate: async ({ playId, collectibleEntryIds }) => {
      const key = ["play", playId, "collectibles"];
      await qc.cancelQueries({ queryKey: key });
      const previous = qc.getQueryData<PlayCollectible[]>(key);
      const idSet = new Set(collectibleEntryIds);
      qc.setQueryData<PlayCollectible[]>(key, (old) =>
        old?.map((c) => {
          const newlyCollected = c.entries.filter(
            (e) => idSet.has(e.id) && !e.isCollected,
          ).length;
          return {
            ...c,
            collectedCount: c.collectedCount + newlyCollected,
            entries: c.entries.map((e) =>
              idSet.has(e.id) ? { ...e, isCollected: true } : e,
            ),
          };
        }),
      );
      return { previous, key };
    },
    onError: (_err, _vars, context) => {
      if (context) qc.setQueryData(context.key, context.previous);
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "collectibles"] });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

export const useUncollectEntriesBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryIds,
    }: {
      playId: string;
      collectibleEntryIds: number[];
    }) => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}/collectibles/uncollect-bulk`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ collectibleEntryIds }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to bulk uncollect entries");
      }
      return res.json();
    },
    onMutate: async ({ playId, collectibleEntryIds }) => {
      const key = ["play", playId, "collectibles"];
      await qc.cancelQueries({ queryKey: key });
      const previous = qc.getQueryData<PlayCollectible[]>(key);
      const idSet = new Set(collectibleEntryIds);
      qc.setQueryData<PlayCollectible[]>(key, (old) =>
        old?.map((c) => {
          const newlyUncollected = c.entries.filter(
            (e) => idSet.has(e.id) && e.isCollected,
          ).length;
          return {
            ...c,
            collectedCount: c.collectedCount - newlyUncollected,
            entries: c.entries.map((e) =>
              idSet.has(e.id) ? { ...e, isCollected: false } : e,
            ),
          };
        }),
      );
      return { previous, key };
    },
    onError: (_err, _vars, context) => {
      if (context) qc.setQueryData(context.key, context.previous);
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "collectibles"] });
      qc.invalidateQueries({ queryKey: ["play", playId, "completion"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
