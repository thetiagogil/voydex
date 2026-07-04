import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import {
  byId,
  buildGameCards,
  normalizeSlug,
  resolveReferenceFilter,
} from "@/modules/codex/shared/data/reference-data-utils";
import type { GamesPageData } from "@/modules/codex/shared/types";

type GamesPageMapperParams = {
  generation?: string | null;
  region?: string | null;
};

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

export const buildGamesPageData = (
  rows: GamesPageRows,
  params?: GamesPageMapperParams,
): GamesPageData => {
  const requestedGeneration = normalizeSlug(params?.generation);
  const requestedRegion = normalizeSlug(params?.region);
  const selectedGeneration = resolveReferenceFilter(
    rows.generations,
    requestedGeneration,
  );
  const selectedRegion = resolveReferenceFilter(rows.regions, requestedRegion);
  const filteredGames = rows.games.filter((game) => {
    if (selectedGeneration && game.generation_id !== selectedGeneration.id) {
      return false;
    }

    if (selectedRegion && game.region_id !== selectedRegion.id) {
      return false;
    }

    return true;
  });
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);

  return {
    filters: {
      generation: selectedGeneration?.slug ?? "",
      region: selectedRegion?.slug ?? "",
    },
    games: buildGameCards({
      gamePlatforms: rows.gamePlatforms,
      games: filteredGames,
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
