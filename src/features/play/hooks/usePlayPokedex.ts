import { useQuery } from "@tanstack/react-query";
import type { PlayPokedexEntry } from "../types";

export const usePlayPokedex = (playId?: string) => {
  return useQuery<PlayPokedexEntry[]>({
    queryKey: ["play", playId, "pokedex"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/pokedex`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch pokedex entries");
      return data;
    },
    enabled: Boolean(playId),
    staleTime: Infinity,
  });
};
