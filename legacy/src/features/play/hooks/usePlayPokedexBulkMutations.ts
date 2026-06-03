import { useMutation, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayPokedexEntry } from "../types";
import {
  getPokedexMutationContext,
  invalidatePokedexQueries,
  restorePokedexMutationContext,
  syncPokedexSummaryCache,
  updatePokedexEntries,
} from "./cache/pokedex-cache";

type PokedexEntriesBulkMutationParams = {
  playId: string;
  pokedexEntryIds: number[];
};

export const useMarkPokedexEntriesCaughtBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokedexEntryIds,
    }: PokedexEntriesBulkMutationParams) => {
      return playApi.markPokedexEntriesCaughtBulk(playId, pokedexEntryIds);
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        pokedexEntryIds,
        { isCaught: true },
      );

      queryClient.setQueryData<PlayPokedexEntry[]>(
        context.keys.pokedex,
        updatedEntries,
      );
      syncPokedexSummaryCache(queryClient, context, updatedEntries);

      return context;
    },
    onError: (_error, _vars, context) => {
      restorePokedexMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidatePokedexQueries(queryClient, playId);
    },
  });
};

export const useMarkPokedexEntriesSeenBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokedexEntryIds,
    }: PokedexEntriesBulkMutationParams) => {
      return playApi.markPokedexEntriesSeenBulk(playId, pokedexEntryIds);
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        pokedexEntryIds,
        { isSeen: true },
      );

      queryClient.setQueryData<PlayPokedexEntry[]>(
        context.keys.pokedex,
        updatedEntries,
      );
      syncPokedexSummaryCache(queryClient, context, updatedEntries);

      return context;
    },
    onError: (_error, _vars, context) => {
      restorePokedexMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidatePokedexQueries(queryClient, playId);
    },
  });
};

export const useUnmarkPokedexEntriesBulk = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokedexEntryIds,
    }: PokedexEntriesBulkMutationParams) => {
      return playApi.unmarkPokedexEntriesBulk(playId, pokedexEntryIds);
    },
    onMutate: async ({ playId, pokedexEntryIds }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        pokedexEntryIds,
        { isSeen: false, isCaught: false },
      );

      queryClient.setQueryData<PlayPokedexEntry[]>(
        context.keys.pokedex,
        updatedEntries,
      );
      syncPokedexSummaryCache(queryClient, context, updatedEntries);

      return context;
    },
    onError: (_error, _vars, context) => {
      restorePokedexMutationContext(queryClient, context);
    },
    onSettled: (_data, _error, { playId }) => {
      invalidatePokedexQueries(queryClient, playId);
    },
  });
};
