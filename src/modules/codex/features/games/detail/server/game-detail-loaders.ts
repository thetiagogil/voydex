import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { selectPokedexPreviewEntries } from "@/modules/codex/features/games/detail/data/game-detail-pokedex-previews";
import { getVersionGroupFamilyIds } from "@/modules/reference/features/games/domain/version-groups";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type {
  Game,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  Pokedex,
  PokedexEntry,
  PokemonForm,
  Region,
  VersionGroup,
} from "@/modules/reference/types";

export type GameDetailRows = {
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  generations: Generation[];
  platforms: Platform[];
  pokedexEntries: PokedexEntry[];
  /* The group's Pokédexes and its expansions' (Isle of Armor, Crown Tundra). */
  pokedexes: Pokedex[];
  /* Forms for the first entries of each Pokédex, for the tiles' art strips. */
  previewForms: PokemonForm[];
  relatedGames: Game[];
  regions: Region[];
  /* The base version group the page is about. */
  versionGroup: VersionGroup;
  versionGroups: VersionGroup[];
  /* The group's own games, Sword and Shield. */
  versions: Game[];
};

const loadPokedexPreviewForms = async (
  supabase: ServerSupabaseClient,
  pokedexes: Pokedex[],
  pokedexEntries: PokedexEntry[],
): Promise<PokemonForm[]> => {
  const speciesIds = [
    ...new Set(
      [...selectPokedexPreviewEntries(pokedexes, pokedexEntries).values()]
        .flat()
        .map((entry) => entry.species_id),
    ),
  ];

  if (!speciesIds.length) {
    return [];
  }

  const formsResult = await supabase
    .schema("reference")
    .from("pokemon_forms")
    .select("*")
    .in("species_id", speciesIds)
    .order("species_id", { ascending: true })
    .order("form_order", { ascending: true });

  if (formsResult.error) {
    throw new Error("Unable to load Pokédex preview art.");
  }

  return formsResult.data ?? [];
};

/*
 * One version group's page: its games, its Pokédexes and its expansions'
 * Pokédexes, and the games set in the same generation or region.
 */
export const loadGameDetailRows = async (
  supabase: ServerSupabaseClient,
  versionGroup: VersionGroup,
  versionGroups: VersionGroup[],
): Promise<GameDetailRows> => {
  const familyIds = getVersionGroupFamilyIds(versionGroup, versionGroups);
  const versionsResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("version_group_id", versionGroup.id)
    .order("sort_order", { ascending: true });

  if (versionsResult.error) {
    throw new Error("Unable to load the version group's games.");
  }

  const versions = versionsResult.data ?? [];
  const regionIds = [...new Set(versions.map((game) => game.region_id))];
  const [
    generationsResult,
    regionsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
    pokedexResult,
    relatedGamesResult,
  ] = await Promise.all([
    supabase.schema("reference").from("generations").select("*"),
    supabase.schema("reference").from("regions").select("*"),
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
      .in("version_group_id", familyIds)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .neq("version_group_id", versionGroup.id)
      .or(
        [
          `generation_id.eq.${versionGroup.generation_id}`,
          regionIds.length ? `region_id.in.(${regionIds.join(",")})` : null,
        ]
          .filter(Boolean)
          .join(","),
      )
      .order("sort_order", { ascending: true }),
  ]);

  if (
    generationsResult.error ||
    regionsResult.error ||
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
  const previewForms = await loadPokedexPreviewForms(
    supabase,
    pokedexes,
    pokedexEntries,
  );

  return {
    gamePlatforms: gamePlatformsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    generations: generationsResult.data ?? [],
    platforms: platformsResult.data ?? [],
    pokedexEntries,
    pokedexes,
    previewForms,
    relatedGames: relatedGamesResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroup,
    versionGroups,
    versions,
  };
};
