import { useMutation, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayCollectible } from "../types";
import {
  getCollectiblesMutationContext,
  invalidateCollectiblesQueries,
  restoreCollectiblesMutationContext,
  syncCollectiblesSummaryCache,
  updateCollectiblesEntriesState,
  updateCollectiblesEntryState,
} from "./cache/collectibles-cache";

type CollectibleEntryMutationParams = {
  playId: string;
  collectibleEntryId: number;
};

type CollectibleEntriesBulkMutationParams = {
  playId: string;
  collectibleEntryIds: number[];
};

export const useCollectEntry = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: CollectibleEntryMutationParams) => {
      return playApi.collectEntry(playId, collectibleEntryId);
    },
    onMutate: async ({ playId, collectibleEntryId }) => {
      const context = await getCollectiblesMutationContext(queryClient, playId);

      queryClient.setQueryData<PlayCollectible[]>(context.key, (old) =>
        updateCollectiblesEntryState(old, collectibleEntryId, true),
      );
      syncCollectiblesSummaryCache(queryClient, context);

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreCollectiblesMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidateCollectiblesQueries(queryClient, playId);
    },
  });
};

export const useUncollectEntry = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: CollectibleEntryMutationParams) => {
      return playApi.uncollectEntry(playId, collectibleEntryId);
    },
    onMutate: async ({ playId, collectibleEntryId }) => {
      const context = await getCollectiblesMutationContext(queryClient, playId);

      queryClient.setQueryData<PlayCollectible[]>(context.key, (old) =>
        updateCollectiblesEntryState(old, collectibleEntryId, false),
      );
      syncCollectiblesSummaryCache(queryClient, context);

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreCollectiblesMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidateCollectiblesQueries(queryClient, playId);
    },
  });
};

export const useCollectEntriesBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryIds,
    }: CollectibleEntriesBulkMutationParams) => {
      return playApi.collectEntriesBulk(playId, collectibleEntryIds);
    },
    onMutate: async ({ playId, collectibleEntryIds }) => {
      const context = await getCollectiblesMutationContext(queryClient, playId);

      queryClient.setQueryData<PlayCollectible[]>(context.key, (old) =>
        updateCollectiblesEntriesState(old, collectibleEntryIds, true),
      );
      syncCollectiblesSummaryCache(queryClient, context);

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreCollectiblesMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidateCollectiblesQueries(queryClient, playId);
    },
  });
};

export const useUncollectEntriesBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryIds,
    }: CollectibleEntriesBulkMutationParams) => {
      return playApi.uncollectEntriesBulk(playId, collectibleEntryIds);
    },
    onMutate: async ({ playId, collectibleEntryIds }) => {
      const context = await getCollectiblesMutationContext(queryClient, playId);

      queryClient.setQueryData<PlayCollectible[]>(context.key, (old) =>
        updateCollectiblesEntriesState(old, collectibleEntryIds, false),
      );
      syncCollectiblesSummaryCache(queryClient, context);

      return context;
    },
    onError: (_error, _vars, context) => {
      restoreCollectiblesMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidateCollectiblesQueries(queryClient, playId);
    },
  });
};
