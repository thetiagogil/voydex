import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildPokemonDetailData } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-page-mappers";
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
import type {
  PokedexEntry,
  PokemonDetailData,
} from "@/modules/reference/types";

const getPokedexIds = (entries: PokedexEntry[]) => {
  return [...new Set(entries.map((row) => row.pokedex_id).filter(isNumber))];
};

export const getPokemonDetailData = async (
  slug: string,
): Promise<PokemonDetailData | null> => {
  const supabase = await createServerSupabaseClient();
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
      pokedexIds: getPokedexIds(speciesRows.pokedexEntries),
      supabase,
    }),
    loadPokemonDetailLearnsetMoveRows(supabase, speciesRows.learnsetRows),
  ]);
  const evolutionMethods = await loadPokemonDetailEvolutionMethods(
    supabase,
    relatedRows.evolutionEdges,
  );

  return buildPokemonDetailData({
    baseRows,
    evolutionMethods,
    learnsetMoveRows,
    relatedRows,
    speciesRows,
  });
};
