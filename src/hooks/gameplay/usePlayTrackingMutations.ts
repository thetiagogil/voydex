import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

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
  items: ["play", playId, "tracking", "category", categoryId, "items"],
  categories: ["play", playId, "tracking", "categories"],
});

const updateItemsOptimistically = (
  old: any[],
  itemIds: number[],
  completed: boolean,
) => {
  if (!old) return old;
  return old.map((item: any) =>
    itemIds.includes(item.id)
      ? {
          ...item,
          isCompleted: completed,
          completedAt: completed ? new Date().toISOString() : null,
        }
      : item,
  );
};

const updateCategoriesOptimistically = (
  old: any[],
  categoryId: number,
  delta: number,
) => {
  if (!old) return old;
  return old.map((cat: any) => {
    if (cat.id === categoryId) {
      return {
        ...cat,
        completedItems: Math.max(0, (cat.completedItems || 0) + delta),
      };
    }
    return cat;
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/check`,
        { trackingItemId },
      );
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, [trackingItemId], true),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, categoryId, 1),
      );

      return { previousItems, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.items, context.previousItems);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/uncheck?trackingItemId=${trackingItemId}`,
      );
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, [trackingItemId], false),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, categoryId, -1),
      );

      return { previousItems, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.items, context.previousItems);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/bulk-check`,
        { trackingItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, trackingItemIds, true),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, categoryId, trackingItemIds.length),
      );

      return { previousItems, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.items, context.previousItems);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/bulk-uncheck`,
        { trackingItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, trackingItemIds, false),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(
          old,
          categoryId,
          -trackingItemIds.length,
        ),
      );

      return { previousItems, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.items, context.previousItems);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
    },
  });
};
