import {
  createServerSupabaseClient,
  type ServerSupabaseClient,
} from "@/platform/supabase/server-client";
import { buildPokemonDetailMenuPage } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-page-mappers";
import {
  getPagedPokemonMenuSpeciesRows,
  getSpeciesIdsForVersionGroups,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-mappers";
import {
  loadPokedexRowsForVersionGroups,
  loadPokemonMenuAvailabilityRows,
  loadPokemonMenuReferenceRows,
  loadPokemonMenuSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-loaders";
import { loadPokemonMenuPageRows } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-page-loaders";
import { loadVersionGroupRouteRows } from "@/modules/codex/shared/server/version-group-route-query";
import {
  getChildVersionGroups,
  resolveVersionGroupRoute,
} from "@/modules/reference/features/games/domain/version-groups";
import type {
  PokemonDetailMenuPage,
  VersionGroup,
} from "@/modules/reference/types";

const DEFAULT_POKEMON_MENU_LIMIT = 96;
const MAX_POKEMON_MENU_LIMIT = 96;

type PokemonDetailPokemonMenuOptions = {
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

const emptyPokemonMenuPage: PokemonDetailMenuPage = {
  nextOffset: null,
  pokemon: [],
  total: 0,
};

/* The Pokémon of a base version group and its expansions, a page at a time. */
const getPokemonDetailPokemonMenuWithClient = async (
  supabase: ServerSupabaseClient,
  versionGroups: VersionGroup[],
  options: PokemonDetailPokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage> => {
  const limit = normalizePokemonMenuLimit(options.limit);
  const offset = normalizePokemonMenuOffset(options.offset);
  const query = normalizePokemonMenuQuery(options.query);
  const [baseVersionGroup] = versionGroups;

  if (!baseVersionGroup) {
    return emptyPokemonMenuPage;
  }

  const [{ generations, types }, availabilityRows, pokedexRows] =
    await Promise.all([
      loadPokemonMenuReferenceRows(supabase),
      loadPokemonMenuAvailabilityRows(supabase, versionGroups),
      loadPokedexRowsForVersionGroups(supabase, versionGroups),
    ]);
  const speciesIds = getSpeciesIdsForVersionGroups(availabilityRows);

  if (!speciesIds.length) {
    return emptyPokemonMenuPage;
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
    generationId: baseVersionGroup.generation_id,
    generations,
    offset,
    speciesRows,
    total,
    types,
  });
};

/*
 * The species picker's Pokémon for one version group. A game's or an
 * expansion's slug reads its base group. Null for an unknown slug.
 */
export const getPokemonDetailPokemonMenuBySlug = async (
  versionGroupSlug: string,
  options: PokemonDetailPokemonMenuOptions = {},
): Promise<PokemonDetailMenuPage | null> => {
  const supabase = await createServerSupabaseClient();
  const routeRows = await loadVersionGroupRouteRows(supabase);
  const route = resolveVersionGroupRoute(versionGroupSlug, routeRows);

  if (!route) {
    return null;
  }

  return getPokemonDetailPokemonMenuWithClient(
    supabase,
    [
      route.versionGroup,
      ...getChildVersionGroups(route.versionGroup, routeRows.versionGroups),
    ],
    options,
  );
};
