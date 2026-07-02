import type { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  GameContentScope,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  Pokedex,
  Region,
  VersionGroup,
} from "@/modules/codex/shared/types";

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

export type GameDetailRows = {
  availabilityCount: number;
  contentScopes: GameContentScope[];
  game: Game;
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  generations: Generation[];
  platforms: Platform[];
  pokedexes: Pokedex[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

export const loadGameDetailRows = async (
  supabase: ServerSupabaseClient,
  slug: string,
): Promise<GameDetailRows | null> => {
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", slug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load game.");
  }

  if (!gameResult.data) {
    return null;
  }

  const game = gameResult.data;
  const [
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
    pokedexResult,
    contentScopesResult,
    availabilityCountResult,
  ] = await Promise.all([
    supabase.schema("reference").from("generations").select("*"),
    supabase.schema("reference").from("regions").select("*"),
    supabase.schema("reference").from("version_groups").select("*"),
    supabase.schema("reference").from("game_types").select("*"),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .eq("game_id", game.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokedex")
      .select("*")
      .eq("version_group_id", game.version_group_id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_content_scopes")
      .select("*")
      .eq("game_id", game.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("species_id", { count: "exact", head: true })
      .eq("game_id", game.id),
  ]);

  if (
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error ||
    pokedexResult.error ||
    contentScopesResult.error ||
    availabilityCountResult.error
  ) {
    throw new Error("Unable to load game detail data.");
  }

  return {
    availabilityCount: availabilityCountResult.count ?? 0,
    contentScopes: contentScopesResult.data ?? [],
    game,
    gamePlatforms: gamePlatformsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    generations: generationsResult.data ?? [],
    platforms: platformsResult.data ?? [],
    pokedexes: pokedexResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
