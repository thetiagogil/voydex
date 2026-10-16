import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type {
  Ability,
  Game,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  Type,
  VersionGroup,
} from "@/modules/reference/types";
import { getVersionGroupFamilyIds } from "@/modules/reference/features/games/domain/version-groups";

export type GamePokedexBaseRows = {
  games: Game[];
  generations: Generation[];
  types: Type[];
};

/*
 * The Pokédexes one version group page can open: the group's and its
 * expansions'. Small, so the route's layout reads it to settle the address.
 */
export const loadVersionGroupFamilyPokedexes = async (
  supabase: ServerSupabaseClient,
  versionGroup: VersionGroup,
  versionGroups: VersionGroup[],
): Promise<Pokedex[]> => {
  const { data, error } = await supabase
    .schema("reference")
    .from("pokedex")
    .select("*")
    .in(
      "version_group_id",
      getVersionGroupFamilyIds(versionGroup, versionGroups),
    )
    .order("sort_order", { ascending: true });

  if (error) {
    throw new Error("Unable to load Pokedex.");
  }

  return data ?? [];
};

/* What every Pokédex page of one version group needs, whichever Pokédex is open. */
export const loadGamePokedexBaseRows = async (
  supabase: ServerSupabaseClient,
  versionGroup: VersionGroup,
): Promise<GamePokedexBaseRows> => {
  const [typesResult, generationsResult, gamesResult] = await Promise.all([
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
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .eq("version_group_id", versionGroup.id)
      .order("sort_order", { ascending: true }),
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokemon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  if (gamesResult.error) {
    throw new Error("Unable to load the version group's games.");
  }

  return {
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    types: typesResult.data ?? [],
  };
};

export const loadGamePokedexEntries = async (
  supabase: ServerSupabaseClient,
  pokedexId: number,
): Promise<PokedexEntry[]> => {
  return loadPagedReferenceRows<PokedexEntry>(
    (from, to) =>
      supabase
        .schema("reference")
        .from("pokedex_entries")
        .select("*")
        .eq("pokedex_id", pokedexId)
        .order("pokedex_number", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex entries.",
  );
};

/*
 * Which species each of the other Pokédexes lists, for the switch's counts
 * (Galar 400, Isle of Armor 211).
 */
export const loadPokedexSpeciesRows = async (
  supabase: ServerSupabaseClient,
  pokedexIds: number[],
): Promise<Pick<PokedexEntry, "pokedex_id" | "species_id">[]> => {
  if (!pokedexIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<
    Pick<PokedexEntry, "pokedex_id" | "species_id">
  >(
    pokedexIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokedex_entries")
        .select("pokedex_id, species_id")
        .in("pokedex_id", ids)
        .order("pokedex_id", { ascending: true })
        .order("pokedex_number", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex counts.",
  );
};

export const loadGamePokedexSpecies = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
): Promise<PokemonSpecies[]> => {
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
    "Unable to load Pokedex Pokemon.",
  );
};

export const loadGamePokedexForms = async (
  supabase: ServerSupabaseClient,
  speciesIds: number[],
): Promise<PokemonForm[]> => {
  if (!speciesIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonForm>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex Pokemon forms.",
  );
};

export const loadGamePokedexAttributes = async (
  supabase: ServerSupabaseClient,
  formIds: number[],
): Promise<PokemonAttributes[]> => {
  if (!formIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<PokemonAttributes>(
    formIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", ids)
        .order("form_id", { ascending: true })
        .order("generation_start_id", { ascending: false })
        .range(from, to),
    "Unable to load Pokedex Pokemon attributes.",
  );
};

export const loadGamePokedexAbilities = async (
  supabase: ServerSupabaseClient,
  abilityIds: number[],
): Promise<Ability[]> => {
  if (!abilityIds.length) {
    return [];
  }

  return loadChunkedReferenceRows<Ability>(
    abilityIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("abilities")
        .select("*")
        .in("id", ids)
        .order("sort_order", { ascending: true })
        .range(from, to),
    "Unable to load Pokedex Pokemon abilities.",
  );
};
