import { useQuery } from "@tanstack/react-query";

export const usePlayPokemonCaught = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "pokemon-caught"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/pokemon-caught`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};
