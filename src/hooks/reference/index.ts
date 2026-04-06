import { fetcher } from "@/lib/utils/fetcher";
import type { BaseInfo } from "@/types/common";
import { useQuery } from "@tanstack/react-query";

/**
 * Factory function for creating simple reference data query hooks.
 * All reference hooks share the same pattern: fetch from /api/reference/{entity}
 * with a 5-minute stale time.
 *
 * @example
 * export const useAbilities = createReferenceQuery<BaseInfo>("abilities");
 * export const useNatures = createReferenceQuery<BaseInfo>("natures");
 *
 * // Usage:
 * const { data: abilities } = useAbilities();
 * const { data: natures } = useNatures(false); // disabled
 */
export const createReferenceQuery = <T>(entity: string) => {
  return (enabled = true) => {
    return useQuery<T[]>({
      queryKey: [entity],
      queryFn: () => fetcher<T[]>(`/api/reference/${entity}`),
      enabled,
      staleTime: 1000 * 60 * 5, // 5 minutes
    });
  };
};

// =============================================================================
// REFERENCE HOOKS
// =============================================================================

export const useAbilities = createReferenceQuery<BaseInfo>("abilities");
export const useMoves = createReferenceQuery<BaseInfo>("moves");
export const useNatures = createReferenceQuery<BaseInfo>("natures");
export const useTypes = createReferenceQuery<BaseInfo>("types");
