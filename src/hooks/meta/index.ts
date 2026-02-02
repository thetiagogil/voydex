import { fetcher } from "@/lib/utils/fetcher";
import { useQuery } from "@tanstack/react-query";

/**
 * Factory function for creating simple meta data query hooks.
 * All meta hooks share the same pattern: fetch from /api/meta/{entity}
 * with a 5-minute stale time.
 *
 * @example
 * export const useAbilities = createMetaQuery<BaseInfo>("abilities");
 * export const useNatures = createMetaQuery<BaseInfo>("natures");
 *
 * // Usage:
 * const { data: abilities } = useAbilities();
 * const { data: natures } = useNatures(false); // disabled
 */
export const createMetaQuery = <T>(entity: string) => {
  return (enabled = true) => {
    return useQuery<T[]>({
      queryKey: [entity],
      queryFn: () => fetcher<T[]>(`/api/meta/${entity}`),
      enabled,
      staleTime: 1000 * 60 * 5, // 5 minutes
    });
  };
};

// =============================================================================
// META HOOKS
// =============================================================================

export const useAbilities = createMetaQuery<BaseInfo>("abilities");
export const useMoves = createMetaQuery<BaseInfo>("moves");
export const useNatures = createMetaQuery<BaseInfo>("natures");
export const useTypes = createMetaQuery<BaseInfo>("types");
