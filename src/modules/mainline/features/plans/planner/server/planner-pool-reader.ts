import { withoutBattleForms } from "@/modules/reference/features/pokemon/data/battle-forms";
import { readBattleFormIds } from "@/modules/reference/features/pokemon/server/battle-form-reader";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/reference/reference-rows";
import type {
  Ability,
  AvailabilityMethod,
  EvolutionMethod,
  Game,
  Generation,
  Nature,
  Pokedex,
  PokedexEntry,
  PokemonAttributes,
  PokemonEvolutionEdge,
  PokemonForm,
  PokemonSpecies,
  Region,
  Type,
  VersionGroup,
} from "@/modules/reference/types";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

export type PlannerAvailabilityRow = {
  availability_method_id: number | null;
  form_id: number | null;
  game_id: number | null;
  source_version_group_id: number | null;
  species_id: number | null;
  target_version_group_id: number | null;
};

/* The catalogue every Planner page reads, whichever version group is open. */
export type PlannerCatalogueRows = {
  games: Game[];
  generations: Generation[];
  regions: Region[];
  types: Type[];
  versionGroups: VersionGroup[];
};

/* One version group's Pokémon and what the Team check knows about them. */
export type PlannerPoolRows = {
  abilities: Pick<Ability, "id" | "name">[];
  /* What each ability does, every version group's row. */
  abilityAttributes: {
    ability_id: number;
    effect_summary: string;
    version_group_start_id: number;
  }[];
  attributes: PokemonAttributes[];
  availability: PlannerAvailabilityRow[];
  availabilityMethods: Pick<AvailabilityMethod, "id" | "slug">[];
  edges: PokemonEvolutionEdge[];
  entries: PokedexEntry[];
  evolutionMethods: Pick<EvolutionMethod, "id" | "slug">[];
  forms: PokemonForm[];
  heldItems: { id: number; name: string }[];
  natures: Pick<
    Nature,
    | "decreased_stat"
    | "id"
    | "increased_stat"
    | "introduced_generation_id"
    | "name"
  >[];
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
};

export const readPlannerCatalogue = async (
  supabase: ServerSupabaseClient,
): Promise<PlannerCatalogueRows> => {
  const reference = supabase.schema("reference");
  const [games, generations, regions, types, versionGroups] = await Promise.all(
    [
      reference.from("games").select("*").order("sort_order"),
      reference.from("generations").select("*").order("sort_order"),
      reference.from("regions").select("*").order("sort_order"),
      reference.from("types").select("*").order("sort_order"),
      reference.from("version_groups").select("*").order("sort_order"),
    ],
  );

  if (
    games.error ||
    generations.error ||
    regions.error ||
    types.error ||
    versionGroups.error
  ) {
    throw new Error("Unable to load the games for the Team Planner.");
  }

  return {
    games: games.data,
    generations: generations.data,
    regions: regions.data,
    types: types.data,
    versionGroups: versionGroups.data,
  };
};

/*
 * A version group family's Pokédexes and their Pokémon (plus any species a
 * saved Plan names), with forms, attributes, abilities, evolutions and the
 * resolved availability the Team check reads.
 */
export const readPlannerPoolRows = async (
  supabase: ServerSupabaseClient,
  familyVersionGroupIds: number[],
  extraSpeciesIds: number[],
): Promise<PlannerPoolRows> => {
  const reference = supabase.schema("reference");
  const pokedexesResult = await reference
    .from("pokedex")
    .select("*")
    .in("version_group_id", familyVersionGroupIds)
    .order("sort_order");

  if (pokedexesResult.error) {
    throw new Error("Unable to load the Pokédexes for the Team Planner.");
  }

  const pokedexes = pokedexesResult.data;
  const entries = await loadChunkedReferenceRows<PokedexEntry>(
    pokedexes.map((pokedex) => pokedex.id),
    (ids, from, to) =>
      reference
        .from("pokedex_entries")
        .select("*")
        .in("pokedex_id", ids)
        .order("pokedex_id")
        .order("pokedex_number")
        .range(from, to),
    "Unable to load the Pokédex entries for the Team Planner.",
  );
  const speciesIds = uniqueNumberIds([
    ...entries.map((entry) => entry.species_id),
    ...extraSpeciesIds,
  ]);

  const [
    species,
    allForms,
    availability,
    methods,
    evolutionMethods,
    natures,
    battleFormIds,
  ] = await Promise.all([
    loadChunkedReferenceRows<PokemonSpecies>(
      speciesIds,
      (ids, from, to) =>
        reference
          .from("pokemon_species")
          .select("*")
          .in("id", ids)
          .order("id")
          .range(from, to),
      "Unable to load Pokémon for the Team Planner.",
    ),
    loadChunkedReferenceRows<PokemonForm>(
      speciesIds,
      (ids, from, to) =>
        reference
          .from("pokemon_forms")
          .select("*")
          .in("species_id", ids)
          .order("species_id")
          .order("form_order")
          .range(from, to),
      "Unable to load Pokémon forms for the Team Planner.",
    ),
    loadPagedReferenceRows<PlannerAvailabilityRow>(
      (from, to) =>
        supabase
          .schema("views")
          .from("reference_resolved_pokemon_availability")
          .select(
            "availability_method_id, form_id, game_id, source_version_group_id, species_id, target_version_group_id",
          )
          .in("target_version_group_id", familyVersionGroupIds)
          .order("id")
          .range(from, to),
      "Unable to load where Pokémon can be found.",
    ),
    reference.from("availability_methods").select("id, slug"),
    reference.from("evolution_methods").select("id, slug"),
    reference
      .from("natures")
      .select(
        "id, introduced_generation_id, name, increased_stat, decreased_stat",
      )
      .order("sort_order"),
    readBattleFormIds(supabase),
  ]);

  if (methods.error || evolutionMethods.error || natures.error) {
    throw new Error("Unable to load the Team Planner's reference data.");
  }

  const forms = withoutBattleForms(allForms, battleFormIds);

  const formIds = forms.map((form) => form.id);
  const [attributes, edges] = await Promise.all([
    loadChunkedReferenceRows<PokemonAttributes>(
      formIds,
      (ids, from, to) =>
        reference
          .from("pokemon_attributes")
          .select("*")
          .in("form_id", ids)
          .order("form_id")
          .order("generation_start_id", { ascending: false })
          .range(from, to),
      "Unable to load Pokémon types for the Team Planner.",
    ),
    loadChunkedReferenceRows<PokemonEvolutionEdge>(
      speciesIds,
      (ids, from, to) =>
        reference
          .from("pokemon_evolution_edges")
          .select("*")
          .or(
            `from_species_id.in.(${ids.join(",")}),to_species_id.in.(${ids.join(",")})`,
          )
          .order("id")
          .range(from, to),
      "Unable to load evolutions for the Team Planner.",
    ),
  ]);
  const abilityIds = uniqueNumberIds(
    attributes.flatMap((attribute) => [
      attribute.primary_ability_id,
      attribute.secondary_ability_id,
      attribute.hidden_ability_id,
    ]),
  );
  const heldItemIds = uniqueNumberIds(edges.map((edge) => edge.held_item_id));
  const [abilities, abilityAttributes, heldItems] = await Promise.all([
    loadChunkedReferenceRows<Pick<Ability, "id" | "name">>(
      abilityIds,
      (ids, from, to) =>
        reference
          .from("abilities")
          .select("id, name")
          .in("id", ids)
          .order("id")
          .range(from, to),
      "Unable to load abilities for the Team Planner.",
    ),
    loadChunkedReferenceRows<PlannerPoolRows["abilityAttributes"][number]>(
      abilityIds,
      (ids, from, to) =>
        reference
          .from("ability_attributes")
          .select("ability_id, version_group_start_id, effect_summary")
          .in("ability_id", ids)
          .order("ability_id")
          .order("version_group_start_id")
          .range(from, to),
      "Unable to load abilities for the Team Planner.",
    ),
    heldItemIds.length
      ? reference.from("items").select("id, name").in("id", heldItemIds)
      : null,
  ]);

  if (heldItems?.error) {
    throw new Error("Unable to load evolution items for the Team Planner.");
  }

  return {
    abilities,
    abilityAttributes,
    attributes,
    availability,
    availabilityMethods: methods.data,
    edges,
    entries,
    evolutionMethods: evolutionMethods.data,
    forms,
    heldItems: heldItems?.data ?? [],
    natures: natures.data,
    pokedexes,
    species,
  };
};
