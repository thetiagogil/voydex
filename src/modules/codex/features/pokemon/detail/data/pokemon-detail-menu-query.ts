import { createServerSupabaseClient } from "@/lib/supabase/server";
import { byId, resolveTypePair } from "@/modules/codex/shared/data/query-utils";
import {
  getDefaultFormsBySpeciesId,
  getEffectiveAttributes,
  getSelectedGenerationForGame,
  groupAttributesByFormId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-attributes";
import {
  getPagedPokemonMenuSpeciesRows,
  getPokemonMenuRowBySpeciesId,
  getSpeciesIdsForGame,
  loadPokedexRowsForVersionGroup,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-rows";
import {
  loadChunkedReferenceRows,
  loadPagedReferenceRows,
} from "@/modules/codex/features/pokemon/detail/data/reference-row-loaders";
import type {
  Game,
  PokemonAttributes,
  PokemonDetailMenuPage,
  PokemonForm,
  ResolvedPokemonAvailability,
} from "@/modules/codex/shared/types";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

const DEFAULT_POKEMON_MENU_LIMIT = 96;
const MAX_POKEMON_MENU_LIMIT = 96;

type PokemonDetailGamePokemonMenuOptions = {
  limit?: number;
  offset?: number;
  query?: string;
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
  const { generation: selectedGeneration, generationById } =
    getSelectedGenerationForGame(generations, game.generation_id);
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
