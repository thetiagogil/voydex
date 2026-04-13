import { fetcher } from "@/lib/utils/fetcher";
import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useEffect } from "react";
import type { PlayOverview } from "../types";

// =============================================================================
// PLAY OVERVIEW — single fetch for initial Play page data
// Seeds individual slice caches so mutation invalidations trigger refetches
// =============================================================================

export const usePlayOverview = (playId?: string) => {
  const queryClient = useQueryClient();

  const query = useQuery<PlayOverview>({
    queryKey: ["play", playId, "overview"],
    queryFn: () =>
      fetcher(`/api/features/plays/${encodeURIComponent(playId!)}/overview`),
    enabled: Boolean(playId),
    staleTime: 1000 * 60 * 5,
  });

  // Seed individual slice caches from overview data
  useEffect(() => {
    if (!query.data || !playId) return;

    const { play, pokemonTeam, trackingCategories, completion } = query.data;

    // Seed play with { data: play } to match the shape from GET /plays/[id]
    queryClient.setQueryData(["play", playId], { data: play });
    queryClient.setQueryData(["play", playId, "pokemon-team"], pokemonTeam);
    queryClient.setQueryData(
      ["play", playId, "tracking", "categories"],
      trackingCategories,
    );
    queryClient.setQueryData(["play", playId, "completion"], completion);
  }, [query.data, playId, queryClient]);

  return query;
};
