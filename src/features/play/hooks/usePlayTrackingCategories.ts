import { useQuery, useQueryClient } from "@tanstack/react-query";
import type { PlayTrackingCategory } from "../types";

export const usePlayTrackingCategories = (playId?: string) => {
  return useQuery<PlayTrackingCategory[]>({
    queryKey: ["play", playId, "tracking", "categories"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/tracking/categories`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled: Boolean(playId),
    staleTime: Infinity,
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
            `/api/features/plays/${encodeURIComponent(playId)}/tracking/categories`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchItems: async (
      playId: string,
      categoryId: number,
      versionGroupId?: number,
    ) =>
      qc.prefetchQuery({
        queryKey: [
          "play",
          playId,
          "tracking",
          "category",
          categoryId,
          "vg",
          versionGroupId,
          "items",
        ],
        queryFn: async () => {
          const url = new URL(
            `/api/features/plays/${encodeURIComponent(playId)}/tracking/category/${categoryId}/items`,
            window.location.origin,
          );
          if (versionGroupId !== undefined) {
            url.searchParams.set("versionGroupId", String(versionGroupId));
          }
          const res = await fetch(url.toString());
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
            `/api/features/plays/${encodeURIComponent(playId)}/pokedex`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
  };
};
