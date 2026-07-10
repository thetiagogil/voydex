import { getGameCoverImageUrl } from "@/modules/reference/features/games/data/game-images";
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

  return params.games.map((game) => ({
    game,
    coverImageUrl: getGameCoverImageUrl(game),
    generation: generationById.get(game.generation_id) ?? null,
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    gameType: gameTypeById.get(game.game_type_id) ?? null,
    platforms: platformsByGame.get(game.id) ?? [],
  }));
};
