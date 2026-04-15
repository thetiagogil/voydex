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

type TrackingBulkMutationParams = {
  playId: string;
  trackingItemIds: number[];
  categoryId: number;
};

export const useCheckPlayTrackingItemBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      trackingItemIds,
    }: TrackingBulkMutationParams) => {
      return playApi.checkTrackingItemsBulk(playId, trackingItemIds);
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const context = await getTrackingMutationContext(
        queryClient,
        playId,
        categoryId,
      );

      queryClient.setQueryData<PlayTrackingCategory[]>(context.keys.categories, (old) =>
        updateTrackingCategories(old, categoryId, trackingItemIds.length),
      );
      queryClient.setQueriesData<PlayTrackingItem[]>(
        { queryKey: context.keys.itemsPrefix },
        (old) => updateTrackingItems(old, trackingItemIds, true),
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

export const useUncheckPlayTrackingItemBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      trackingItemIds,
    }: TrackingBulkMutationParams) => {
      return playApi.uncheckTrackingItemsBulk(playId, trackingItemIds);
    },
    onMutate: async ({ playId, trackingItemIds, categoryId }) => {
      const context = await getTrackingMutationContext(
        queryClient,
        playId,
        categoryId,
      );

      queryClient.setQueryData<PlayTrackingCategory[]>(context.keys.categories, (old) =>
        updateTrackingCategories(old, categoryId, -trackingItemIds.length),
      );
      queryClient.setQueriesData<PlayTrackingItem[]>(
        { queryKey: context.keys.itemsPrefix },
        (old) => updateTrackingItems(old, trackingItemIds, false),
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
