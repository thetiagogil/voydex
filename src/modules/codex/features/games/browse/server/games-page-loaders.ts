import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type {
  Game,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  Region,
  VersionGroup,
} from "@/modules/reference/types";

export type GamesPageRows = {
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

export const loadGamesPageRows = async (
  supabase: ServerSupabaseClient,
): Promise<GamesPageRows> => {
  const [
    gamesResult,
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("regions")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_types")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (
    gamesResult.error ||
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error
  ) {
    throw new Error("Unable to load games.");
  }

  return {
    gamePlatforms: gamePlatformsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    platforms: platformsResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
