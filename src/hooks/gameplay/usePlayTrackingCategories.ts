import { useQuery, useQueryClient } from "@tanstack/react-query";

export const usePlayTrackingCategories = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "tracking", "categories"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/tracking/categories`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayTrackingPrefetch = () => {
  const qc = useQueryClient();
  return {
    prefetchCategories: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "tracking", "categories"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/categories`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchItems: async (playId: string, categoryId: number) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/category/${categoryId}/items`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchPokemonCaught: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "pokedex"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/pokedex`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
  };
};
