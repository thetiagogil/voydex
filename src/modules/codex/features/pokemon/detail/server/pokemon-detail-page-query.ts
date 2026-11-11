import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import type { PokemonDetailRows } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
import {
  loadPokemonDetailBaseRows,
  loadPokemonDetailSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-base-loaders";
import {
  loadPokemonDetailEvolutionMethods,
  loadPokemonDetailRelatedRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-related-loaders";
import { loadPokemonDetailLearnsetMoveRows } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-learnset-loaders";
import { isNumber } from "@/modules/reference/reference-data";
import type { PokedexEntry } from "@/modules/reference/types";

const getPokedexIds = (entries: PokedexEntry[]) => {
  return [...new Set(entries.map((row) => row.pokedex_id).filter(isNumber))];
};

/*
 * Everything a species' entry is made from, every game's, as rows: the page
 * builds the entry (`buildPokemonDetailData`) and scopes it to one group.
 * Rows, not the built entry, because the entry repeats them many times over.
 */
export const readPokemonDetailRows = async (
  supabase: ServerSupabaseClient,
  slug: string,
): Promise<PokemonDetailRows | null> => {
  const baseRows = await loadPokemonDetailBaseRows(supabase, slug);

  if (!baseRows) {
    return null;
  }

  const speciesRows = await loadPokemonDetailSpeciesRows(
    supabase,
    baseRows.species,
  );
  const familySpeciesIds = speciesRows.familySpecies.map((pokemonSpecies) => {
    return pokemonSpecies.id;
  });
  const [relatedRows, learnsetMoveRows] = await Promise.all([
    loadPokemonDetailRelatedRows({
      attributes: speciesRows.attributes,
      familySpeciesIds,
      locationIds: [
        ...new Set(speciesRows.encounterRows.map((row) => row.location_id)),
      ],
      pokedexIds: getPokedexIds(speciesRows.pokedexEntries),
      speciesId: baseRows.species.id,
      supabase,
    }),
    loadPokemonDetailLearnsetMoveRows(supabase, speciesRows.learnsetRows),
  ]);
  const evolutionMethods = await loadPokemonDetailEvolutionMethods(
    supabase,
    relatedRows.evolutionEdges,
  );

  return {
    baseRows,
    evolutionMethods,
    learnsetMoveRows,
    relatedRows,
    speciesRows,
  };
};
