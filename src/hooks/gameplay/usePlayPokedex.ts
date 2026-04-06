import type { PlayPokedexEntry } from "@/types/play";
import { useQuery } from "@tanstack/react-query";

export const usePlayPokedex = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery<PlayPokedexEntry[]>({
    queryKey: ["play", playId, "pokedex"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/pokedex`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch pokedex entries");
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};
