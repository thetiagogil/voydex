import type { Game, GameCard } from "@/modules/codex/shared/types";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import {
  byId,
  type ServerSupabaseClient,
} from "@/modules/mainline/features/play/shared/data/query-utils";
import type { MainlineReferenceRows } from "@/modules/mainline/features/play/types";
import type { ProductFamily } from "@/modules/mainline/shared/types/mainline.types";

export const buildGameOptions = (
  games: Game[],
  referenceRows: MainlineReferenceRows,
): GameCard[] => {
  const generationById = byId(referenceRows.generations);
  const regionById = byId(referenceRows.regions);
  const versionGroupById = byId(referenceRows.versionGroups);
  const platformById = byId(referenceRows.platforms);
  const platformsByGame = new Map<number, GameCard["platforms"]>();

  for (const gamePlatform of referenceRows.gamePlatforms) {
    const platform = platformById.get(gamePlatform.platform_id);

    if (!platform) {
      continue;
    }

    const platforms = platformsByGame.get(gamePlatform.game_id) ?? [];

    platforms.push(platform);
    platformsByGame.set(gamePlatform.game_id, platforms);
  }

  return games.map((game) => ({
    coverImageUrl: getGameCoverImageUrl(game),
    game,
    generation: generationById.get(game.generation_id) ?? null,
    gameType: null,
    platforms: platformsByGame.get(game.id) ?? [],
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
  }));
};

export const getMainlineProductFamily = async (
  supabase: ServerSupabaseClient,
): Promise<ProductFamily | null> => {
  const productFamilyResult = await supabase
    .schema("reference")
    .from("product_families")
    .select("*")
    .eq("slug", "mainline")
    .maybeSingle();

  if (productFamilyResult.error) {
    throw new Error("Unable to load Mainline product family.");
  }

  return productFamilyResult.data ?? null;
};
