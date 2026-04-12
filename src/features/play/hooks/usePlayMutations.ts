import { deleteFetcher } from "@/lib/utils/fetcher";
import type { PlayStatusInfo } from "@/shared/types";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

// =============================================================================
// PLAY STATUSES
// =============================================================================

export const usePlayStatuses = () => {
  return useQuery<PlayStatusInfo[]>({
    queryKey: ["playStatuses"],
    queryFn: async () => {
      const res = await fetch("/api/features/play/statuses");
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch play statuses");
      return data;
    },
    staleTime: 1000 * 60 * 60,
  });
};

// =============================================================================
// UPDATE PLAY
// =============================================================================

interface UpdatePlayParams {
  playId: string;
  updates: {
    name?: string;
    status_id?: number;
    notes?: string;
    include_pokedex?: boolean;
    include_other_pokedex?: boolean;
    include_mythical_pokemon?: boolean;
  };
}

export const useUpdatePlay = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, updates }: UpdatePlayParams) => {
      const res = await fetch(
        `/api/features/play/${encodeURIComponent(playId)}`,
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
      return deleteFetcher(`/api/features/play/${encodeURIComponent(playId)}`);
    },
    onSuccess: () => {
      qc.invalidateQueries({ queryKey: ["plays"] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
