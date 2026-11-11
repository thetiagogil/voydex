import {
  readGameBadgeCountsByGameSlug,
  readGameCollectiblesByGameSlug,
  readGameExpansionsByGameSlug,
  readGameShelfGames,
  readGameStartersByGameSlug,
} from "@/modules/reference/features/games/server/game-shelf-reader";
import { readTypeIntroductions } from "@/modules/reference/features/games/server/type-introduction-reader";
import type { GameCatalogue } from "@/modules/reference/features/games/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * Every game, its first partners, its expansions, its badge count and where
 * it keeps collectibles, and every type with its generation (Monotype's
 * pick), for a picker that shows them as soon as it opens (Start a Play,
 * New Play, Home's first Play). Read once by the build into the catalogue
 * file (`gameCatalogueFile`).
 */
export const readGameCatalogue = async (
  supabase: ServerSupabaseClient,
): Promise<GameCatalogue> => {
  const [
    games,
    startersByGameSlug,
    expansionsByGameSlug,
    badgeCountsByGameSlug,
    collectiblesByGameSlug,
    types,
  ] = await Promise.all([
    readGameShelfGames(supabase),
    readGameStartersByGameSlug(supabase),
    readGameExpansionsByGameSlug(supabase),
    readGameBadgeCountsByGameSlug(supabase),
    readGameCollectiblesByGameSlug(supabase),
    readTypeIntroductions(supabase),
  ]);

  return {
    badgeCountsByGameSlug,
    collectiblesByGameSlug,
    expansionsByGameSlug,
    games,
    startersByGameSlug,
    types,
  };
};
