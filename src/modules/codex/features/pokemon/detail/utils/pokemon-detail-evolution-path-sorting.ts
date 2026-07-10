import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
} from "@/modules/reference/types";
import type { PokemonDetailEvolutionPath } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-path-types";

export type PokemonDetailEvolutionTransition = {
  edges: PokemonEvolutionEdgeSummary[];
  fromFormId: number;
  fromPokemon: PokemonEvolutionSpeciesSummary;
  key: string;
  toFormId: number;
  toPokemon: PokemonEvolutionSpeciesSummary;
};

export const comparePokemonDetailEvolutionSpecies = (
  firstSpecies: PokemonEvolutionSpeciesSummary,
  secondSpecies: PokemonEvolutionSpeciesSummary,
) => {
  return (
    firstSpecies.species.national_number - secondSpecies.species.national_number
  );
};

export const getPokemonDetailEvolutionTransitionKey = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  return [
    edge.edge.from_species_id,
    edge.edge.from_form_id,
    edge.edge.to_species_id,
    edge.edge.to_form_id,
  ].join(":");
};

export const comparePokemonDetailEvolutionTransitions = (
  firstTransition: PokemonDetailEvolutionTransition,
  secondTransition: PokemonDetailEvolutionTransition,
) => {
  const fromComparison = comparePokemonDetailEvolutionSpecies(
    firstTransition.fromPokemon,
    secondTransition.fromPokemon,
  );

  if (fromComparison !== 0) {
    return fromComparison;
  }

  const toComparison = comparePokemonDetailEvolutionSpecies(
    firstTransition.toPokemon,
    secondTransition.toPokemon,
  );

  if (toComparison !== 0) {
    return toComparison;
  }

  return (
    firstTransition.edges[0].edge.sort_order -
    secondTransition.edges[0].edge.sort_order
  );
};

export const comparePokemonDetailEvolutionPaths = (
  firstPath: PokemonDetailEvolutionPath,
  secondPath: PokemonDetailEvolutionPath,
) => {
  const maxStepCount = Math.max(
    firstPath.steps.length,
    secondPath.steps.length,
  );

  for (let stepIndex = 0; stepIndex < maxStepCount; stepIndex++) {
    const firstStep = firstPath.steps[stepIndex];
    const secondStep = secondPath.steps[stepIndex];

    if (!firstStep) {
      return -1;
    }

    if (!secondStep) {
      return 1;
    }

    const speciesComparison = comparePokemonDetailEvolutionSpecies(
      firstStep.pokemon,
      secondStep.pokemon,
    );

    if (speciesComparison !== 0) {
      return speciesComparison;
    }

    const firstSortOrder =
      firstStep.edgesToNext[0]?.edge.sort_order ?? Number.MAX_SAFE_INTEGER;
    const secondSortOrder =
      secondStep.edgesToNext[0]?.edge.sort_order ?? Number.MAX_SAFE_INTEGER;

    if (firstSortOrder !== secondSortOrder) {
      return firstSortOrder - secondSortOrder;
    }
  }

  return firstPath.key.localeCompare(secondPath.key);
};
