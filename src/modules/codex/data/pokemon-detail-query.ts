import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  buildPokemonEvolutionFamily,
  buildPokemonFormSummaries,
  buildPokemonGenerationDetails,
  resolveDefaultPokemonForm,
} from "@/modules/codex/data/pokemon-detail-mappers";
import { byId, isNumber } from "@/modules/codex/data/query-utils";
import type {
  Ability,
  AbilityAttribute,
  EggGroup,
  EvolutionMethod,
  Pokedex,
  PokemonAttributes,
  PokemonDetailData,
  PokemonEvolutionEdge,
  PokemonForm,
  PokemonSpecies,
} from "@/modules/codex/types";

const getPokemonAbilityIds = (attributes: PokemonAttributes[]) => {
  return [
    ...new Set(
      attributes
        .flatMap((attribute) => [
          attribute.primary_ability_id,
          attribute.secondary_ability_id,
          attribute.hidden_ability_id,
        ])
        .filter(isNumber),
    ),
  ];
};

const getPokemonEggGroupIds = (attributes: PokemonAttributes[]) => {
  return [
    ...new Set(
      attributes
        .flatMap((attribute) => [
          attribute.primary_egg_group_id,
          attribute.secondary_egg_group_id,
        ])
        .filter(isNumber),
    ),
  ];
};

export const getPokemonDetailData = async (
  slug: string,
): Promise<PokemonDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const [
    speciesResult,
    typesResult,
    generationsResult,
    gamesResult,
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
    familySpeciesResult.error
  ) {
    throw new Error("Unable to load Pokémon detail data.");
  }

  if (pokedexEntriesResult.error) {
    throw new Error("Unable to load Pokémon Pokédex entries.");
  }

  const familySpecies = familySpeciesResult.data?.length
    ? familySpeciesResult.data
    : [species];
  const attributes = attributesResult.data ?? [];
  const familySpeciesIds = familySpecies.map((pokemonSpecies) => {
    return pokemonSpecies.id;
  });
  const abilityIds = getPokemonAbilityIds(attributes);
  const eggGroupIds = getPokemonEggGroupIds(attributes);
  const availabilityRows = availabilityResult.data ?? [];
  const pokedexIds = [
    ...new Set(
      (pokedexEntriesResult.data ?? [])
        .map((row) => row.pokedex_id)
        .filter(isNumber),
    ),
  ];
  const [
    abilitiesResult,
    abilityAttributesResult,
    eggGroupsResult,
    pokedexResult,
    familyFormsResult,
    familyAttributesResult,
    evolutionEdgesResult,
  ] = await Promise.all([
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("abilities")
          .select("*")
          .in("id", abilityIds)
      : Promise.resolve({ data: [] as Ability[], error: null }),
    abilityIds.length
      ? supabase
          .schema("reference")
          .from("ability_attributes")
          .select("*")
          .in("ability_id", abilityIds)
      : Promise.resolve({ data: [] as AbilityAttribute[], error: null }),
    eggGroupIds.length
      ? supabase
          .schema("reference")
          .from("egg_groups")
          .select("*")
          .in("id", eggGroupIds)
          .order("sort_order", { ascending: true })
      : Promise.resolve({ data: [] as EggGroup[], error: null }),
    pokedexIds.length
      ? supabase
          .schema("reference")
          .from("pokedex")
          .select("*")
          .in("id", pokedexIds)
      : Promise.resolve({ data: [] as Pokedex[], error: null }),
    familySpeciesIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("*")
          .in("species_id", familySpeciesIds)
          .order("species_id", { ascending: true })
          .order("form_order", { ascending: true })
      : Promise.resolve({ data: [] as PokemonForm[], error: null }),
    familySpeciesIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("*")
          .in("species_id", familySpeciesIds)
      : Promise.resolve({ data: [] as PokemonAttributes[], error: null }),
    familySpeciesIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_evolution_edges")
          .select("*")
          .in("from_species_id", familySpeciesIds)
          .order("sort_order", { ascending: true })
      : Promise.resolve({ data: [] as PokemonEvolutionEdge[], error: null }),
  ]);

  if (
    abilitiesResult.error ||
    abilityAttributesResult.error ||
    eggGroupsResult.error
  ) {
    throw new Error("Unable to load Pokémon attribute reference data.");
  }

  if (pokedexResult.error) {
    throw new Error("Unable to load Pokémon Pokédex definitions.");
  }

  if (
    familyFormsResult.error ||
    familyAttributesResult.error ||
    evolutionEdgesResult.error
  ) {
    throw new Error("Unable to load Pokémon evolution data.");
  }

  const evolutionEdges = evolutionEdgesResult.data ?? [];
  const evolutionMethodIds = [
    ...new Set(
      evolutionEdges.map((edge) => edge.evolution_method_id).filter(isNumber),
    ),
  ];
  const evolutionMethodsResult = evolutionMethodIds.length
    ? await supabase
        .schema("reference")
        .from("evolution_methods")
        .select("*")
        .in("id", evolutionMethodIds)
    : { data: [] as EvolutionMethod[], error: null };

  if (evolutionMethodsResult.error) {
    throw new Error("Unable to load Pokémon evolution methods.");
  }

  const typeById = byId(typesResult.data ?? []);
  const generationById = byId(generationsResult.data ?? []);
  const methodById = byId(availabilityMethodsResult.data ?? []);
  const versionGroupById = byId(versionGroupsResult.data ?? []);
  const gameById = byId(gamesResult.data ?? []);
  const pokedexById = byId(pokedexResult.data ?? []);
  const forms = buildPokemonFormSummaries({
    attributes,
    forms: formsResult.data ?? [],
    generationById,
    typeById,
  });
  const availability = availabilityRows.map((availabilityRow) => ({
    availability: availabilityRow,
    game: availabilityRow.game_id
      ? (gameById.get(availabilityRow.game_id) ?? null)
      : null,
    method: availabilityRow.availability_method_id
      ? (methodById.get(availabilityRow.availability_method_id) ?? null)
      : null,
    sourceVersionGroup: availabilityRow.source_version_group_id
      ? (versionGroupById.get(availabilityRow.source_version_group_id) ?? null)
      : null,
    targetVersionGroup: availabilityRow.target_version_group_id
      ? (versionGroupById.get(availabilityRow.target_version_group_id) ?? null)
      : null,
  }));
  const pokedexEntries = (pokedexEntriesResult.data ?? []).map((entry) => ({
    entry,
    pokedex: pokedexById.get(entry.pokedex_id) ?? null,
  }));
  const data = {
    abilities: abilitiesResult.data ?? [],
    abilityAttributes: abilityAttributesResult.data ?? [],
    availability,
    defaultForm: null,
    eggGroups: eggGroupsResult.data ?? [],
    evolutionFamily: buildPokemonEvolutionFamily({
      attributes: familyAttributesResult.data ?? [],
      edges: evolutionEdges,
      forms: familyFormsResult.data ?? [],
      generationById,
      methods: evolutionMethodsResult.data ?? [],
      species: familySpecies as PokemonSpecies[],
      typeById,
    }),
    forms,
    generationDetails: buildPokemonGenerationDetails({
      availability,
      forms,
      games: gamesResult.data ?? [],
      generations: generationsResult.data ?? [],
      pokedexEntries,
      species,
      typeById,
      versionGroupById,
    }),
    pokedexEntries,
    species,
  } satisfies PokemonDetailData;

  return {
    ...data,
    defaultForm: resolveDefaultPokemonForm(data),
  };
};
