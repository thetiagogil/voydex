import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import {
  buildGameCards,
  normalizeSlug,
  resolveReferenceFilter,
} from "@/modules/codex/shared/data/reference-data-utils";
import type { GamesPageData } from "@/modules/codex/shared/types";

type GamesPageMapperParams = {
  generation?: string | null;
  region?: string | null;
};

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
    }),
    generations: rows.generations,
    regions: rows.regions,
  };
};
