import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import type { PlayTrackingItem } from "../types";

// =============================================================================
// TYPES
// =============================================================================

interface CheckTrackingParams {
  playId: string;
  trackingItemId: number;
  categoryId: number;
}

interface CheckTrackingBulkParams {
  playId: string;
  trackingItemIds: number[];
  categoryId: number;
}

// =============================================================================
// OPTIMISTIC UPDATE HELPERS
// =============================================================================

const getQueryKeys = (playId: string, categoryId: number) => ({
  itemsPrefix: ["play", playId, "tracking", "category", categoryId],
  categories: ["play", playId, "tracking", "categories"],
  completion: ["play", playId, "completion"],
});

const updateCategoriesOptimistically = (
  old: Record<string, unknown>[],
  categoryId: number,
  delta: number,
) => {
  if (!old) return old;
  return old.map((cat) => {
    if ((cat.id as number) === categoryId) {
      return {
        ...cat,
        completedItems: Math.max(
          0,
          ((cat.completedItems as number) || 0) + delta,
        ),
      };
    }
    return cat;
  });
};

const updateItemsOptimistically = (
  old: PlayTrackingItem[] | undefined,
  itemIds: number[],
  isCompleted: boolean,
) => {
  if (!old) return old;
  const idSet = new Set(itemIds);
  return old.map((item) => {
    if (idSet.has(item.id)) {
      return {
        ...item,
        isCompleted,
        completedAt: isCompleted ? new Date().toISOString() : null,
      };
    }
    return item;
  });
};

// =============================================================================
// CHECK SINGLE TRACKING ITEM
// =============================================================================

export const useCheckPlayTrackingItem = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, trackingItemId }: CheckTrackingParams) => {
      return postFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/tracking/check`,
        { trackingItemId },
      );
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      await qc.cancelQueries({ queryKey: keys.itemsPrefix });
      await qc.cancelQueries({ queryKey: keys.categories });
      const previousCategories = qc.getQueryData(keys.categories);
      const previousItemsCaches: [unknown, PlayTrackingItem[] | undefined][] =
        [];
      qc.setQueryData(keys.categories, (old: Record<string, unknown>[]) =>
        updateCategoriesOptimistically(old, categoryId, 1),
      );
      qc.setQueriesData<PlayTrackingItem[]>(
        { queryKey: keys.itemsPrefix },
        (old) => {
          previousItemsCaches.push([keys.itemsPrefix, old]);
          return updateItemsOptimistically(old, [trackingItemId], true);
        },
      );
      return { previousCategories, previousItemsCaches, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.categories, context.previousCategories);
        for (const [key, data] of context.previousItemsCaches) {
          qc.setQueryData(key as string[], data);
        }
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      qc.invalidateQueries({ queryKey: keys.itemsPrefix });
      qc.invalidateQueries({ queryKey: keys.categories });
      qc.invalidateQueries({ queryKey: keys.completion });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// UNCHECK SINGLE TRACKING ITEM
// =============================================================================

export const useUncheckPlayTrackingItem = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, trackingItemId }: CheckTrackingParams) => {
      return deleteFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/tracking/uncheck?trackingItemId=${trackingItemId}`,
      );
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      await qc.cancelQueries({ queryKey: keys.itemsPrefix });
      await qc.cancelQueries({ queryKey: keys.categories });
      const previousCategories = qc.getQueryData(keys.categories);
      const previousItemsCaches: [unknown, PlayTrackingItem[] | undefined][] =
        [];
      qc.setQueryData(keys.categories, (old: Record<string, unknown>[]) =>
        updateCategoriesOptimistically(old, categoryId, -1),
      );
      qc.setQueriesData<PlayTrackingItem[]>(
        { queryKey: keys.itemsPrefix },
        (old) => {
          previousItemsCaches.push([keys.itemsPrefix, old]);
          return updateItemsOptimistically(old, [trackingItemId], false);
        },
      );
      return { previousCategories, previousItemsCaches, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.categories, context.previousCategories);
        for (const [key, data] of context.previousItemsCaches) {
          qc.setQueryData(key as string[], data);
        }
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      qc.invalidateQueries({ queryKey: keys.itemsPrefix });
      qc.invalidateQueries({ queryKey: keys.categories });
      qc.invalidateQueries({ queryKey: keys.completion });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// CHECK BULK TRACKING ITEMS
// =============================================================================

export const useCheckPlayTrackingItemBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      trackingItemIds,
      categoryId,
    }: CheckTrackingBulkParams) => {
      return postFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/tracking/bulk-check`,
        { trackingItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      await qc.cancelQueries({ queryKey: keys.itemsPrefix });
      await qc.cancelQueries({ queryKey: keys.categories });
      const previousCategories = qc.getQueryData(keys.categories);
      const previousItemsCaches: [unknown, PlayTrackingItem[] | undefined][] =
        [];
      qc.setQueryData(keys.categories, (old: Record<string, unknown>[]) =>
        updateCategoriesOptimistically(old, categoryId, trackingItemIds.length),
      );
      qc.setQueriesData<PlayTrackingItem[]>(
        { queryKey: keys.itemsPrefix },
        (old) => {
          previousItemsCaches.push([keys.itemsPrefix, old]);
          return updateItemsOptimistically(old, trackingItemIds, true);
        },
      );
      return { previousCategories, previousItemsCaches, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.categories, context.previousCategories);
        for (const [key, data] of context.previousItemsCaches) {
          qc.setQueryData(key as string[], data);
        }
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      qc.invalidateQueries({ queryKey: keys.itemsPrefix });
      qc.invalidateQueries({ queryKey: keys.categories });
      qc.invalidateQueries({ queryKey: keys.completion });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// UNCHECK BULK TRACKING ITEMS
// =============================================================================

export const useUncheckPlayTrackingItemBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      trackingItemIds,
      categoryId,
    }: CheckTrackingBulkParams) => {
      return deleteFetcher(
        `/api/features/plays/${encodeURIComponent(playId)}/tracking/bulk-uncheck`,
        { trackingItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      await qc.cancelQueries({ queryKey: keys.itemsPrefix });
      await qc.cancelQueries({ queryKey: keys.categories });
      const previousCategories = qc.getQueryData(keys.categories);
      const previousItemsCaches: [unknown, PlayTrackingItem[] | undefined][] =
        [];
      qc.setQueryData(keys.categories, (old: Record<string, unknown>[]) =>
        updateCategoriesOptimistically(
          old,
          categoryId,
          -trackingItemIds.length,
        ),
      );
      qc.setQueriesData<PlayTrackingItem[]>(
        { queryKey: keys.itemsPrefix },
        (old) => {
          previousItemsCaches.push([keys.itemsPrefix, old]);
          return updateItemsOptimistically(old, trackingItemIds, false);
        },
      );
      return { previousCategories, previousItemsCaches, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.categories, context.previousCategories);
        for (const [key, data] of context.previousItemsCaches) {
          qc.setQueryData(key as string[], data);
        }
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);
      qc.invalidateQueries({ queryKey: keys.itemsPrefix });
      qc.invalidateQueries({ queryKey: keys.categories });
      qc.invalidateQueries({ queryKey: keys.completion });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
