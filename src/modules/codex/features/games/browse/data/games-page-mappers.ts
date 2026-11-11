import { isGameKind } from "@/modules/reference/features/games/domain/game-kinds";
import {
  buildGameCards,
  compareGamesByRelease,
  normalizeSearchQuery,
  normalizeSlug,
} from "@/modules/reference/reference-data";
import type {
  Game,
  GamePlatform,
  GamesPageData,
  GameType,
  Generation,
  Platform,
  Region,
  VersionGroup,
} from "@/modules/reference/types";

/* The Games browse page's rows (pre-built), mapped with the page's filters. */
export type GamesPageRows = {
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

type GamesPageMapperParams = {
  kind?: string | null;
  q?: string | null;
};

export const buildGamesPageData = (
  rows: GamesPageRows,
  params?: GamesPageMapperParams,
): GamesPageData => {
  const requestedKind = normalizeSlug(params?.kind);
  const compareByRelease = compareGamesByRelease(rows);

  return {
    filters: {
      kind: isGameKind(requestedKind) ? requestedKind : "",
      query: normalizeSearchQuery(params?.q),
    },
    games: buildGameCards(rows).sort((first, second) =>
      compareByRelease(first.game, second.game),
    ),
    regions: rows.regions,
  };
};
