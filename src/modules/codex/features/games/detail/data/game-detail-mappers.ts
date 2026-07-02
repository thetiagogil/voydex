import type { GameDetailRows } from "@/modules/codex/features/games/detail/server/game-detail-loaders";
import {
  buildGameCards,
  byId,
  byNullableId,
} from "@/modules/codex/shared/data/reference-data-utils";
import type { Game, GameDetailData } from "@/modules/codex/shared/types";

export const buildGameDetailData = (rows: GameDetailRows): GameDetailData => {
  const [card] = buildGameCards({
    gamePlatforms: rows.gamePlatforms,
    games: [rows.game],
    gameTypes: rows.gameTypes,
    generations: rows.generations,
    platforms: rows.platforms,
    regions: rows.regions,
    versionGroups: rows.versionGroups,
  });
  const gameById = byNullableId([rows.game as Game]);
  const versionGroupById = byId(rows.versionGroups);

  return {
    ...card,
    availablePokemonCount: rows.availabilityCount,
    contentScopes: rows.contentScopes.map((scope) => ({
      game: gameById.get(scope.game_id) ?? null,
      isBaseScope: scope.is_base_scope,
      versionGroup: versionGroupById.get(scope.version_group_id) ?? null,
    })),
    pokedexes: rows.pokedexes,
  };
};
