import { useQuery } from "@tanstack/react-query";
import type { PlayTrackingCategory } from "../types";

export const usePlayTrackingCategories = (
  playId?: string,
  options?: {
    initialData?: PlayTrackingCategory[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayTrackingCategory[]>({
    queryKey: ["play", playId, "tracking", "categories"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId!)}/tracking/categories`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch tracking categories");
      return data;
    },
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};
