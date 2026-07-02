import { createServerSupabaseClient } from "@/lib/supabase/server";
import { buildPokemonDetailMenuPage } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-page-mappers";
import {
  getPagedPokemonMenuSpeciesRows,
  getSpeciesIdsForGame,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-mappers";
import {
  loadPokedexRowsForVersionGroups,
  loadPokemonMenuAvailabilityRows,
  loadPokemonMenuGameBySlug,
  loadPokemonMenuPageRows,
  loadPokemonMenuReferenceRows,
  loadPokemonMenuSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-loaders";
import type { Game, PokemonDetailMenuPage } from "@/modules/codex/shared/types";

const DEFAULT_POKEMON_MENU_LIMIT = 96;
const MAX_POKEMON_MENU_LIMIT = 96;

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

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

const getPokemonDetailGamePokemonMenuWithClient = async (
  supabase: ServerSupabaseClient,
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

  const { generations, types, versionGroups } =
    await loadPokemonMenuReferenceRows(supabase, game);

  if (!versionGroups.length) {
    return {
      nextOffset: null,
      pokemon: [],
      total: 0,
    };
  }

  const [availabilityRows, pokedexRows] = await Promise.all([
    loadPokemonMenuAvailabilityRows(supabase, versionGroups),
    loadPokedexRowsForVersionGroups(supabase, versionGroups),
  ]);
  const speciesIds = getSpeciesIdsForGame(availabilityRows, game);

  if (!speciesIds.length) {
    return {
      nextOffset: null,
      pokemon: [],
      total: 0,
    };
  }

  const species = await loadPokemonMenuSpeciesRows(supabase, speciesIds);
  const { page: speciesRows, total } = getPagedPokemonMenuSpeciesRows({
    limit,
    offset,
    pokedexEntries: pokedexRows.pokedexEntries,
    pokedexes: pokedexRows.pokedexes,
    query,
    species,
    versionGroups,
  });
  const { attributes, defaultForms } = await loadPokemonMenuPageRows({
    speciesRows,
    supabase,
  });

  return buildPokemonDetailMenuPage({
    attributes,
    defaultForms,
    game,
    generations,
    offset,
    speciesRows,
    total,
    types,
  });
};

export const getPokemonDetailGamePokemonMenu = async (
  game: Game | null,
  options: PokemonDetailGamePokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage> => {
  const supabase = await createServerSupabaseClient();

  return getPokemonDetailGamePokemonMenuWithClient(supabase, game, options);
};

export const getPokemonDetailGamePokemonMenuBySlug = async (
  gameSlug: string,
  options: PokemonDetailGamePokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage | null> => {
  const supabase = await createServerSupabaseClient();
  const game = await loadPokemonMenuGameBySlug(supabase, gameSlug);

  if (!game) {
    return null;
  }

  return getPokemonDetailGamePokemonMenuWithClient(supabase, game, options);
};
