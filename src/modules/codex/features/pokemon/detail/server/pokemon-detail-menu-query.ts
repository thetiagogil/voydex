import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
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
import {
  getChildVersionGroups,
  type VersionGroupRouteRows,
} from "@/modules/reference/features/games/domain/version-groups";
import type {
  PokemonDetailMenuPokemon,
  VersionGroup,
} from "@/modules/reference/types";

/*
 * The species picker's Pokémon for a base version group and its expansions:
 * all of them, in the picker's order. The picker searches and pages them.
 */
export const readPokemonDetailMenu = async (
  supabase: ServerSupabaseClient,
  baseVersionGroup: VersionGroup,
  { versionGroups: allVersionGroups }: VersionGroupRouteRows,
): Promise<PokemonDetailMenuPokemon[]> => {
  const versionGroups = [
    baseVersionGroup,
    ...getChildVersionGroups(baseVersionGroup, allVersionGroups),
  ];
  const [{ generations, types }, availabilityRows, pokedexRows] =
    await Promise.all([
      loadPokemonMenuReferenceRows(supabase),
      loadPokemonMenuAvailabilityRows(supabase, versionGroups),
      loadPokedexRowsForVersionGroups(supabase, versionGroups),
    ]);
  const speciesIds = getSpeciesIdsForVersionGroups(availabilityRows);

  if (!speciesIds.length) {
    return [];
  }

  const species = await loadPokemonMenuSpeciesRows(supabase, speciesIds);
  const { page: speciesRows, total } = getPagedPokemonMenuSpeciesRows({
    limit: species.length,
    offset: 0,
    pokedexEntries: pokedexRows.pokedexEntries,
    pokedexes: pokedexRows.pokedexes,
    query: "",
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
    offset: 0,
    speciesRows,
    total,
    types,
  }).pokemon;
};
