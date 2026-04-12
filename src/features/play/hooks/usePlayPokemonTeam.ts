import { deleteFetcher, fetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import type { PlayPokemon } from "../types";

// =============================================================================
// GET PLAY POKEMON TEAM
// =============================================================================

export const usePlayPokemonTeam = (playId?: string) => {
  return useQuery<PlayPokemon[]>({
    queryKey: ["play", playId, "pokemon-team"],
    queryFn: () =>
      fetcher(`/api/features/play/${encodeURIComponent(playId!)}/pokemon-team`),
    enabled: Boolean(playId),
    staleTime: 1000 * 30,
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
      return postFetcher(
        `/api/features/play/${encodeURIComponent(playId)}/pokemon-team`,
        pokemon,
      );
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "pokemon-team"],
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "completion"],
      });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
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
      const res = await fetch(
        `/api/features/play/${encodeURIComponent(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(updates),
        },
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to update pokemon");
      return data;
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "pokemon-team"],
      });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
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
      return deleteFetcher(
        `/api/features/play/${encodeURIComponent(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
      );
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "pokemon-team"],
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "completion"],
      });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
