import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type {
  Game,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  Pokedex,
  PokedexEntry,
  Region,
  VersionGroup,
} from "@/modules/reference/types";

export type GameDetailRows = {
  game: Game;
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  generations: Generation[];
  platforms: Platform[];
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  relatedGames: Game[];
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
    relatedGamesResult,
  ] = await Promise.all([
    supabase.schema("reference").from("generations").select("*"),
    supabase.schema("reference").from("regions").select("*"),
    supabase.schema("reference").from("version_groups").select("*"),
    supabase.schema("reference").from("game_types").select("*"),
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
    supabase
      .schema("reference")
      .from("pokedex")
      .select("*")
      .eq("version_group_id", game.version_group_id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .neq("id", game.id)
      .or(
        `generation_id.eq.${game.generation_id},region_id.eq.${game.region_id}`,
      )
      .order("sort_order", { ascending: true }),
  ]);

  if (
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error ||
    pokedexResult.error ||
    relatedGamesResult.error
  ) {
    throw new Error("Unable to load game detail data.");
  }

  const pokedexes = pokedexResult.data ?? [];
  const pokedexIds = pokedexes.map((pokedex) => pokedex.id);
  const pokedexEntries = pokedexIds.length
    ? await loadChunkedReferenceRows<PokedexEntry>(
        pokedexIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokedex_entries")
            .select("*")
            .in("pokedex_id", ids)
            .order("pokedex_id", { ascending: true })
            .order("pokedex_number", { ascending: true })
            .range(from, to),
        "Unable to load game Pokédex entries.",
      )
    : [];

  return {
    game,
    gamePlatforms: gamePlatformsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    generations: generationsResult.data ?? [],
    platforms: platformsResult.data ?? [],
    pokedexEntries,
    pokedexes,
    relatedGames: relatedGamesResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};
