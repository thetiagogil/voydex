import { buildGameDetailPickerGroups } from "@/modules/codex/features/games/detail/data/game-detail-picker-options";
import { getCodexVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";
import { readGameCatalogue } from "@/modules/reference/features/games/server/game-catalogue-query";

/*
 * The crumb picker's games: the cached game catalogue for the release order
 * and covers, and the route's version groups (already read for the guard)
 * for their names.
 */
export const getGameDetailPickerGroups = async () => {
  const [{ games }, { versionGroups }] = await Promise.all([
    readGameCatalogue(),
    getCodexVersionGroupRouteRows(),
  ]);

  return buildGameDetailPickerGroups(games, versionGroups);
};
