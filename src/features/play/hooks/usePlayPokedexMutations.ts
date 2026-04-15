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

type PokedexEntryMutationParams = {
  playId: string;
  pokedexEntryId: number;
};

export const useMarkPokedexEntryCaught = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: PokedexEntryMutationParams) => {
      return playApi.markPokedexEntryCaught(playId, pokedexEntryId);
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        [pokedexEntryId],
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

export const useMarkPokedexEntrySeen = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: PokedexEntryMutationParams) => {
      return playApi.markPokedexEntrySeen(playId, pokedexEntryId);
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        [pokedexEntryId],
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

export const useUnmarkPokedexEntry = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokedexEntryId }: PokedexEntryMutationParams) => {
      return playApi.unmarkPokedexEntry(playId, pokedexEntryId);
    },
    onMutate: async ({ playId, pokedexEntryId }) => {
      const context = await getPokedexMutationContext(queryClient, playId);
      const updatedEntries = updatePokedexEntries(
        context.previousPokedex,
        [pokedexEntryId],
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
