import { fetcher } from "@/lib/utils/fetcher";
import { useQuery } from "@tanstack/react-query";

// =============================================================================
// GET SINGLE GENERATION
// =============================================================================

export const useGeneration = (generationId: string) => {
  return useQuery({
    queryKey: ["meta", "generations", generationId],
    queryFn: () => fetcher(`/api/meta/gens/${generationId}`),
    enabled: !!generationId,
  });
};

// =============================================================================
// GET ALL GENERATIONS
// =============================================================================

export const useGenerations = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["meta", "generations"],
    queryFn: () => fetcher<BaseInfo[]>("/api/meta/gens"),
    staleTime: 1000 * 60 * 60, // 1 hour
  });
};
