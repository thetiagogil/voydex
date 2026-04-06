import { fetcher } from "@/lib/utils/fetcher";
import type { ServiceResponseWithBreadcrumbs } from "@/types/api";
import type { BaseInfo } from "@/types/common";
import type { GenerationWithGames } from "@/types/gen";
import { useQuery } from "@tanstack/react-query";

// =============================================================================
// GET SINGLE GENERATION
// =============================================================================

export const useGeneration = (generationId: string) => {
  return useQuery<ServiceResponseWithBreadcrumbs<GenerationWithGames>>({
    queryKey: ["reference", "generations", generationId],
    queryFn: () =>
      fetcher<ServiceResponseWithBreadcrumbs<GenerationWithGames>>(
        `/api/reference/gens/${generationId}`,
      ),
    enabled: !!generationId,
  });
};

// =============================================================================
// GET ALL GENERATIONS
// =============================================================================

export const useGenerations = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "generations"],
    queryFn: () => fetcher<BaseInfo[]>("/api/reference/gens"),
    staleTime: 1000 * 60 * 60, // 1 hour
  });
};
