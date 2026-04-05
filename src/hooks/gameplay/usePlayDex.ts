import type { PlayDexEntry } from "@/types/play";
import { useQuery } from "@tanstack/react-query";

export const usePlayDex = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery<PlayDexEntry[]>({
    queryKey: ["play", playId, "dex"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/dex`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch dex entries");
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};
