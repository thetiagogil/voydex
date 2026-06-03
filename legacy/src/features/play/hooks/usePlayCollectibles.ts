import { useQuery } from "@tanstack/react-query";
import { playApi } from "../api/client";
import { playKeys } from "../api/query-keys";
import type { PlayCollectible, PlayCollectibleSummary } from "../types";

export const usePlayCollectibles = (playId?: string) => {
  return useQuery<PlayCollectible[]>({
    queryKey: playId
      ? playKeys.collectibles(playId)
      : [...playKeys.all, "collectibles"],
    queryFn: () => playApi.getCollectibles(playId!),
    enabled: Boolean(playId),
    staleTime: Infinity,
  });
};

export const usePlayCollectiblesSummary = (
  playId?: string,
  options?: {
    initialData?: PlayCollectibleSummary[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayCollectibleSummary[]>({
    queryKey: playId
      ? playKeys.collectiblesSummary(playId)
      : [...playKeys.all, "collectibles", "summary"],
    queryFn: () => playApi.getCollectiblesSummary(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};
