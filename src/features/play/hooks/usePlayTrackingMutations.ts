import { useMutation, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayTrackingCategory, PlayTrackingItem } from "../types";
import {
  getTrackingMutationContext,
  invalidateTrackingQueries,
  restoreTrackingMutationContext,
  updateTrackingCategories,
  updateTrackingItems,
} from "./cache/tracking-cache";

type TrackingItemMutationParams = {
  playId: string;
  trackingItemId: number;
  categoryId: number;
};

export const useCheckPlayTrackingItem = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, trackingItemId }: TrackingItemMutationParams) => {
      return playApi.checkTrackingItem(playId, trackingItemId);
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const context = await getTrackingMutationContext(
        queryClient,
        playId,
        categoryId,
      );

      queryClient.setQueryData<PlayTrackingCategory[]>(context.keys.categories, (old) =>
        updateTrackingCategories(old, categoryId, 1),
      );
      queryClient.setQueriesData<PlayTrackingItem[]>(
        { queryKey: context.keys.itemsPrefix },
        (old) => updateTrackingItems(old, [trackingItemId], true),
      );

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreTrackingMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      invalidateTrackingQueries(queryClient, playId, categoryId);
    },
  });
};

export const useUncheckPlayTrackingItem = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, trackingItemId }: TrackingItemMutationParams) => {
      return playApi.uncheckTrackingItem(playId, trackingItemId);
    },
    onMutate: async ({ playId, trackingItemId, categoryId }) => {
      const context = await getTrackingMutationContext(
        queryClient,
        playId,
        categoryId,
      );

      queryClient.setQueryData<PlayTrackingCategory[]>(context.keys.categories, (old) =>
        updateTrackingCategories(old, categoryId, -1),
      );
      queryClient.setQueriesData<PlayTrackingItem[]>(
        { queryKey: context.keys.itemsPrefix },
        (old) => updateTrackingItems(old, [trackingItemId], false),
      );

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreTrackingMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      invalidateTrackingQueries(queryClient, playId, categoryId);
    },
  });
};
