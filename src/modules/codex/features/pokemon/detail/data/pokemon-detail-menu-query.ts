import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildPokemonDetailMenuPage } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-page-builder";
import {
  getPagedPokemonMenuSpeciesRows,
  getSpeciesIdsForGame,
  loadPokedexRowsForVersionGroup,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-rows";
import { loadPagedReferenceRows } from "@/modules/codex/features/pokemon/detail/data/reference-row-loaders";
import type {
  Game,
  PokemonDetailMenuPage,
  ResolvedPokemonAvailability,
} from "@/modules/codex/shared/types";

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
  const types = typesResult.data ?? [];
  const generations = generationsResult.data ?? [];

  return buildPokemonDetailMenuPage({
    game,
    generations,
    offset,
    speciesRows,
    supabase,
    total,
    types,
  });
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
