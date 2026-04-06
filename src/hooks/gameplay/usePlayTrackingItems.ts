import { useQuery } from "@tanstack/react-query";

export const usePlayTrackingItems = (playId?: string, categoryId?: number) => {
  const enabled = Boolean(
    playId && categoryId !== undefined && categoryId !== null,
  );
  return useQuery({
    queryKey: ["play", playId, "tracking", "category", categoryId, "items"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/tracking/category/${categoryId}/items`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};
