import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { Play } from "../types";
import { playKeys } from "../api/query-keys";

type CreatePlayProps = {
  gameId: number;
  name?: string;
};

type UpdatePlayParams = {
  playId: string;
  updates: {
    name?: string;
    status_slug?: string;
    notes?: string;
    include_pokedex?: boolean;
    include_other_pokedex?: boolean;
    include_mythical_pokemon?: boolean;
  };
};

// =============================================================================
// PLAY
// =============================================================================

export const usePlay = (
  playId?: string,
  options?: {
    initialData?: { data: Play };
    enabled?: boolean;
  },
) => {
  return useQuery<{
    data: Play;
  }>({
    queryKey: playId ? playKeys.detail(playId) : [...playKeys.all, "detail"],
    queryFn: () => playApi.getPlay(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};

// =============================================================================
// CREATE PLAY
// ============================================================================

export const useCreatePlay = () => {
  return useMutation({
    mutationFn: async ({ gameId, name }: CreatePlayProps) => {
      return playApi.createPlay(gameId, name);
    },
  });
};

// =============================================================================
// UPDATE PLAY
// =============================================================================

export const useUpdatePlay = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, updates }: UpdatePlayParams) => {
      return playApi.updatePlay(playId, updates);
    },
    onSuccess: (data, { playId, updates }) => {
      qc.setQueryData(playKeys.detail(playId), data);

      if (
        updates.include_pokedex !== undefined ||
        updates.include_other_pokedex !== undefined ||
        updates.include_mythical_pokemon !== undefined
      ) {
        qc.invalidateQueries({ queryKey: playKeys.completion(playId) });
      }
    },
  });
};

// =============================================================================
// DELETE PLAY
// =============================================================================

export const useDeletePlay = () => {
  return useMutation({
    mutationFn: async (playId: string) => {
      return playApi.deletePlay(playId);
    },
  });
};
