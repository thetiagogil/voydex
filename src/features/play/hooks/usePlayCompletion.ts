import { useQuery } from "@tanstack/react-query";
import type { PlayCompletionData } from "../types";

export const usePlayCompletion = (playId?: string) => {
  return useQuery<PlayCompletionData>({
    queryKey: ["play", playId, "completion"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/completion`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch completion");
      return data;
    },
    enabled: Boolean(playId),
    staleTime: Infinity,
  });
};
