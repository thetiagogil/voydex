import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  loadPokemonDetailBaseRows,
  loadPokemonDetailSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-base-loaders";
import { buildPokemonEvolutionFamily } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-evolution-mappers";
import {
  buildPokemonFormSummaries,
  resolveDefaultPokemonForm,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-form-mappers";
import { buildPokemonGenerationDetails } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-mappers";
import { buildPokemonLearnsetSummaries } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-learnset-mappers";
import {
  buildPokemonAvailabilitySummaries,
  buildPokemonPokedexSummaries,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-summary-mappers";
import {
  loadPokemonDetailEvolutionMethods,
  loadPokemonDetailLearnsetMoveRows,
  loadPokemonDetailRelatedRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-related-loaders";
import {
  byId,
  isNumber,
} from "@/modules/codex/shared/data/reference-data-utils";
import type {
  PokedexEntry,
  PokemonDetailData,
} from "@/modules/codex/shared/types";

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
  const typeById = byId(baseRows.types);
  const generationById = byId(baseRows.generations);
  const versionGroupById = byId(baseRows.versionGroups);
  const forms = buildPokemonFormSummaries({
    attributes: speciesRows.attributes,
    forms: speciesRows.forms,
    generationById,
    typeById,
  });
  const availability = buildPokemonAvailabilitySummaries({
    availabilityRows: speciesRows.availabilityRows,
    games: baseRows.games,
    methods: baseRows.availabilityMethods,
    versionGroups: baseRows.versionGroups,
  });
  const learnsets = buildPokemonLearnsetSummaries({
    games: baseRows.games,
    generations: baseRows.generations,
    learnMethods: baseRows.learnMethods,
    learnsetRows: speciesRows.learnsetRows,
    moveAttributes: learnsetMoveRows.moveAttributes,
    moves: learnsetMoveRows.moves,
    typeById,
    versionGroups: baseRows.versionGroups,
  });
  const pokedexEntries = buildPokemonPokedexSummaries({
    entries: speciesRows.pokedexEntries,
    pokedexes: relatedRows.pokedexes,
  });
  const data = {
    abilities: relatedRows.abilities,
    abilityAttributes: relatedRows.abilityAttributes,
    availability,
    defaultForm: null,
    eggGroups: relatedRows.eggGroups,
    evolutionFamily: buildPokemonEvolutionFamily({
      attributes: relatedRows.familyAttributes,
      edges: relatedRows.evolutionEdges,
      forms: relatedRows.familyForms,
      generationById,
      methods: evolutionMethods,
      species: speciesRows.familySpecies,
      typeById,
    }),
    forms,
    generationDetails: buildPokemonGenerationDetails({
      availability,
      forms,
      games: baseRows.games,
      generations: baseRows.generations,
      learnsets,
      pokedexEntries,
      species: baseRows.species,
      typeById,
      versionGroupById,
    }),
    learnsets,
    pokedexEntries,
    species: baseRows.species,
  } satisfies PokemonDetailData;

  return {
    ...data,
    defaultForm: resolveDefaultPokemonForm(data),
  };
};
