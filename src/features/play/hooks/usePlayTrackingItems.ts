import { useQuery } from "@tanstack/react-query";

export const usePlayTrackingItems = (
  playId?: string,
  categoryId?: number,
  versionGroupId?: number,
) => {
  const enabled = Boolean(
    playId && categoryId !== undefined && categoryId !== null,
  );
  return useQuery({
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
        `/api/features/play/${encodeURIComponent(playId!)}/tracking/category/${categoryId}/items`,
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
    enabled,
    staleTime: 1000 * 30,
  });
};
