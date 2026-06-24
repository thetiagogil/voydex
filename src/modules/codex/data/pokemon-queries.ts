import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  PokedexPageData,
  PokedexPageFilters,
  PokemonAttributes,
  PokemonForm,
} from "@/modules/codex/types";
import {
  POKEDEX_PAGE_SIZE,
  byId,
  isNumber,
  normalizePage,
  normalizeRarityFilter,
  normalizeSearchQuery,
  normalizeSlug,
  resolveReferenceFilter,
  resolveTypePair,
  selectLatestAttributes,
} from "@/modules/codex/data/query-utils";

export const getPokedexPageData = async (params?: {
  generation?: string | null;
  page?: string | number | null;
  q?: string | null;
  rarity?: string | null;
  type?: string | null;
}): Promise<PokedexPageData> => {
  const supabase = await createServerSupabaseClient();
  const searchQuery = normalizeSearchQuery(params?.q);
  const requestedGeneration = normalizeSlug(params?.generation);
  const requestedType = normalizeSlug(params?.type);
  const rarity = normalizeRarityFilter(params?.rarity);
  const page = normalizePage(params?.page);
  const offset = (page - 1) * POKEDEX_PAGE_SIZE;

  const [typesResult, generationsResult] = await Promise.all([
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
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokemon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
  }

  const types = typesResult.data ?? [];
  const generations = generationsResult.data ?? [];
  const selectedGeneration = resolveReferenceFilter(
    generations,
    requestedGeneration,
  );
  const selectedType = resolveReferenceFilter(types, requestedType);
  let typeSpeciesIds: number[] | null = null;

  if (requestedType) {
    if (!selectedType) {
      typeSpeciesIds = [];
    } else {
      const typeAttributesResult = await supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("species_id")
        .or(
          `primary_type_id.eq.${selectedType.id},secondary_type_id.eq.${selectedType.id}`,
        );

      if (typeAttributesResult.error) {
        throw new Error("Unable to filter Pokemon by type.");
      }

      typeSpeciesIds = Array.from(
        new Set(
          (typeAttributesResult.data ?? [])
            .map((row) => row.species_id)
            .filter(isNumber),
        ),
      );
    }
  }

  const filters: PokedexPageFilters = {
    generation: selectedGeneration?.slug ?? "",
    page,
    query: searchQuery,
    rarity,
    type: selectedType?.slug ?? "",
  };

  if (typeSpeciesIds && !typeSpeciesIds.length) {
    return {
      filters,
      generations,
      pagination: {
        page,
        pageSize: POKEDEX_PAGE_SIZE,
        totalCount: 0,
        totalPages: 1,
      },
      pokemon: [],
      searchQuery,
      types,
    };
  }

  let speciesQuery = supabase
    .schema("reference")
    .from("pokemon_species")
    .select("*", { count: "exact" })
    .order("national_number", { ascending: true });
  const nationalNumber = Number(searchQuery);

  if (searchQuery && Number.isInteger(nationalNumber)) {
    speciesQuery = speciesQuery.eq("national_number", nationalNumber);
  } else if (searchQuery) {
    speciesQuery = speciesQuery.ilike("name", `%${searchQuery}%`);
  }

  if (selectedGeneration) {
    speciesQuery = speciesQuery.eq(
      "introduced_generation_id",
      selectedGeneration.id,
    );
  }

  if (rarity === "legendary") {
    speciesQuery = speciesQuery.eq("is_legendary", true);
  } else if (rarity === "mythical") {
    speciesQuery = speciesQuery.eq("is_mythical", true);
  } else if (rarity === "standard") {
    speciesQuery = speciesQuery
      .eq("is_legendary", false)
      .eq("is_mythical", false);
  }

  if (typeSpeciesIds) {
    speciesQuery = speciesQuery.in("id", typeSpeciesIds);
  }

  const speciesResult = await speciesQuery.range(
    offset,
    offset + POKEDEX_PAGE_SIZE - 1,
  );

  if (speciesResult.error) {
    throw new Error("Unable to load Pokedex species.");
  }

  const species = speciesResult.data ?? [];
  const speciesIds = species.map((row) => row.id);
  const [formsResult, attributesResult] = speciesIds.length
    ? await Promise.all([
        supabase
          .schema("reference")
          .from("pokemon_forms")
          .select("*")
          .in("species_id", speciesIds)
          .eq("is_default", true)
          .order("form_order", { ascending: true }),
        supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("*")
          .in("species_id", speciesIds)
          .order("generation_start_id", { ascending: false }),
      ])
    : [
        { data: [] as PokemonForm[], error: null },
        { data: [] as PokemonAttributes[], error: null },
      ];

  if (formsResult.error) {
    throw new Error("Unable to load Pokemon forms.");
  }

  if (attributesResult.error) {
    throw new Error("Unable to load Pokemon attributes.");
  }

  const typeById = byId(types);
  const generationById = byId(generations);
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();
  const latestAttributesByFormId = selectLatestAttributes(
    attributesResult.data ?? [],
  );

  for (const form of formsResult.data ?? []) {
    if (!defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return {
    filters,
    generations,
    pagination: {
      page,
      pageSize: POKEDEX_PAGE_SIZE,
      totalCount: speciesResult.count ?? 0,
      totalPages: Math.max(
        Math.ceil((speciesResult.count ?? 0) / POKEDEX_PAGE_SIZE),
        1,
      ),
    },
    searchQuery,
    pokemon: species.map((pokemonSpecies) => {
      const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
      const latestAttributes = defaultForm
        ? (latestAttributesByFormId.get(defaultForm.id) ?? null)
        : null;

      return {
        species: pokemonSpecies,
        defaultForm,
        latestAttributes,
        typePair: resolveTypePair(latestAttributes, typeById),
        introducedGeneration:
          generationById.get(pokemonSpecies.introduced_generation_id) ?? null,
      };
    }),
    types,
  };
};
