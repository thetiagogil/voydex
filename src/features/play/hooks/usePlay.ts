import { deleteFetcher, fetcher } from "@/lib/utils/fetcher";
import type { PlayStatusInfo } from "@/shared/types";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import type { Play } from "../types";

type CreatePlayProps = {
  gameId: number;
  name?: string;
};

type UpdatePlayParams = {
  playId: string;
  updates: {
    name?: string;
    status_id?: number;
    notes?: string;
    include_pokedex?: boolean;
    include_other_pokedex?: boolean;
    include_mythical_pokemon?: boolean;
  };
};

// =============================================================================
// PLAY
// =============================================================================

export const usePlay = (playId?: string) => {
  return useQuery<{
    data: Play;
  }>({
    queryKey: ["play", playId],
    queryFn: () =>
      fetcher(`/api/features/plays/${encodeURIComponent(playId!)}`),
    enabled: Boolean(playId),
    staleTime: 1000 * 30,
  });
};

// =============================================================================
// PLAY STATUSES
// =============================================================================

export const usePlayStatuses = () => {
  return useQuery<PlayStatusInfo[]>({
    queryKey: ["playStatuses"],
    queryFn: async () => {
      const res = await fetch("/api/features/plays/statuses");
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch play statuses");
      return data;
    },
    staleTime: 1000 * 60 * 60,
  });
};

// =============================================================================
// CREATE PLAY
// ============================================================================

export const useCreatePlay = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ gameId, name }: CreatePlayProps) => {
      const res = await fetch("/api/features/plays", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ gameId, name }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to create play");
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["plays"] });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
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
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(updates),
        },
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to update play");
      return data;
    },
    onSuccess: (_, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId] });
      qc.invalidateQueries({ queryKey: ["plays"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};

// =============================================================================
// DELETE PLAY
// =============================================================================

export const useDeletePlay = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async (playId: string) => {
      return deleteFetcher(`/api/features/plays/${encodeURIComponent(playId)}`);
    },
    onSuccess: () => {
      qc.invalidateQueries({ queryKey: ["plays"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
