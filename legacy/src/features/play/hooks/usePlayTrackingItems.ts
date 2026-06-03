import { useQuery } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayTrackingItem } from "../types";
import { playKeys } from "../api/query-keys";

export const usePlayTrackingItems = (
  playId?: string,
  categoryId?: number,
  versionGroupId?: number,
) => {
  const enabled = Boolean(
    playId && categoryId !== undefined && categoryId !== null,
  );
  return useQuery<PlayTrackingItem[]>({
    queryKey:
      playId && categoryId !== undefined && categoryId !== null
        ? playKeys.trackingItems(playId, categoryId, versionGroupId)
        : [...playKeys.all, "tracking", "items"],
    queryFn: () => playApi.getTrackingItems(playId!, categoryId!, versionGroupId),
    enabled,
    staleTime: 1000 * 30,
  });
};
