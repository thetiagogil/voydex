import { playKeys } from "@/features/play/api/query-keys";
import type {
  PlayTrackingCategory,
  PlayTrackingItem,
} from "@/features/play/types";
import type { QueryClient } from "@tanstack/react-query";

export type TrackingMutationContext = {
  keys: ReturnType<typeof getTrackingMutationKeys>;
  previousCategories: PlayTrackingCategory[] | undefined;
  previousItemsCaches: [readonly unknown[], PlayTrackingItem[] | undefined][];
};

export const getTrackingMutationKeys = (
  playId: string,
  categoryId: number,
) => ({
  itemsPrefix: playKeys.trackingCategoryPrefix(playId, categoryId),
  categories: playKeys.trackingCategories(playId),
  completion: playKeys.completion(playId),
});

export const updateTrackingCategories = (
  categories: PlayTrackingCategory[] | undefined,
  categoryId: number,
  delta: number,
) => {
  return categories?.map((category) =>
    category.id === categoryId
      ? {
          ...category,
          completedItems: Math.max(0, category.completedItems + delta),
        }
      : category,
  );
};

export const updateTrackingItems = (
  items: PlayTrackingItem[] | undefined,
  itemIds: number[],
  isCompleted: boolean,
) => {
  if (!items) return items;

  const idSet = new Set(itemIds);

  return items.map((item) =>
    idSet.has(item.id)
      ? {
          ...item,
          isCompleted,
          completedAt: isCompleted ? new Date().toISOString() : null,
        }
      : item,
  );
};

export const getTrackingMutationContext = async (
  queryClient: QueryClient,
  playId: string,
  categoryId: number,
) => {
  const keys = getTrackingMutationKeys(playId, categoryId);

  await queryClient.cancelQueries({ queryKey: keys.itemsPrefix });
  await queryClient.cancelQueries({ queryKey: keys.categories });

  return {
    keys,
    previousCategories: queryClient.getQueryData<PlayTrackingCategory[]>(
      keys.categories,
    ),
    previousItemsCaches: queryClient.getQueriesData<PlayTrackingItem[]>({
      queryKey: keys.itemsPrefix,
    }),
  } satisfies TrackingMutationContext;
};

export const restoreTrackingMutationContext = (
  queryClient: QueryClient,
  context?: TrackingMutationContext,
) => {
  if (!context) return;

  queryClient.setQueryData(context.keys.categories, context.previousCategories);

  for (const [key, data] of context.previousItemsCaches) {
    queryClient.setQueryData(key, data);
  }
};

export const invalidateTrackingQueries = (
  queryClient: QueryClient,
  playId: string,
  categoryId: number,
) => {
  const keys = getTrackingMutationKeys(playId, categoryId);

  queryClient.invalidateQueries({ queryKey: keys.itemsPrefix });
  queryClient.invalidateQueries({ queryKey: keys.categories });
  queryClient.invalidateQueries({ queryKey: keys.completion });
};
