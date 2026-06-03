import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayPokemon } from "../types";
import { playKeys } from "../api/query-keys";

// =============================================================================
// GET PLAY POKEMON TEAM
// =============================================================================

export const usePlayPokemonTeam = (
  playId?: string,
  options?: {
    initialData?: PlayPokemon[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayPokemon[]>({
    queryKey: playId
      ? playKeys.pokemonTeam(playId)
      : [...playKeys.all, "pokemon-team"],
    queryFn: () => playApi.getPokemonTeam(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};

// =============================================================================
// ADD POKEMON TO TEAM
// =============================================================================

export const useAddPokemonToTeam = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokemon,
    }: {
      playId: string;
      pokemon: Record<string, unknown>;
    }) => {
      return playApi.addPokemonToTeam(playId, pokemon);
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({ queryKey: playKeys.pokemonTeam(playId) });
    },
  });
};

// =============================================================================
// UPDATE POKEMON IN TEAM
// =============================================================================

export const useUpdatePokemonInTeam = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokemonId,
      updates,
    }: {
      playId: string;
      pokemonId: string;
      updates: Record<string, unknown>;
    }) => {
      return playApi.updatePokemonTeam(playId, pokemonId, updates);
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({ queryKey: playKeys.pokemonTeam(playId) });
    },
  });
};

// =============================================================================
// REMOVE POKEMON FROM TEAM
// =============================================================================

export const useRemovePokemonFromTeam = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      pokemonId,
    }: {
      playId: string;
      pokemonId: string;
    }) => {
      return playApi.removePokemonFromTeam(playId, pokemonId);
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({ queryKey: playKeys.pokemonTeam(playId) });
    },
  });
};
