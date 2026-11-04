import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { isNumber } from "@/modules/reference/reference-data";
import type {
  Ability,
  AbilityAttribute,
  EggGroup,
  EvolutionMethod,
  GrowthRate,
  Pokedex,
  PokemonAttributes,
  PokemonEvolutionEdge,
  PokemonForm,
  PokemonPokedexText,
  PokemonTrainingAttributes,
} from "@/modules/reference/types";

type PokemonDetailRelatedRowsParams = {
  attributes: PokemonAttributes[];
  familySpeciesIds: number[];
  pokedexIds: number[];
  speciesId: number;
  supabase: ServerSupabaseClient;
};

/* Where a family member is found, by form (or species-wide) and version group. */
export type PokemonFamilyAvailabilityRow = {
  form_id: number | null;
  species_id: number | null;
  target_version_group_id: number | null;
};

export type PokemonDetailRelatedRows = {
  abilities: Ability[];
  abilityAttributes: AbilityAttribute[];
  eggGroups: EggGroup[];
  evolutionEdges: PokemonEvolutionEdge[];
  familyAttributes: PokemonAttributes[];
  familyAvailability: PokemonFamilyAvailabilityRow[];
  familyForms: PokemonForm[];
  growthRates: GrowthRate[];
  pokedexes: Pokedex[];
  pokedexTexts: PokemonPokedexText[];
  /* The species' training values, every form and every change. */
  trainingAttributes: PokemonTrainingAttributes[];
};

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

export const loadPokemonDetailRelatedRows = async ({
  attributes,
  familySpeciesIds,
  pokedexIds,
  speciesId,
  supabase,
}: PokemonDetailRelatedRowsParams): Promise<PokemonDetailRelatedRows> => {
  const abilityIds = getPokemonAbilityIds(attributes);
  const eggGroupIds = getPokemonEggGroupIds(attributes);
  const [
    abilitiesResult,
    abilityAttributesResult,
    eggGroupsResult,
    pokedexResult,
    familyFormsResult,
    familyAttributesResult,
    evolutionEdgesResult,
    familyAvailabilityResult,
    pokedexTextsResult,
    growthRatesResult,
    trainingResult,
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
    /* Which family members each game hands out: an evolution a game lacks is not shown. */
    familySpeciesIds.length
      ? supabase
          .schema("views")
          .from("reference_resolved_pokemon_availability")
          .select("form_id, species_id, target_version_group_id")
          .in("species_id", familySpeciesIds)
      : Promise.resolve({
          data: [] as PokemonFamilyAvailabilityRow[],
          error: null,
        }),
    supabase
      .schema("reference")
      .from("pokemon_pokedex_texts")
      .select("*")
      .eq("species_id", speciesId),
    supabase
      .schema("reference")
      .from("growth_rates")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("pokemon_training_attributes")
      .select("*")
      .eq("species_id", speciesId)
      .order("form_id", { ascending: true })
      .order("version_group_start_id", { ascending: true }),
  ]);

  if (growthRatesResult.error || trainingResult.error) {
    throw new Error("Unable to load Pokémon training data.");
  }

  if (
    abilitiesResult.error ||
    abilityAttributesResult.error ||
    eggGroupsResult.error
  ) {
    throw new Error("Unable to load Pokémon attribute reference data.");
  }

  if (pokedexResult.error || pokedexTextsResult.error) {
    throw new Error("Unable to load Pokémon Pokédex definitions.");
  }

  if (
    familyFormsResult.error ||
    familyAttributesResult.error ||
    evolutionEdgesResult.error ||
    familyAvailabilityResult.error
  ) {
    throw new Error("Unable to load Pokémon evolution data.");
  }

  return {
    abilities: abilitiesResult.data ?? [],
    abilityAttributes: abilityAttributesResult.data ?? [],
    eggGroups: eggGroupsResult.data ?? [],
    evolutionEdges: evolutionEdgesResult.data ?? [],
    familyAttributes: familyAttributesResult.data ?? [],
    familyAvailability: familyAvailabilityResult.data ?? [],
    familyForms: familyFormsResult.data ?? [],
    growthRates: growthRatesResult.data ?? [],
    pokedexes: pokedexResult.data ?? [],
    pokedexTexts: pokedexTextsResult.data ?? [],
    trainingAttributes: trainingResult.data ?? [],
  };
};

export const loadPokemonDetailEvolutionMethods = async (
  supabase: ServerSupabaseClient,
  evolutionEdges: PokemonEvolutionEdge[],
) => {
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

  return evolutionMethodsResult.data ?? [];
};
