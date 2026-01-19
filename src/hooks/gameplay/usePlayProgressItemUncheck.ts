import { useMutation, useQueryClient } from "@tanstack/react-query";

export const useUncheckPlayProgressItem = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemId,
    }: {
      playId: string;
      progressItemId: number;
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/uncheck?progressItemId=${progressItemId}`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncheck progress item");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemId, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      // Cancel outgoing refetches
      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      // Snapshot previous values
      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items (set userProgress.completed to false)
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          item.id === progressItemId
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: false,
                  completed_at: null,
                },
              }
            : item,
        );
      });

      // Optimistically update categories (decrement completed count)
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
            const newCompleted = Math.max(0, (cat.items_completed || 0) - 1);
            const total = cat.items_total || 1;
            return {
              ...cat,
              items_completed: newCompleted,
              percentage_completed: (newCompleted / total) * 100,
            };
          }
          return cat;
        });
      });

      return {
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      // Rollback on error
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      // Only refetch items - categories are already correct from optimistic update
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

export const useUncheckPlayProgressItemBulk = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemIds,
      categoryId,
    }: {
      playId: string;
      progressItemIds: number[];
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/bulk-uncheck`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ progressItemIds, categoryId }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncheck progress items");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemIds, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          progressItemIds.includes(item.id)
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: false,
                  completed_at: null,
                },
              }
            : item,
        );
      });

      // Optimistically update categories
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
            const newCompleted = Math.max(
              0,
              (cat.items_completed || 0) - progressItemIds.length,
            );
            const total = cat.items_total || 1;
            return {
              ...cat,
              items_completed: newCompleted,
              percentage_completed: (newCompleted / total) * 100,
            };
          }
          return cat;
        });
      });

      return {
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};
