import { useQuery, useQueryClient } from "@tanstack/react-query";

export const usePlayProgressCategories = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "progress", "categories"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/progress/categories`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayProgressPrefetch = () => {
  const qc = useQueryClient();
  return {
    prefetchCategories: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "progress", "categories"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/progress/categories`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchItems: async (playId: string, categoryId: number) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/progress/category/${categoryId}/items`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchPokemonCaught: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "pokemon-caught"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
  };
};
