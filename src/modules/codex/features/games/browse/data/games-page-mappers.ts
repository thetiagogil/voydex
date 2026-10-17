import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import { isGameKind } from "@/modules/reference/features/games/domain/game-kinds";
import {
  buildGameCards,
  compareGamesByRelease,
  normalizeSearchQuery,
  normalizeSlug,
} from "@/modules/reference/reference-data";
import type { GamesPageData } from "@/modules/reference/types";

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
