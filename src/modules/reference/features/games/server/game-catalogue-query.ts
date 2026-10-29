import { unstable_cache } from "next/cache";

import {
  readGameBadgeCountsByGameSlug,
  readGameExpansionsByGameSlug,
  readGameShelfGames,
  readGameStartersByGameSlug,
} from "@/modules/reference/features/games/server/game-shelf-reader";
import { readTypeIntroductions } from "@/modules/reference/features/games/server/type-introduction-reader";
import type { GameCatalogue } from "@/modules/reference/features/games/types";
import { createPublicSupabaseClient } from "@/platform/supabase/public-client";

/* Reference data only changes when it is reseeded: a day is plenty. */
const GAME_CATALOGUE_REVALIDATE_SECONDS = 60 * 60 * 24;

/*
 * Part of the cache key: bump it whenever the catalogue's shape changes, so a
 * cached copy from before is never read as the new shape.
 */
const GAME_CATALOGUE_CACHE_VERSION = "4";

/*
 * Every game, its first partners, its expansions and its badge count, and
 * every type with its generation (Monotype's pick), for a picker that shows
 * them as soon as it opens (Start a Play, New Play, Home's first Play). Read
 * without a session and cached across requests; `reference-games` revalidates
 * it.
 */
export const readGameCatalogue = unstable_cache(
  async (): Promise<GameCatalogue> => {
    const supabase = createPublicSupabaseClient();
    const [
      games,
      startersByGameSlug,
      expansionsByGameSlug,
      badgeCountsByGameSlug,
      types,
    ] = await Promise.all([
      readGameShelfGames(supabase),
      readGameStartersByGameSlug(supabase),
      readGameExpansionsByGameSlug(supabase),
      // The badge count only adds a line: unreadable, it leaves the line out.
      readGameBadgeCountsByGameSlug(supabase).catch(() => ({})),
      readTypeIntroductions(supabase),
    ]);

    return {
      badgeCountsByGameSlug,
      expansionsByGameSlug,
      games,
      startersByGameSlug,
      types,
    };
  },
  ["reference-game-catalogue", GAME_CATALOGUE_CACHE_VERSION],
  {
    revalidate: GAME_CATALOGUE_REVALIDATE_SECONDS,
    tags: ["reference-games"],
  },
);
