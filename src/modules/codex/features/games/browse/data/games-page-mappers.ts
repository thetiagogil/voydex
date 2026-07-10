import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import {
  byId,
  buildGameCards,
  normalizeSearchQuery,
  normalizeSlug,
  resolveReferenceFilter,
} from "@/modules/reference/reference-data";
import type { GamesPageData } from "@/modules/reference/types";

type GamesPageMapperParams = {
  q?: string | null;
  type?: string | null;
  generation?: string | null;
  region?: string | null;
};

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

export const buildGamesPageData = (
  rows: GamesPageRows,
  params?: GamesPageMapperParams,
): GamesPageData => {
  const requestedQuery = normalizeSearchQuery(params?.q);
  const requestedGeneration = normalizeSlug(params?.generation);
  const requestedRegion = normalizeSlug(params?.region);
  const requestedGameType = normalizeSlug(params?.type);
  const selectedGeneration = resolveReferenceFilter(
    rows.generations,
    requestedGeneration,
  );
  const selectedRegion = resolveReferenceFilter(rows.regions, requestedRegion);
  const selectedGameType = resolveReferenceFilter(
    rows.gameTypes,
    requestedGameType,
  );
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);

  return {
    filters: {
      gameType: selectedGameType?.slug ?? "",
      generation: selectedGeneration?.slug ?? "",
      query: requestedQuery,
      region: selectedRegion?.slug ?? "",
    },
    gameTypes: rows.gameTypes,
    games: buildGameCards({
      gamePlatforms: rows.gamePlatforms,
      games: rows.games,
      gameTypes: rows.gameTypes,
      generations: rows.generations,
      platforms: rows.platforms,
      regions: rows.regions,
      versionGroups: rows.versionGroups,
    }).sort((firstCard, secondCard) => {
      const firstGenerationSortOrder =
        generationById.get(firstCard.game.generation_id)?.sort_order ??
        fallbackSortOrder;
      const secondGenerationSortOrder =
        generationById.get(secondCard.game.generation_id)?.sort_order ??
        fallbackSortOrder;
      const firstVersionGroupSortOrder =
        versionGroupById.get(firstCard.game.version_group_id)?.sort_order ??
        fallbackSortOrder;
      const secondVersionGroupSortOrder =
        versionGroupById.get(secondCard.game.version_group_id)?.sort_order ??
        fallbackSortOrder;

      return (
        firstGenerationSortOrder - secondGenerationSortOrder ||
        firstVersionGroupSortOrder - secondVersionGroupSortOrder ||
        firstCard.game.sort_order - secondCard.game.sort_order ||
        firstCard.game.name.localeCompare(secondCard.game.name)
      );
    }),
    generations: rows.generations,
    regions: rows.regions,
  };
};
