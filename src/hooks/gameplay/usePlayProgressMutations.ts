import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

interface CheckProgressParams {
  playId: string;
  progressItemId: number;
  categoryId: number;
}

interface CheckProgressBulkParams {
  playId: string;
  progressItemIds: number[];
  categoryId: number;
}

// =============================================================================
// OPTIMISTIC UPDATE HELPERS
// =============================================================================

const getQueryKeys = (playId: string, categoryId: number) => ({
  items: ["play", playId, "progress", "category", categoryId, "items"],
  categories: ["play", playId, "progress", "categories"],
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
// CHECK SINGLE PROGRESS ITEM
// =============================================================================

export const useCheckPlayProgressItem = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, progressItemId }: CheckProgressParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/check`,
        { progressItemId },
      );
    },
    onMutate: async ({ playId, progressItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, [progressItemId], true),
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
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

// =============================================================================
// UNCHECK SINGLE PROGRESS ITEM
// =============================================================================

export const useUncheckPlayProgressItem = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, progressItemId }: CheckProgressParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/uncheck?progressItemId=${progressItemId}`,
      );
    },
    onMutate: async ({ playId, progressItemId, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, [progressItemId], false),
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
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

// =============================================================================
// CHECK BULK PROGRESS ITEMS
// =============================================================================

export const useCheckPlayProgressItemBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      progressItemIds,
      categoryId,
    }: CheckProgressBulkParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/bulk-check`,
        { progressItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, progressItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, progressItemIds, true),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, categoryId, progressItemIds.length),
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
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

// =============================================================================
// UNCHECK BULK PROGRESS ITEMS
// =============================================================================

export const useUncheckPlayProgressItemBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      progressItemIds,
      categoryId,
    }: CheckProgressBulkParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/bulk-uncheck`,
        { progressItemIds, categoryId },
      );
    },
    onMutate: async ({ playId, progressItemIds, categoryId }) => {
      const keys = getQueryKeys(playId, categoryId);

      await qc.cancelQueries({ queryKey: keys.items });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousItems = qc.getQueryData(keys.items);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.items, (old: any) =>
        updateItemsOptimistically(old, progressItemIds, false),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(
          old,
          categoryId,
          -progressItemIds.length,
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
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};
