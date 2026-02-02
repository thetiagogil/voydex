import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export const usePlays = () => {
  return useQuery({
    queryKey: ["plays"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/plays");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch plays");
      return data as GamePlaySummary[];
    },
    staleTime: 1000 * 30,
  });
};

export const usePlayStatuses = () => {
  return useQuery({
    queryKey: ["playStatuses"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/play-statuses");
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch play statuses");
      return data as PlayStatusInfo[];
    },
    staleTime: 1000 * 60 * 60, // 1 hour - statuses rarely change
  });
};

interface CreatePlayParams {
  gameId: number;
  name?: string;
}

export const useCreatePlay = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ gameId, name }: CreatePlayParams) => {
      const res = await fetch("/api/gameplay/plays", {
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
    },
  });
};

interface UpdatePlayParams {
  playId: string;
  updates: {
    name?: string;
    status_id?: number;
    notes?: string;
    include_unique_pokemon?: boolean;
    include_regional_dex?: boolean;
    include_national_dex?: boolean;
    include_mythical_pokemon?: boolean;
  };
}

export const useUpdatePlay = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, updates }: UpdatePlayParams) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}`,
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
      queryClient.invalidateQueries({ queryKey: ["plays"] });
      queryClient.invalidateQueries({ queryKey: ["play", playId] });
    },
  });
};

export const useDeletePlay = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async (playId: string) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}`,
        {
          method: "DELETE",
        },
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to delete play");
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["plays"] });
    },
  });
};
