import { useQuery } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayPokedexEntry, PlayPokedexOverviewSummary } from "../types";
import { playKeys } from "../api/query-keys";

export const usePlayPokedex = (playId?: string) => {
  return useQuery<PlayPokedexEntry[]>({
    queryKey: playId ? playKeys.pokedex(playId) : [...playKeys.all, "pokedex"],
    queryFn: () => playApi.getPokedex(playId!),
    enabled: Boolean(playId),
    staleTime: Infinity,
  });
};

export const usePlayPokedexSummary = (
  playId?: string,
  options?: {
    initialData?: PlayPokedexOverviewSummary[];
    enabled?: boolean;
  },
) => {
  return useQuery<PlayPokedexOverviewSummary[]>({
    queryKey: playId
      ? playKeys.pokedexSummary(playId)
      : [...playKeys.all, "pokedex", "summary"],
    queryFn: () => playApi.getPokedexSummary(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};
