import { fetcher } from "@/lib/utils/fetcher";
import { useQuery } from "@tanstack/react-query";
import type { PlayOverview } from "../types";

// =============================================================================
// PLAY OVERVIEW — single fetch for initial Play page data
// The page component is responsible for seeding slice caches synchronously
// =============================================================================

export const usePlayOverview = (playId?: string) => {
  return useQuery<PlayOverview>({
    queryKey: ["play", playId, "overview"],
    queryFn: () =>
      fetcher(`/api/features/plays/${encodeURIComponent(playId!)}/overview`),
    enabled: Boolean(playId),
    staleTime: 1000 * 60 * 5,
  });
};
