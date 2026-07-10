import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type {
  Game,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonSpecies,
  ResolvedPokemonAvailability,
  Type,
  VersionGroup,
} from "@/modules/reference/types";

export type PokemonMenuReferenceRows = {
  generations: Generation[];
  types: Type[];
  versionGroups: VersionGroup[];
};

export type PokemonMenuPokedexRows = {
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
};

export const loadPokemonMenuGameBySlug = async (
  supabase: ServerSupabaseClient,
  gameSlug: string,
) => {
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load Pokemon menu game.");
  }

  return gameResult.data;
};

export const loadPokemonMenuVersionGroupsForGameScope = async (
  supabase: ServerSupabaseClient,
  game: Game,
) => {
  const versionGroupsResult = await supabase
    .schema("reference")
    .from("version_groups")
    .select("*")
    .eq("generation_id", game.generation_id)
    .order("sort_order", { ascending: true });

  if (versionGroupsResult.error) {
    throw new Error("Unable to load game version groups.");
  }

  const versionGroups = versionGroupsResult.data ?? [];

  return versionGroups.filter((versionGroup) => {
    return (
      versionGroup.id === game.version_group_id ||
      versionGroup.parent_version_group_id === game.version_group_id
    );
  });
};

export const loadPokemonMenuReferenceRows = async (
  supabase: ServerSupabaseClient,
  game: Game,
): Promise<PokemonMenuReferenceRows> => {
  const [typesResult, generationsResult, versionGroups] = await Promise.all([
    supabase
      .schema("reference")
      .from("types")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    loadPokemonMenuVersionGroupsForGameScope(supabase, game),
  ]);

  if (typesResult.error || generationsResult.error) {
    throw new Error("Unable to load game Pokemon reference data.");
  }

  return {
    generations: generationsResult.data ?? [],
    types: typesResult.data ?? [],
    versionGroups,
  };
};

export const loadPokemonMenuAvailabilityRows = async (
  supabase: ServerSupabaseClient,
  versionGroups: VersionGroup[],
) => {
  const versionGroupIds = versionGroups.map((versionGroup) => versionGroup.id);

  if (!versionGroupIds.length) {
    return [];
  }

  return loadPagedReferenceRows<ResolvedPokemonAvailability>(
    (from, to) =>
      supabase
        .schema("views")
        .from("reference_resolved_pokemon_availability")
        .select("*")
        .in("target_version_group_id", versionGroupIds)
        .range(from, to),
    "Unable to load game Pokemon availability.",
  );
};

export const loadPokedexRowsForVersionGroups = async (
  supabase: ServerSupabaseClient,
  versionGroups: VersionGroup[],
): Promise<PokemonMenuPokedexRows> => {
  const versionGroupIds = versionGroups.map((versionGroup) => versionGroup.id);

  if (!versionGroupIds.length) {
    return {
      pokedexEntries: [],
      pokedexes: [],
    };
  }

  const pokedexResult = await supabase
    .schema("reference")
    .from("pokedex")
    .select("*")
    .in("version_group_id", versionGroupIds)
    .order("version_group_id", { ascending: true })
    .order("sort_order", { ascending: true });

  if (pokedexResult.error) {
    throw new Error("Unable to load game Pokedex definitions.");
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
        "Unable to load game Pokedex entries.",
      )
    : [];

  return {
    pokedexEntries,
    pokedexes,
  };
};

export const loadPokemonMenuSpeciesRows = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
) => {
  if (!speciesIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonSpecies>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .in("id", ids)
        .order("national_number", { ascending: true })
        .range(from, to),
    "Unable to load game Pokemon species data.",
  );
};
