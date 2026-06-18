import { createServerSupabaseClient } from "@/lib/supabase/server";
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
  PokedexPageData,
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

const POKEDEX_PAGE_SIZE = 72;

function byId<T extends { id: number }>(rows: T[]): Map<number, T> {
  return new Map(rows.map((row) => [row.id, row]));
}

function byNullableId<T extends { id: number }>(rows: T[]): Map<number, T> {
  return byId(rows);
}

function normalizeSearchQuery(query?: string | null): string {
  return query?.trim() ?? "";
}

function isNumber(value: number | null | undefined): value is number {
  return typeof value === "number";
}

function selectLatestAttributes(
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> {
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
}

function resolveTypePair(
  attribute: PokemonAttributes | null,
  typeById: Map<number, Type>,
): PokemonTypePair {
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
}

function buildGameCards(params: {
  games: Game[];
  generations: Generation[];
  regions: Region[];
  versionGroups: VersionGroup[];
  gameTypes: GameType[];
  gamePlatforms: GamePlatform[];
  platforms: Platform[];
}): GameCard[] {
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
    generation: generationById.get(game.generation_id) ?? null,
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    gameType: gameTypeById.get(game.game_type_id) ?? null,
    platforms: platformsByGame.get(game.id) ?? [],
  }));
}

export async function getPokedexPageData(
  query?: string | null,
): Promise<PokedexPageData> {
  const supabase = await createServerSupabaseClient();
  const searchQuery = normalizeSearchQuery(query);

  let speciesQuery = supabase
    .schema("reference")
    .from("pokemon_species")
    .select("*")
    .order("national_number", { ascending: true })
    .limit(POKEDEX_PAGE_SIZE);

  const nationalNumber = Number(searchQuery);

  if (searchQuery && Number.isInteger(nationalNumber)) {
    speciesQuery = speciesQuery.eq("national_number", nationalNumber);
  } else if (searchQuery) {
    speciesQuery = speciesQuery.ilike("name", `%${searchQuery}%`);
  }

  const [speciesResult, typesResult, generationsResult] = await Promise.all([
    speciesQuery,
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

  if (speciesResult.error) {
    throw new Error("Unable to load Pokedex species.");
  }

  if (typesResult.error) {
    throw new Error("Unable to load Pokemon types.");
  }

  if (generationsResult.error) {
    throw new Error("Unable to load generations.");
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

  const typeById = byId(typesResult.data ?? []);
  const generationById = byId(generationsResult.data ?? []);
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
  };
}

export async function getPokemonDetailData(
  slug: string,
): Promise<PokemonDetailData | null> {
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
}

export async function getGenerationsPageData(): Promise<GenerationsPageData> {
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
}

export async function getGenerationDetailData(
  identifier: string,
): Promise<GenerationDetailData | null> {
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
      game,
      region: regionById.get(game.region_id) ?? null,
      versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    })),
    versionGroups: versionGroupsResult.data ?? [],
    introducedSpecies: speciesResult.data ?? [],
  };
}

export async function getGamesPageData(): Promise<GamesPageData> {
  const supabase = await createServerSupabaseClient();

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

  return {
    games: buildGameCards({
      games: gamesResult.data ?? [],
      generations: generationsResult.data ?? [],
      regions: regionsResult.data ?? [],
      versionGroups: versionGroupsResult.data ?? [],
      gameTypes: gameTypesResult.data ?? [],
      gamePlatforms: gamePlatformsResult.data ?? [],
      platforms: platformsResult.data ?? [],
    }),
  };
}

export async function getGameDetailData(
  slug: string,
): Promise<GameDetailData | null> {
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
}
