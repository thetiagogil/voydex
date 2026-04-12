import { fetcher } from "@/lib/utils/fetcher";
import { useQuery } from "@tanstack/react-query";
import { GenerationOverview } from "../types";

// =============================================================================
// Generation Overview Hook
// =============================================================================

export const useGenerationOverview = (generationId: string) => {
  return useQuery<GenerationOverview>({
    queryKey: ["generation", "overview", generationId],
    queryFn: () =>
      fetcher<GenerationOverview>(
        `/api/features/generations/${generationId}/overview`,
      ),
    enabled: !!generationId,
  });
};
