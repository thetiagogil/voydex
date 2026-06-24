import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  Pokedex,
  PokemonDetailData,
  PokemonFormSummary,
} from "@/modules/codex/types";
import {
  byId,
  isNumber,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/data/query-utils";

export const getPokemonDetailData = async (
  slug: string,
): Promise<PokemonDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const [
    speciesResult,
    typesResult,
    generationsResult,
    availabilityMethodsResult,
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
      .from("availability_methods")
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
    availabilityMethodsResult.error
  ) {
    throw new Error("Unable to load Pokémon reference data.");
  }

  if (versionGroupsResult.error) {
    throw new Error("Unable to load version groups.");
  }

  const species = speciesResult.data;
  const [
    formsResult,
    attributesResult,
    availabilityResult,
    pokedexEntriesResult,
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
      .order("target_version_group_id", { ascending: true })
      .limit(80),
    supabase
      .schema("reference")
      .from("pokedex_entries")
      .select("*")
      .eq("species_id", species.id)
      .limit(40),
  ]);

  if (formsResult.error || attributesResult.error || availabilityResult.error) {
    throw new Error("Unable to load Pokémon detail data.");
  }

  if (pokedexEntriesResult.error) {
    throw new Error("Unable to load Pokémon Pokédex entries.");
  }

  const availabilityRows = availabilityResult.data ?? [];
  const gameIds = [
    ...new Set(availabilityRows.map((row) => row.game_id).filter(isNumber)),
  ];
  const pokedexIds = [
    ...new Set(
      (pokedexEntriesResult.data ?? [])
        .map((row) => row.pokedex_id)
        .filter(isNumber),
    ),
  ];
  const [gamesResult, pokedexResult] = await Promise.all([
    gameIds.length
      ? supabase.schema("reference").from("games").select("*").in("id", gameIds)
      : Promise.resolve({ data: [] as Game[], error: null }),
    pokedexIds.length
      ? supabase
          .schema("reference")
          .from("pokedex")
          .select("*")
          .in("id", pokedexIds)
      : Promise.resolve({ data: [] as Pokedex[], error: null }),
  ]);

  if (gamesResult.error) {
    throw new Error("Unable to load Pokémon game availability.");
  }

  if (pokedexResult.error) {
    throw new Error("Unable to load Pokémon Pokédex definitions.");
  }

  const typeById = byId(typesResult.data ?? []);
  const generationById = byId(generationsResult.data ?? []);
  const methodById = byId(availabilityMethodsResult.data ?? []);
  const versionGroupById = byId(versionGroupsResult.data ?? []);
  const gameById = byId(gamesResult.data ?? []);
  const pokedexById = byId(pokedexResult.data ?? []);
  const latestAttributesByFormId = selectLatestAttributes(
    attributesResult.data ?? [],
  );
  const forms: PokemonFormSummary[] = (formsResult.data ?? []).map((form) => {
    const latestAttributes = latestAttributesByFormId.get(form.id) ?? null;

    return {
      form,
      latestAttributes,
      typePair: resolveTypePair(latestAttributes, typeById),
      introducedGeneration:
        generationById.get(form.introduced_generation_id) ?? null,
    };
  });

  return {
    species,
    forms,
    availability: availabilityRows.map((availability) => ({
      availability,
      game: availability.game_id
        ? (gameById.get(availability.game_id) ?? null)
        : null,
      method: availability.availability_method_id
        ? (methodById.get(availability.availability_method_id) ?? null)
        : null,
      targetVersionGroup: availability.target_version_group_id
        ? (versionGroupById.get(availability.target_version_group_id) ?? null)
        : null,
      sourceVersionGroup: availability.source_version_group_id
        ? (versionGroupById.get(availability.source_version_group_id) ?? null)
        : null,
    })),
    pokedexEntries: (pokedexEntriesResult.data ?? []).map((entry) => ({
      entry,
      pokedex: pokedexById.get(entry.pokedex_id) ?? null,
    })),
  };
};
