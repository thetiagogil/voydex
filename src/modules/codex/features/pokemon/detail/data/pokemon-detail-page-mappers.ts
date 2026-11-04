import { buildPokemonEvolutionFamily } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-evolution-mappers";
import {
  buildPokemonFormSummaries,
  resolveDefaultPokemonForm,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-form-mappers";
import { buildPokemonGenerationDetails } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-generation-mappers";
import { buildPokemonLearnsetSummaries } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-learnset-mappers";
import {
  buildPokemonAvailabilitySummaries,
  buildPokemonEncounterSummaries,
  buildPokemonPokedexSummaries,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-summary-mappers";
import type {
  PokemonDetailBaseRows,
  PokemonDetailSpeciesRows,
} from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-base-loaders";
import type { PokemonDetailRelatedRows } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-related-loaders";
import type { PokemonDetailLearnsetMoveRows } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-learnset-loaders";
import { resolveFormClasses } from "@/modules/reference/features/pokemon/domain/form-classes";
import { byId } from "@/modules/reference/reference-data";
import type {
  EvolutionMethod,
  PokemonDetailData,
} from "@/modules/reference/types";

type BuildPokemonDetailDataParams = {
  baseRows: PokemonDetailBaseRows;
  evolutionMethods: EvolutionMethod[];
  learnsetMoveRows: PokemonDetailLearnsetMoveRows;
  relatedRows: PokemonDetailRelatedRows;
  speciesRows: PokemonDetailSpeciesRows;
};

export const buildPokemonDetailData = ({
  baseRows,
  evolutionMethods,
  learnsetMoveRows,
  relatedRows,
  speciesRows,
}: BuildPokemonDetailDataParams): PokemonDetailData => {
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
    moveOverrides: learnsetMoveRows.moveOverrides,
    moves: learnsetMoveRows.moves,
    typeById,
    versionGroups: baseRows.versionGroups,
  });
  const encounters = buildPokemonEncounterSummaries({
    encounterRows: speciesRows.encounterRows,
    games: baseRows.games,
    locationPlacements: relatedRows.locationPlacements,
    locations: relatedRows.locations,
    versionGroups: baseRows.versionGroups,
    ways: relatedRows.encounterWays,
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
    encounters,
    versionGroups: baseRows.versionGroups,
    eggGroups: relatedRows.eggGroups,
    growthRates: relatedRows.growthRates,
    trainingAttributes: relatedRows.trainingAttributes,
    evolutionFamily: buildPokemonEvolutionFamily({
      attributes: relatedRows.familyAttributes,
      availability: relatedRows.familyAvailability,
      edges: relatedRows.evolutionEdges,
      forms: relatedRows.familyForms,
      generationById,
      methods: evolutionMethods,
      species: speciesRows.familySpecies,
      typeById,
    }),
    forms,
    formClassById: Object.fromEntries(
      resolveFormClasses(speciesRows.forms, speciesRows.formClassById),
    ),
    generationDetails: buildPokemonGenerationDetails({
      availability,
      battleForms: speciesRows.battleFormLinks,
      encounters,
      forms,
      games: baseRows.games,
      generations: baseRows.generations,
      learnsets,
      pokedexEntries,
      species: baseRows.species,
      typeById,
      versionGroupById,
    }),
    generations: baseRows.generations,
    learnsets,
    pokedexEntries,
    pokedexTexts: relatedRows.pokedexTexts,
    species: baseRows.species,
  } satisfies PokemonDetailData;

  return {
    ...data,
    defaultForm: resolveDefaultPokemonForm(data),
  };
};
