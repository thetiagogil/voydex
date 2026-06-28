import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  loadPokemonDetailBaseRows,
  loadPokemonDetailSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-base-loaders";
import { buildPokemonEvolutionFamily } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-evolution-mappers";
import {
  buildPokemonFormSummaries,
  resolveDefaultPokemonForm,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-form-mappers";
import { buildPokemonGenerationDetails } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-mappers";
import {
  loadPokemonDetailEvolutionMethods,
  loadPokemonDetailRelatedRows,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-related-loaders";
import { byId, isNumber } from "@/modules/codex/shared/data/query-utils";
import type {
  AvailabilityMethod,
  Game,
  Pokedex,
  PokedexEntry,
  PokemonDetailData,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/codex/shared/types";

const getPokedexIds = (entries: PokedexEntry[]) => {
  return [...new Set(entries.map((row) => row.pokedex_id).filter(isNumber))];
};

const buildAvailabilitySummaries = ({
  availabilityRows,
  games,
  methods,
  versionGroups,
}: {
  availabilityRows: ResolvedPokemonAvailability[];
  games: Game[];
  methods: AvailabilityMethod[];
  versionGroups: VersionGroup[];
}): PokemonDetailData["availability"] => {
  const gameById = byId(games);
  const methodById = byId(methods);
  const versionGroupById = byId(versionGroups);

  return availabilityRows.map((availabilityRow) => ({
    availability: availabilityRow,
    game: availabilityRow.game_id
      ? (gameById.get(availabilityRow.game_id) ?? null)
      : null,
    method: availabilityRow.availability_method_id
      ? (methodById.get(availabilityRow.availability_method_id) ?? null)
      : null,
    sourceVersionGroup: availabilityRow.source_version_group_id
      ? (versionGroupById.get(availabilityRow.source_version_group_id) ?? null)
      : null,
    targetVersionGroup: availabilityRow.target_version_group_id
      ? (versionGroupById.get(availabilityRow.target_version_group_id) ?? null)
      : null,
  }));
};

const buildPokedexSummaries = ({
  entries,
  pokedexes,
}: {
  entries: PokedexEntry[];
  pokedexes: Pokedex[];
}): PokemonDetailData["pokedexEntries"] => {
  const pokedexById = byId(pokedexes);

  return entries.map((entry) => ({
    entry,
    pokedex: pokedexById.get(entry.pokedex_id) ?? null,
  }));
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
  const relatedRows = await loadPokemonDetailRelatedRows({
    attributes: speciesRows.attributes,
    familySpeciesIds,
    pokedexIds: getPokedexIds(speciesRows.pokedexEntries),
    supabase,
  });
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
  const availability = buildAvailabilitySummaries({
    availabilityRows: speciesRows.availabilityRows,
    games: baseRows.games,
    methods: baseRows.availabilityMethods,
    versionGroups: baseRows.versionGroups,
  });
  const pokedexEntries = buildPokedexSummaries({
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
      pokedexEntries,
      species: baseRows.species,
      typeById,
      versionGroupById,
    }),
    pokedexEntries,
    species: baseRows.species,
  } satisfies PokemonDetailData;

  return {
    ...data,
    defaultForm: resolveDefaultPokemonForm(data),
  };
};
