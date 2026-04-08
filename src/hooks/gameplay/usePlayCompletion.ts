import { useQuery } from "@tanstack/react-query";

export interface PlayCompletionData {
  percentage: number;
  isFullyComplete: boolean;
}

export const usePlayCompletion = (playId?: string) => {
  return useQuery<PlayCompletionData>({
    queryKey: ["play", playId, "completion"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId!)}/completion`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch completion");
      return data;
    },
    enabled: Boolean(playId),
    staleTime: 0,
  });
};
