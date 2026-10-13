import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
import { getGameKind } from "@/modules/reference/features/games/domain/game-kinds";
import type { GameCard } from "@/modules/reference/features/games/types";
import type {
  Game,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  Region,
  VersionGroup,
} from "@/modules/reference/shared/database-types";
import { byId } from "@/shared/utils/collections";

export const buildGameCards = (params: {
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
}): GameCard[] => {
  const generationById = byId(params.generations);
  const regionById = byId(params.regions);
  const versionGroupById = byId(params.versionGroups);
  const gameTypeById = byId(params.gameTypes);
  const platformById = byId(params.platforms);
  const platformsByGame = new Map<number, Platform[]>();

  for (const gamePlatform of params.gamePlatforms) {
    const platform = platformById.get(gamePlatform.platform_id);

    if (!platform) {
      continue;
    }

    const current = platformsByGame.get(gamePlatform.game_id) ?? [];

    current.push(platform);
    platformsByGame.set(gamePlatform.game_id, current);
  }

  return params.games.map((game) => {
    const gameType = gameTypeById.get(game.game_type_id) ?? null;
    const versionGroup = versionGroupById.get(game.version_group_id);

    if (!versionGroup) {
      throw new Error(`Unable to resolve the version group of ${game.slug}.`);
    }

    return {
      game,
      coverImageUrl: getGameCoverImageUrl(game),
      generation: generationById.get(game.generation_id) ?? null,
      kind: getGameKind(game, gameType),
      region: regionById.get(game.region_id) ?? null,
      versionGroup,
      gameType,
      platforms: platformsByGame.get(game.id) ?? [],
    };
  });
};
