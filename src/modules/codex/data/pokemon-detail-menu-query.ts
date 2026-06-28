import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  byId,
  isNumber,
  resolveTypePair,
} from "@/modules/codex/data/query-utils";
import type {
  Game,
  Generation,
  Pokedex,
  PokedexEntry,
  PokemonDetailMenuGroup,
  PokemonAttributes,
  PokemonDetailMenuPage,
  PokemonForm,
  PokemonSpecies,
  ResolvedPokemonAvailability,
} from "@/modules/codex/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

const REFERENCE_PAGE_SIZE = 1000;
const REFERENCE_ID_CHUNK_SIZE = 400;
const DEFAULT_POKEMON_MENU_LIMIT = 96;
const MAX_POKEMON_MENU_LIMIT = 96;

type PokemonDetailGamePokemonMenuOptions = {
  limit?: number;
  offset?: number;
  query?: string;
};

type PagedReferenceResult = {
  data: unknown[] | null;
  error: { message: string } | null;
};

type PokemonMenuSpeciesRow = {
  species: PokemonSpecies;
  pokedexGroup: PokemonDetailMenuGroup | null;
  pokedexNumber: number | null;
};

const chunkIds = (ids: number[]) => {
  const chunks: number[][] = [];

  for (let index = 0; index < ids.length; index += REFERENCE_ID_CHUNK_SIZE) {
    chunks.push(ids.slice(index, index + REFERENCE_ID_CHUNK_SIZE));
  }

  return chunks;
};

const loadPagedReferenceRows = async <T>(
  queryPage: (from: number, to: number) => PromiseLike<PagedReferenceResult>,
  errorMessage: string,
): Promise<T[]> => {
  const rows: T[] = [];

  for (let from = 0; ; from += REFERENCE_PAGE_SIZE) {
    const to = from + REFERENCE_PAGE_SIZE - 1;
    const result = await queryPage(from, to);

    if (result.error) {
      throw new Error(errorMessage);
    }

    const page = (result.data ?? []) as T[];

    rows.push(...page);

    if (page.length < REFERENCE_PAGE_SIZE) {
      return rows;
    }
  }
};

const loadChunkedReferenceRows = async <T>(
  ids: number[],
  queryChunkPage: (
    ids: number[],
    from: number,
    to: number,
  ) => PromiseLike<PagedReferenceResult>,
  errorMessage: string,
): Promise<T[]> => {
  const rows: T[] = [];

  for (const idsChunk of chunkIds(ids)) {
    const chunkRows = await loadPagedReferenceRows<T>(
      (from, to) => queryChunkPage(idsChunk, from, to),
      errorMessage,
    );

    rows.push(...chunkRows);
  }

  return rows;
};

const getSpeciesIdsForGame = (
  availabilityRows: ResolvedPokemonAvailability[],
  game: Game,
) => {
  return [
    ...new Set(
      availabilityRows
        .filter((row) => {
          return !row.game_id || row.game_id === game.id;
        })
        .map((row) => row.species_id)
        .filter(isNumber),
    ),
  ];
};

const normalizePokemonMenuLimit = (limit?: number) => {
  if (!limit || !Number.isFinite(limit)) {
    return DEFAULT_POKEMON_MENU_LIMIT;
  }

  return Math.min(Math.max(Math.trunc(limit), 1), MAX_POKEMON_MENU_LIMIT);
};

const normalizePokemonMenuOffset = (offset?: number) => {
  if (!offset || !Number.isFinite(offset)) {
    return 0;
  }

  return Math.max(Math.trunc(offset), 0);
};

const normalizePokemonMenuQuery = (query?: string) => {
  return query?.trim().toLowerCase() ?? "";
};

const matchesPokemonMenuQuery = (
  pokemonSpecies: PokemonSpecies,
  query: string,
  pokedexNumber?: number | null,
) => {
  if (!query) {
    return true;
  }

  const normalizedQuery = query.replace(/^#+/, "");
  const normalizedNumber = String(pokemonSpecies.national_number);
  const paddedNumber = normalizedNumber.padStart(4, "0");
  const normalizedPokedexNumber = pokedexNumber ? String(pokedexNumber) : null;
  const paddedPokedexNumber = normalizedPokedexNumber?.padStart(4, "0");

  return (
    pokemonSpecies.name.toLowerCase().includes(query) ||
    pokemonSpecies.slug.toLowerCase().includes(query) ||
    normalizedNumber.includes(normalizedQuery) ||
    paddedNumber.includes(normalizedQuery) ||
    Boolean(normalizedPokedexNumber?.includes(normalizedQuery)) ||
    Boolean(paddedPokedexNumber?.includes(normalizedQuery))
  );
};

const comparePokedexes = (firstPokedex: Pokedex, secondPokedex: Pokedex) => {
  return (
    firstPokedex.sort_order - secondPokedex.sort_order ||
    firstPokedex.name.localeCompare(secondPokedex.name)
  );
};

const comparePokedexEntries = (
  firstEntry: PokedexEntry,
  secondEntry: PokedexEntry,
) => {
  return (
    firstEntry.pokedex_number - secondEntry.pokedex_number ||
    firstEntry.species_id - secondEntry.species_id
  );
};

const comparePokemonSpeciesByNationalNumber = (
  firstSpecies: PokemonSpecies,
  secondSpecies: PokemonSpecies,
) => {
  return firstSpecies.national_number - secondSpecies.national_number;
};

const getPokedexGroup = (pokedex: Pokedex): PokemonDetailMenuGroup => {
  return {
    key: `pokedex:${pokedex.id}`,
    kind: pokedex.pokedex_kind,
    name: formatPokedexName(pokedex.name),
  };
};

const getOtherAvailablePokemonGroup = (): PokemonDetailMenuGroup => {
  return {
    key: "other-available",
    kind: "availability",
    name: "Other available Pokémon",
  };
};

const getPrimaryMenuPokedexes = (pokedexes: Pokedex[]) => {
  const completionRelevantLocalPokedexes = pokedexes.filter((pokedex) => {
    return (
      pokedex.is_completion_relevant && pokedex.pokedex_kind !== "national"
    );
  });

  if (completionRelevantLocalPokedexes.length) {
    return completionRelevantLocalPokedexes.sort(comparePokedexes);
  }

  return pokedexes
    .filter((pokedex) => {
      return pokedex.pokedex_kind !== "national";
    })
    .sort(comparePokedexes);
};

const getNationalMenuPokedex = (pokedexes: Pokedex[]) => {
  return (
    pokedexes
      .filter((pokedex) => {
        return pokedex.pokedex_kind === "national";
      })
      .sort(comparePokedexes)[0] ?? null
  );
};

const getPokedexEntriesByPokedexId = (entries: PokedexEntry[]) => {
  const entriesByPokedexId = new Map<number, PokedexEntry[]>();

  for (const entry of entries) {
    const currentEntries = entriesByPokedexId.get(entry.pokedex_id) ?? [];

    currentEntries.push(entry);
    entriesByPokedexId.set(entry.pokedex_id, currentEntries);
  }

  for (const [pokedexId, pokedexEntries] of entriesByPokedexId) {
    entriesByPokedexId.set(
      pokedexId,
      pokedexEntries.sort(comparePokedexEntries),
    );
  }

  return entriesByPokedexId;
};

const loadPokedexRowsForVersionGroup = async (
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>,
  versionGroupId: number,
) => {
  const pokedexResult = await supabase
    .schema("reference")
    .from("pokedex")
    .select("*")
    .eq("version_group_id", versionGroupId)
    .order("sort_order", { ascending: true });

  if (pokedexResult.error) {
    throw new Error("Unable to load game Pokédex definitions.");
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
        "Unable to load game Pokédex entries.",
      )
    : [];

  return {
    pokedexEntries,
    pokedexes,
  };
};

const buildPokemonMenuSpeciesRows = ({
  pokedexEntries,
  pokedexes,
  species,
}: {
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
}) => {
  const rows: PokemonMenuSpeciesRow[] = [];
  const seenSpeciesIds = new Set<number>();
  const speciesById = byId(species);
  const entriesByPokedexId = getPokedexEntriesByPokedexId(pokedexEntries);
  const primaryPokedexes = getPrimaryMenuPokedexes(pokedexes);
  const nationalPokedex = getNationalMenuPokedex(pokedexes);
  const orderedPokedexes = nationalPokedex
    ? [...primaryPokedexes, nationalPokedex]
    : primaryPokedexes;

  for (const pokedex of orderedPokedexes) {
    const entries = entriesByPokedexId.get(pokedex.id) ?? [];
    const pokedexGroup = getPokedexGroup(pokedex);

    for (const entry of entries) {
      const pokemonSpecies = speciesById.get(entry.species_id);

      if (!pokemonSpecies || seenSpeciesIds.has(pokemonSpecies.id)) {
        continue;
      }

      seenSpeciesIds.add(pokemonSpecies.id);
      rows.push({
        pokedexGroup,
        pokedexNumber: entry.pokedex_number,
        species: pokemonSpecies,
      });
    }
  }

  const remainingSpecies = species
    .filter((pokemonSpecies) => {
      return !seenSpeciesIds.has(pokemonSpecies.id);
    })
    .sort(comparePokemonSpeciesByNationalNumber);

  if (remainingSpecies.length) {
    const pokedexGroup = getOtherAvailablePokemonGroup();

    for (const pokemonSpecies of remainingSpecies) {
      rows.push({
        pokedexGroup,
        pokedexNumber: null,
        species: pokemonSpecies,
      });
    }
  }

  return rows;
};

const getPokemonMenuRowBySpeciesId = (rows: PokemonMenuSpeciesRow[]) => {
  return new Map(
    rows.map((row) => {
      return [row.species.id, row];
    }),
  );
};

const getPagedPokemonMenuSpeciesRows = async ({
  limit,
  offset,
  pokedexEntries,
  pokedexes,
  query,
  speciesIds,
  supabase,
}: {
  limit: number;
  offset: number;
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  query: string;
  speciesIds: number[];
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>;
}) => {
  if (!speciesIds.length) {
    return {
      page: [] as PokemonMenuSpeciesRow[],
      total: 0,
    };
  }

  const species = await loadChunkedReferenceRows<PokemonSpecies>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .in("id", ids)
        .order("national_number", { ascending: true })
        .range(from, to),
    "Unable to load game Pokémon species data.",
  );
  const rows = buildPokemonMenuSpeciesRows({
    pokedexEntries,
    pokedexes,
    species: species.sort(comparePokemonSpeciesByNationalNumber),
  });
  const filteredRows = rows.filter((row) => {
    return matchesPokemonMenuQuery(row.species, query, row.pokedexNumber);
  });

  return {
    page: filteredRows.slice(offset, offset + limit),
    total: filteredRows.length,
  };
};

const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};

const getEffectiveAttributes = (
  attributes: PokemonAttributes[],
  generation: Generation | null,
  generationById: Map<number, Generation>,
) => {
  if (!generation) {
    return null;
  }

  return (
    attributes
      .filter((attribute) => {
        return (
          getGenerationSortOrder(
            attribute.generation_start_id,
            generationById,
          ) <= generation.sort_order
        );
      })
      .sort((a, b) => {
        return (
          getGenerationSortOrder(b.generation_start_id, generationById) -
          getGenerationSortOrder(a.generation_start_id, generationById)
        );
      })[0] ?? null
  );
};

const getDefaultFormsBySpeciesId = (forms: PokemonForm[]) => {
  const defaultFormBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    if (form.is_default || !defaultFormBySpeciesId.has(form.species_id)) {
      defaultFormBySpeciesId.set(form.species_id, form);
    }
  }

  return defaultFormBySpeciesId;
};

const groupAttributesByFormId = (attributes: PokemonAttributes[]) => {
  const attributesByFormId = new Map<number, PokemonAttributes[]>();

  for (const attribute of attributes) {
    const current = attributesByFormId.get(attribute.form_id) ?? [];

    current.push(attribute);
    attributesByFormId.set(attribute.form_id, current);
  }

  return attributesByFormId;
};

export const getPokemonDetailGamePokemonMenu = async (
  game: Game | null,
  options: PokemonDetailGamePokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage> => {
  const limit = normalizePokemonMenuLimit(options.limit);
  const offset = normalizePokemonMenuOffset(options.offset);
  const query = normalizePokemonMenuQuery(options.query);

  if (!game) {
    return {
      nextOffset: null,
      pokemon: [],
      total: 0,
    };
  }

  const supabase = await createServerSupabaseClient();
  const [availabilityRows, typesResult, generationsResult] = await Promise.all([
    loadPagedReferenceRows<ResolvedPokemonAvailability>(
      (from, to) =>
        supabase
          .schema("views")
          .from("reference_resolved_pokemon_availability")
          .select("*")
          .eq("target_version_group_id", game.version_group_id)
          .range(from, to),
      "Unable to load game Pokémon availability.",
    ),
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

  if (typesResult.error || generationsResult.error) {
    throw new Error("Unable to load game Pokémon reference data.");
  }

  const pokedexRows = await loadPokedexRowsForVersionGroup(
    supabase,
    game.version_group_id,
  );
  const speciesIds = getSpeciesIdsForGame(availabilityRows, game);

  if (!speciesIds.length) {
    return {
      nextOffset: null,
      pokemon: [],
      total: 0,
    };
  }

  const { page: speciesRows, total } = await getPagedPokemonMenuSpeciesRows({
    limit,
    offset,
    pokedexEntries: pokedexRows.pokedexEntries,
    pokedexes: pokedexRows.pokedexes,
    query,
    speciesIds,
    supabase,
  });
  const species = speciesRows.map((row) => row.species);
  const rowBySpeciesId = getPokemonMenuRowBySpeciesId(speciesRows);
  const pageSpeciesIds = species.map((pokemonSpecies) => pokemonSpecies.id);

  if (!pageSpeciesIds.length) {
    return {
      nextOffset: null,
      pokemon: [],
      total,
    };
  }

  const forms = await loadChunkedReferenceRows<PokemonForm>(
    pageSpeciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_forms")
        .select("*")
        .in("species_id", ids)
        .eq("is_default", true)
        .order("species_id", { ascending: true })
        .order("form_order", { ascending: true })
        .range(from, to),
    "Unable to load game Pokémon form data.",
  );
  const defaultFormBySpeciesId = getDefaultFormsBySpeciesId(forms);
  const defaultFormIds = [...defaultFormBySpeciesId.values()].map(
    (form) => form.id,
  );
  const attributes = await loadChunkedReferenceRows<PokemonAttributes>(
    defaultFormIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select("*")
        .in("form_id", ids)
        .order("species_id", { ascending: true })
        .order("generation_start_id", { ascending: false })
        .range(from, to),
    "Unable to load game Pokémon attribute data.",
  );

  const types = typesResult.data ?? [];
  const generations = generationsResult.data ?? [];
  const generationById = byId(generations);
  const selectedGeneration =
    generationById.get(game.generation_id) ??
    generations.find((generation) => {
      return generation.id === game.generation_id;
    }) ??
    null;
  const typeById = byId(types);
  const attributesByFormId = groupAttributesByFormId(attributes);

  const pokemon = species.map((pokemonSpecies) => {
    const defaultForm = defaultFormBySpeciesId.get(pokemonSpecies.id) ?? null;
    const menuRow = rowBySpeciesId.get(pokemonSpecies.id) ?? null;
    const formAttributes = defaultForm
      ? (attributesByFormId.get(defaultForm.id) ?? [])
      : [];
    const typePair = resolveTypePair(
      getEffectiveAttributes(
        formAttributes,
        selectedGeneration,
        generationById,
      ),
      typeById,
    );

    return {
      id: pokemonSpecies.id,
      imageAlt: getPokemonFormImageAlt(defaultForm),
      imageUrl: getPokemonFormImageUrl(defaultForm),
      name: pokemonSpecies.name,
      nationalNumber: pokemonSpecies.national_number,
      pokedexGroup: menuRow?.pokedexGroup ?? null,
      pokedexNumber: menuRow?.pokedexNumber ?? null,
      primaryType: typePair.primaryType
        ? {
            id: typePair.primaryType.id,
            name: typePair.primaryType.name,
            slug: typePair.primaryType.slug,
          }
        : null,
      secondaryType: typePair.secondaryType
        ? {
            id: typePair.secondaryType.id,
            name: typePair.secondaryType.name,
            slug: typePair.secondaryType.slug,
          }
        : null,
      slug: pokemonSpecies.slug,
    };
  });

  return {
    nextOffset:
      offset + pokemon.length < total ? offset + pokemon.length : null,
    pokemon,
    total,
  };
};

export const getPokemonDetailGamePokemonMenuBySlug = async (
  gameSlug: string,
  options: PokemonDetailGamePokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage | null> => {
  const supabase = await createServerSupabaseClient();
  const gameResult = await supabase
    .schema("reference")
    .from("games")
    .select("*")
    .eq("slug", gameSlug)
    .maybeSingle();

  if (gameResult.error) {
    throw new Error("Unable to load Pokémon menu game.");
  }

  if (!gameResult.data) {
    return null;
  }

  return getPokemonDetailGamePokemonMenu(gameResult.data, options);
};
