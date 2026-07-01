import type { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  AvailabilityMethod,
  Game,
  Generation,
  LearnMethod,
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
  PokemonSpecies,
  ResolvedPokemonAvailability,
  ResolvedPokemonLearnset,
  Type,
  VersionGroup,
} from "@/modules/codex/shared/types";

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

export type PokemonDetailBaseRows = {
  availabilityMethods: AvailabilityMethod[];
  games: Game[];
  generations: Generation[];
  learnMethods: LearnMethod[];
  species: PokemonSpecies;
  types: Type[];
  versionGroups: VersionGroup[];
};

export type PokemonDetailSpeciesRows = {
  attributes: PokemonAttributes[];
  availabilityRows: ResolvedPokemonAvailability[];
  familySpecies: PokemonSpecies[];
  forms: PokemonForm[];
  learnsetRows: ResolvedPokemonLearnset[];
  pokedexEntries: PokedexEntry[];
};

export const loadPokemonDetailBaseRows = async (
  supabase: ServerSupabaseClient,
  slug: string,
): Promise<PokemonDetailBaseRows | null> => {
  const [
    speciesResult,
    typesResult,
    generationsResult,
    gamesResult,
    availabilityMethodsResult,
    learnMethodsResult,
    versionGroupsResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_species")
      .select("*")
      .eq("slug", slug)
      .maybeSingle(),
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
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("availability_methods")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("learn_methods")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (speciesResult.error) {
    throw new Error("Unable to load Pokémon species.");
  }

  if (!speciesResult.data) {
    return null;
  }

  if (
    typesResult.error ||
    generationsResult.error ||
    gamesResult.error ||
    availabilityMethodsResult.error ||
    learnMethodsResult.error
  ) {
    throw new Error("Unable to load Pokémon reference data.");
  }

  if (versionGroupsResult.error) {
    throw new Error("Unable to load version groups.");
  }

  return {
    availabilityMethods: availabilityMethodsResult.data ?? [],
    games: gamesResult.data ?? [],
    generations: generationsResult.data ?? [],
    learnMethods: learnMethodsResult.data ?? [],
    species: speciesResult.data,
    types: typesResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
  };
};

export const loadPokemonDetailSpeciesRows = async (
  supabase: ServerSupabaseClient,
  species: PokemonSpecies,
): Promise<PokemonDetailSpeciesRows> => {
  const [
    formsResult,
    attributesResult,
    availabilityResult,
    learnsetResult,
    pokedexEntriesResult,
    familySpeciesResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("*")
      .eq("species_id", species.id)
      .order("form_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select("*")
      .eq("species_id", species.id)
      .order("generation_start_id", { ascending: false }),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("*")
      .eq("species_id", species.id)
      .order("target_version_group_id", { ascending: true }),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_learnsets")
      .select("*")
      .eq("species_id", species.id)
      .order("target_version_group_id", { ascending: true })
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokedex_entries")
      .select("*")
      .eq("species_id", species.id)
      .order("pokedex_id", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokemon_species")
      .select("*")
      .eq("evolution_family_id", species.evolution_family_id)
      .order("national_number", { ascending: true }),
  ]);

  if (
    formsResult.error ||
    attributesResult.error ||
    availabilityResult.error ||
    learnsetResult.error ||
    familySpeciesResult.error
  ) {
    throw new Error("Unable to load Pokémon detail data.");
  }

  if (pokedexEntriesResult.error) {
    throw new Error("Unable to load Pokémon Pokédex entries.");
  }

  return {
    attributes: attributesResult.data ?? [],
    availabilityRows: availabilityResult.data ?? [],
    familySpecies: familySpeciesResult.data?.length
      ? familySpeciesResult.data
      : [species],
    forms: formsResult.data ?? [],
    learnsetRows: learnsetResult.data ?? [],
    pokedexEntries: pokedexEntriesResult.data ?? [],
  };
};
