import { useQuery } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayTrackingCategory } from "../types";
import { playKeys } from "../api/query-keys";

export const usePlayTrackingCategories = (
  playId?: string,
  options?: {
    initialData?: PlayTrackingCategory[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayTrackingCategory[]>({
    queryKey: playId
      ? playKeys.trackingCategories(playId)
      : [...playKeys.all, "tracking", "categories"],
    queryFn: () => playApi.getTrackingCategories(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};
