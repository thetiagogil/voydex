import { createServerSupabaseClient } from "@/lib/supabase/server";
import { getGameCoverImageUrl } from "@/modules/codex/media/game-images";
import type {
  Game,
  GameCard,
  GameDetailData,
  GamePlatform,
  GameType,
  Generation,
  GenerationCard,
  GenerationDetailData,
  GenerationsPageData,
  GamesPageData,
  Pokedex,
  PokedexPageFilters,
  PokedexPageData,
  PokedexRarityFilter,
  Platform,
  PokemonAttributes,
  PokemonDetailData,
  PokemonForm,
  PokemonFormSummary,
  PokemonTypePair,
  Region,
  Type,
  VersionGroup,
} from "@/modules/codex/types";
const POKEDEX_PAGE_SIZE = 48;
const rarityFilters = ["all", "legendary", "mythical", "standard"] as const;
const byId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return new Map(rows.map((row) => [row.id, row]));
};
const byNullableId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return byId(rows);
};
const normalizeSearchQuery = (query?: string | null): string => {
  return query?.trim() ?? "";
};
const normalizePage = (page?: string | number | null): number => {
  const value = Number(page);
  return Number.isInteger(value) && value > 0 ? value : 1;
};
const normalizeSlug = (value?: string | null): string => {
  return value?.trim().toLowerCase() ?? "";
};
const normalizeRarityFilter = (value?: string | null): PokedexRarityFilter => {
  return rarityFilters.includes(value as PokedexRarityFilter)
    ? (value as PokedexRarityFilter)
    : "all";
};
const resolveReferenceFilter = <
  T extends {
    id: number;
    slug: string;
  },
>(
  rows: T[],
  value: string,
) => {
  return rows.find((row) => row.slug === value || String(row.id) === value);
};
const isNumber = (value: number | null | undefined): value is number => {
  return typeof value === "number";
};
const selectLatestAttributes = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const latestByForm = new Map<number, PokemonAttributes>();
  for (const attribute of attributes) {
    if (!attribute.form_id) {
      continue;
    }
    const current = latestByForm.get(attribute.form_id);
    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      latestByForm.set(attribute.form_id, attribute);
    }
  }
  return latestByForm;
};
const resolveTypePair = (
  attribute: PokemonAttributes | null,
  typeById: Map<number, Type>,
): PokemonTypePair => {
  if (!attribute) {
    return {
      primaryType: null,
      secondaryType: null,
    };
  }
  return {
    primaryType: typeById.get(attribute.primary_type_id) ?? null,
    secondaryType: attribute.secondary_type_id
      ? (typeById.get(attribute.secondary_type_id) ?? null)
      : null,
  };
};
const buildGameCards = (params: {
  games: Game[];
  generations: Generation[];
  regions: Region[];
  versionGroups: VersionGroup[];
  gameTypes: GameType[];
  gamePlatforms: GamePlatform[];
  platforms: Platform[];
}): GameCard[] => {
  const generationById = byId(params.generations);
  const regionById = byId(params.regions);
  const versionGroupById = byId(params.versionGroups);
  const gameTypeById = byId(params.gameTypes);
  const platformById = byId(params.platforms);
  const platformsByGame = new Map<number, Platform[]>();
  for (const gamePlatform of params.gamePlatforms) {
    const platform = platformById.get(gamePlatform.platform_id);
    if (!platform) {
      continue;
    }
    const current = platformsByGame.get(gamePlatform.game_id) ?? [];
    current.push(platform);
    platformsByGame.set(gamePlatform.game_id, current);
  }
  return params.games.map((game) => ({
    game,
    coverImageUrl: getGameCoverImageUrl(game),
    generation: generationById.get(game.generation_id) ?? null,
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    gameType: gameTypeById.get(game.game_type_id) ?? null,
    platforms: platformsByGame.get(game.id) ?? [],
  }));
};
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
    throw new Error("Unable to load Pokemon species.");
  }
  if (!speciesResult.data) {
    return null;
  }
  if (
    typesResult.error ||
    generationsResult.error ||
    availabilityMethodsResult.error
  ) {
    throw new Error("Unable to load Pokemon reference data.");
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
    throw new Error("Unable to load Pokemon detail data.");
  }
  if (pokedexEntriesResult.error) {
    throw new Error("Unable to load Pokemon Pokedex entries.");
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
    throw new Error("Unable to load Pokemon game availability.");
  }
  if (pokedexResult.error) {
    throw new Error("Unable to load Pokemon Pokedex definitions.");
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
export const getGenerationsPageData =
  async (): Promise<GenerationsPageData> => {
    const supabase = await createServerSupabaseClient();
    const [generationsResult, gamesResult, speciesResult] = await Promise.all([
      supabase
        .schema("reference")
        .from("generations")
        .select("*")
        .order("sort_order", { ascending: true }),
      supabase.schema("reference").from("games").select("id,generation_id"),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("id,introduced_generation_id"),
    ]);
    if (generationsResult.error || gamesResult.error || speciesResult.error) {
      throw new Error("Unable to load generations.");
    }
    const gamesByGeneration = new Map<number, number>();
    const speciesByGeneration = new Map<number, number>();
    for (const game of gamesResult.data ?? []) {
      gamesByGeneration.set(
        game.generation_id,
        (gamesByGeneration.get(game.generation_id) ?? 0) + 1,
      );
    }
    for (const species of speciesResult.data ?? []) {
      speciesByGeneration.set(
        species.introduced_generation_id,
        (speciesByGeneration.get(species.introduced_generation_id) ?? 0) + 1,
      );
    }
    const generations: GenerationCard[] = (generationsResult.data ?? []).map(
      (generation) => ({
        generation,
        gameCount: gamesByGeneration.get(generation.id) ?? 0,
        speciesCount: speciesByGeneration.get(generation.id) ?? 0,
      }),
    );
    return { generations };
  };
export const getGenerationDetailData = async (
  identifier: string,
): Promise<GenerationDetailData | null> => {
  const supabase = await createServerSupabaseClient();
  const numericId = Number(identifier);
  const generationQuery = supabase
    .schema("reference")
    .from("generations")
    .select("*");
  const generationResult = Number.isInteger(numericId)
    ? await generationQuery.eq("id", numericId).maybeSingle()
    : await generationQuery.eq("slug", identifier).maybeSingle();
  if (generationResult.error) {
    throw new Error("Unable to load generation.");
  }
  if (!generationResult.data) {
    return null;
  }
  const generation = generationResult.data;
  const [gamesResult, versionGroupsResult, speciesResult, regionsResult] =
    await Promise.all([
      supabase
        .schema("reference")
        .from("games")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("version_groups")
        .select("*")
        .eq("generation_id", generation.id)
        .order("sort_order", { ascending: true }),
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .eq("introduced_generation_id", generation.id)
        .order("national_number", { ascending: true }),
      supabase
        .schema("reference")
        .from("regions")
        .select("*")
        .order("sort_order", { ascending: true }),
    ]);
  if (
    gamesResult.error ||
    versionGroupsResult.error ||
    speciesResult.error ||
    regionsResult.error
  ) {
    throw new Error("Unable to load generation detail data.");
  }
  const regionById = byId(regionsResult.data ?? []);
  const versionGroupById = byId(versionGroupsResult.data ?? []);
  return {
    generation,
    games: (gamesResult.data ?? []).map((game) => ({
      coverImageUrl: getGameCoverImageUrl(game),
      game,
      region: regionById.get(game.region_id) ?? null,
      versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    })),
    versionGroups: versionGroupsResult.data ?? [],
    introducedSpecies: speciesResult.data ?? [],
  };
};
export const getGamesPageData = async (params?: {
  generation?: string | null;
  region?: string | null;
}): Promise<GamesPageData> => {
  const supabase = await createServerSupabaseClient();
  const requestedGeneration = normalizeSlug(params?.generation);
  const requestedRegion = normalizeSlug(params?.region);
  const [
    gamesResult,
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gameTypesResult,
    gamePlatformsResult,
    platformsResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("regions")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_types")
      .select("*")
      .order("sort_order", { ascending: true }),
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
  ]);
  if (
    gamesResult.error ||
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error
  ) {
    throw new Error("Unable to load games.");
  }
  const generations = generationsResult.data ?? [];
  const regions = regionsResult.data ?? [];
  const selectedGeneration = resolveReferenceFilter(
    generations,
    requestedGeneration,
  );
  const selectedRegion = resolveReferenceFilter(regions, requestedRegion);
  const filteredGames = (gamesResult.data ?? []).filter((game) => {
    if (selectedGeneration && game.generation_id !== selectedGeneration.id) {
      return false;
    }
    if (selectedRegion && game.region_id !== selectedRegion.id) {
      return false;
    }
    return true;
  });
  return {
    filters: {
      generation: selectedGeneration?.slug ?? "",
      region: selectedRegion?.slug ?? "",
    },
    games: buildGameCards({
      games: filteredGames,
      generations,
      regions,
      versionGroups: versionGroupsResult.data ?? [],
      gameTypes: gameTypesResult.data ?? [],
      gamePlatforms: gamePlatformsResult.data ?? [],
      platforms: platformsResult.data ?? [],
    }),
    generations,
    regions,
  };
};
export const getGameDetailData = async (
  slug: string,
): Promise<GameDetailData | null> => {
  const supabase = await createServerSupabaseClient();
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
    contentScopesResult,
    availabilityCountResult,
  ] = await Promise.all([
    supabase.schema("reference").from("generations").select("*"),
    supabase.schema("reference").from("regions").select("*"),
    supabase.schema("reference").from("version_groups").select("*"),
    supabase.schema("reference").from("game_types").select("*"),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .eq("game_id", game.id)
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
      .from("game_content_scopes")
      .select("*")
      .eq("game_id", game.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("reference_resolved_pokemon_availability")
      .select("species_id", { count: "exact", head: true })
      .eq("game_id", game.id),
  ]);
  if (
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gameTypesResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error ||
    pokedexResult.error ||
    contentScopesResult.error ||
    availabilityCountResult.error
  ) {
    throw new Error("Unable to load game detail data.");
  }
  const [card] = buildGameCards({
    games: [game],
    generations: generationsResult.data ?? [],
    regions: regionsResult.data ?? [],
    versionGroups: versionGroupsResult.data ?? [],
    gameTypes: gameTypesResult.data ?? [],
    gamePlatforms: gamePlatformsResult.data ?? [],
    platforms: platformsResult.data ?? [],
  });
  const gameById = byNullableId([game]);
  const versionGroupById = byId(versionGroupsResult.data ?? []);
  return {
    ...card,
    pokedexes: pokedexResult.data ?? [],
    contentScopes: (contentScopesResult.data ?? []).map((scope) => ({
      game: gameById.get(scope.game_id) ?? null,
      versionGroup: versionGroupById.get(scope.version_group_id) ?? null,
      isBaseScope: scope.is_base_scope,
    })),
    availablePokemonCount: availabilityCountResult.count ?? 0,
  };
};
