import type { GamesPageRows } from "@/modules/codex/features/games/browse/server/games-page-loaders";
import { isGameKind } from "@/modules/reference/features/games/domain/game-kinds";
import {
  byId,
  buildGameCards,
  normalizeSearchQuery,
  normalizeSlug,
} from "@/modules/reference/reference-data";
import type { GameCard, GamesPageData } from "@/modules/reference/types";

type GamesPageMapperParams = {
  kind?: string | null;
  q?: string | null;
};

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

/* Release order: by generation, then by year within it, then the series' own order. */
export const compareGamesByRelease = (
  rows: Pick<GamesPageRows, "generations" | "versionGroups">,
) => {
  const generationById = byId(rows.generations);
  const versionGroupById = byId(rows.versionGroups);

  return (first: GameCard, second: GameCard) => {
    const getGenerationOrder = (card: GameCard) =>
      generationById.get(card.game.generation_id)?.sort_order ??
      fallbackSortOrder;
    const getVersionGroupOrder = (card: GameCard) =>
      versionGroupById.get(card.game.version_group_id)?.sort_order ??
      fallbackSortOrder;

    return (
      getGenerationOrder(first) - getGenerationOrder(second) ||
      first.game.release_year - second.game.release_year ||
      getVersionGroupOrder(first) - getVersionGroupOrder(second) ||
      first.game.sort_order - second.game.sort_order ||
      first.game.name.localeCompare(second.game.name)
    );
  };
};

export const buildGamesPageData = (
  rows: GamesPageRows,
  params?: GamesPageMapperParams,
): GamesPageData => {
  const requestedKind = normalizeSlug(params?.kind);

  return {
    filters: {
      kind: isGameKind(requestedKind) ? requestedKind : "",
      query: normalizeSearchQuery(params?.q),
    },
    games: buildGameCards(rows).sort(compareGamesByRelease(rows)),
    regions: rows.regions,
  };
};
