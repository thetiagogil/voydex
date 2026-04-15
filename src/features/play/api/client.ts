import {
  deleteFetcher,
  fetcher,
  postFetcher,
  putFetcher,
} from "@/lib/utils/fetcher";
import type {
  DecisionOption,
  Play,
  PlayCollectible,
  PlayCollectibleSummary,
  PlayCompletionData,
  PlayPokedexEntry,
  PlayPokedexOverviewSummary,
  PlayPokemon,
  PlayTrackingCategory,
  PlayTrackingItem,
} from "../types";

type UpdatePlayRequest = {
  name?: string;
  status_slug?: string;
  notes?: string;
  include_pokedex?: boolean;
  include_other_pokedex?: boolean;
  include_mythical_pokemon?: boolean;
};

const playRoute = (playId: string) =>
  `/api/features/plays/${encodeURIComponent(playId)}`;

const withParams = (
  path: string,
  params: Record<string, string | number | undefined>,
) => {
  const searchParams = new URLSearchParams();

  Object.entries(params).forEach(([key, value]) => {
    if (value !== undefined) {
      searchParams.set(key, String(value));
    }
  });

  const query = searchParams.toString();
  return query ? `${path}?${query}` : path;
};

export const playApi = {
  createPlay: (gameId: number, name?: string) => {
    return postFetcher<{ id: string }>("/api/features/plays", { gameId, name });
  },
  getPlay: (playId: string) => {
    return fetcher<{ data: Play }>(playRoute(playId));
  },
  updatePlay: (playId: string, updates: UpdatePlayRequest) => {
    return putFetcher<{ data: Play }>(playRoute(playId), updates);
  },
  deletePlay: (playId: string) => {
    return deleteFetcher(playRoute(playId));
  },
  getCompletion: (playId: string) => {
    return fetcher<PlayCompletionData>(`${playRoute(playId)}/completion`);
  },
  getPokemonTeam: (playId: string) => {
    return fetcher<PlayPokemon[]>(`${playRoute(playId)}/pokemon-team`);
  },
  addPokemonToTeam: (playId: string, pokemon: Record<string, unknown>) => {
    return postFetcher(`${playRoute(playId)}/pokemon-team`, pokemon);
  },
  updatePokemonTeam: (
    playId: string,
    pokemonId: string,
    updates: Record<string, unknown>,
  ) => {
    return putFetcher(
      `${playRoute(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
      updates,
    );
  },
  removePokemonFromTeam: (playId: string, pokemonId: string) => {
    return deleteFetcher(
      `${playRoute(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
    );
  },
  getTrackingCategories: (playId: string) => {
    return fetcher<PlayTrackingCategory[]>(
      `${playRoute(playId)}/tracking/categories`,
    );
  },
  getTrackingItems: (
    playId: string,
    categoryId: number,
    versionGroupId?: number,
  ) => {
    return fetcher<PlayTrackingItem[]>(
      withParams(
        `${playRoute(playId)}/tracking/category/${categoryId}/items`,
        { versionGroupId },
      ),
    );
  },
  checkTrackingItem: (playId: string, trackingItemId: number) => {
    return postFetcher(`${playRoute(playId)}/tracking/check`, {
      trackingItemId,
    });
  },
  uncheckTrackingItem: (playId: string, trackingItemId: number) => {
    return deleteFetcher(
      withParams(`${playRoute(playId)}/tracking/uncheck`, { trackingItemId }),
    );
  },
  checkTrackingItemsBulk: (playId: string, trackingItemIds: number[]) => {
    return postFetcher(`${playRoute(playId)}/tracking/bulk-check`, {
      trackingItemIds,
    });
  },
  uncheckTrackingItemsBulk: (playId: string, trackingItemIds: number[]) => {
    return deleteFetcher(`${playRoute(playId)}/tracking/bulk-uncheck`, {
      trackingItemIds,
    });
  },
  getDecisionOptions: (trackingItemId: number) => {
    return fetcher<DecisionOption[]>(
      `/api/features/plays/_/tracking/decision/${trackingItemId}/options`,
    );
  },
  getDecision: (playId: string, trackingItemId: number) => {
    return fetcher<{ selectedOptionId: number | null }>(
      `${playRoute(playId)}/tracking/decision/${trackingItemId}`,
    );
  },
  saveDecision: (
    playId: string,
    trackingItemId: number,
    decisionOptionId: number | null,
  ) => {
    return postFetcher(
      `${playRoute(playId)}/tracking/decision/${trackingItemId}`,
      { decisionOptionId },
    );
  },
  getCollectiblesSummary: (playId: string) => {
    return fetcher<PlayCollectibleSummary[]>(
      `${playRoute(playId)}/collectibles/summary`,
    );
  },
  getCollectibles: (playId: string) => {
    return fetcher<PlayCollectible[]>(`${playRoute(playId)}/collectibles`);
  },
  collectEntry: (playId: string, collectibleEntryId: number) => {
    return postFetcher(`${playRoute(playId)}/collectibles/collect`, {
      collectibleEntryId,
    });
  },
  uncollectEntry: (playId: string, collectibleEntryId: number) => {
    return deleteFetcher(`${playRoute(playId)}/collectibles/uncollect`, {
      collectibleEntryId,
    });
  },
  collectEntriesBulk: (playId: string, collectibleEntryIds: number[]) => {
    return postFetcher(`${playRoute(playId)}/collectibles/collect-bulk`, {
      collectibleEntryIds,
    });
  },
  uncollectEntriesBulk: (playId: string, collectibleEntryIds: number[]) => {
    return deleteFetcher(`${playRoute(playId)}/collectibles/uncollect-bulk`, {
      collectibleEntryIds,
    });
  },
  updateDlcs: (playId: string, versionGroupIds: number[]) => {
    return putFetcher<{ success: boolean; data: Play }>(
      `${playRoute(playId)}/dlc`,
      { versionGroupIds },
    );
  },
  getPokedex: (playId: string) => {
    return fetcher<PlayPokedexEntry[]>(`${playRoute(playId)}/pokedex`);
  },
  getPokedexSummary: (playId: string) => {
    return fetcher<PlayPokedexOverviewSummary[]>(
      `${playRoute(playId)}/pokedex/summary`,
    );
  },
  markPokedexEntryCaught: (playId: string, pokedexEntryId: number) => {
    return postFetcher(`${playRoute(playId)}/pokedex/catch`, {
      pokedexEntryId,
    });
  },
  markPokedexEntrySeen: (playId: string, pokedexEntryId: number) => {
    return postFetcher(`${playRoute(playId)}/pokedex/see`, {
      pokedexEntryId,
    });
  },
  unmarkPokedexEntry: (playId: string, pokedexEntryId: number) => {
    return deleteFetcher(
      withParams(`${playRoute(playId)}/pokedex/unmark`, { pokedexEntryId }),
    );
  },
  markPokedexEntriesCaughtBulk: (playId: string, pokedexEntryIds: number[]) => {
    return postFetcher(`${playRoute(playId)}/pokedex/bulk-catch`, {
      pokedexEntryIds,
    });
  },
  unmarkPokedexEntriesBulk: (playId: string, pokedexEntryIds: number[]) => {
    return deleteFetcher(`${playRoute(playId)}/pokedex/bulk-unmark`, {
      pokedexEntryIds,
    });
  },
};
