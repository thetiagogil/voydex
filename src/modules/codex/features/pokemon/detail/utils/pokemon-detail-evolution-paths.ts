import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
  PokemonEvolutionSpeciesSummary,
} from "@/modules/reference/types";
import {
  comparePokemonDetailEvolutionPaths,
  comparePokemonDetailEvolutionSpecies,
  comparePokemonDetailEvolutionTransitions,
  getPokemonDetailEvolutionTransitionKey,
  type PokemonDetailEvolutionTransition,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-path-sorting";
import type {
  PokemonDetailEvolutionPath,
  PokemonDetailEvolutionPathStep,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-path-types";

type PokemonDetailEvolutionPathNode = {
  formId: number;
  pokemon: PokemonEvolutionSpeciesSummary;
};

export const getPokemonDetailEvolutionPaths = ({
  activeSpeciesId,
  edges,
  family,
}: {
  activeSpeciesId: number;
  edges: PokemonEvolutionEdgeSummary[];
  family: PokemonEvolutionFamilySummary;
}): PokemonDetailEvolutionPath[] => {
  const evolutionSpeciesIds = new Set<number>([activeSpeciesId]);

  for (const edge of edges) {
    evolutionSpeciesIds.add(edge.edge.from_species_id);
    evolutionSpeciesIds.add(edge.edge.to_species_id);
  }

  const evolutionSpecies = family.species.filter((pokemonSpecies) => {
    return evolutionSpeciesIds.has(pokemonSpecies.species.id);
  });
  const speciesById = new Map(
    evolutionSpecies.map((pokemonSpecies) => [
      pokemonSpecies.species.id,
      pokemonSpecies,
    ]),
  );
  const transitionsByKey = new Map<string, PokemonDetailEvolutionTransition>();

  for (const edge of edges) {
    const fromPokemon = speciesById.get(edge.edge.from_species_id);
    const toPokemon = speciesById.get(edge.edge.to_species_id);

    if (!fromPokemon || !toPokemon) {
      continue;
    }

    const key = getPokemonDetailEvolutionTransitionKey(edge);
    const existingTransition = transitionsByKey.get(key);

    if (existingTransition) {
      existingTransition.edges.push(edge);
      continue;
    }

    transitionsByKey.set(key, {
      edges: [edge],
      fromFormId: edge.edge.from_form_id,
      fromPokemon,
      key,
      toFormId: edge.edge.to_form_id,
      toPokemon,
    });
  }

  const transitions = [...transitionsByKey.values()].sort(
    comparePokemonDetailEvolutionTransitions,
  );
  const transitionsByFromFormId = new Map<
    number,
    PokemonDetailEvolutionTransition[]
  >();

  for (const transition of transitions) {
    const currentTransitions =
      transitionsByFromFormId.get(transition.fromFormId) ?? [];

    currentTransitions.push(transition);
    transitionsByFromFormId.set(transition.fromFormId, currentTransitions);
  }

  const targetFormIds = new Set(
    transitions.map((transition) => transition.toFormId),
  );
  const rootNodesByFormId = new Map<number, PokemonDetailEvolutionPathNode>();

  for (const transition of transitions) {
    if (targetFormIds.has(transition.fromFormId)) {
      continue;
    }

    if (!rootNodesByFormId.has(transition.fromFormId)) {
      rootNodesByFormId.set(transition.fromFormId, {
        formId: transition.fromFormId,
        pokemon: transition.fromPokemon,
      });
    }
  }

  if (!rootNodesByFormId.size) {
    const activePokemon = speciesById.get(activeSpeciesId);
    const fallbackTransition = transitions[0];
    const fallbackFormId =
      activePokemon?.defaultForm?.id ?? fallbackTransition?.fromFormId;
    const fallbackPokemon = activePokemon ?? fallbackTransition?.fromPokemon;

    if (fallbackPokemon && fallbackFormId) {
      rootNodesByFormId.set(fallbackFormId, {
        formId: fallbackFormId,
        pokemon: fallbackPokemon,
      });
    }
  }

  const rootNodes = [...rootNodesByFormId.values()].sort((first, second) => {
    const speciesComparison = comparePokemonDetailEvolutionSpecies(
      first.pokemon,
      second.pokemon,
    );

    if (speciesComparison !== 0) {
      return speciesComparison;
    }

    return first.formId - second.formId;
  });

  const buildPathStepsFromNode = (
    node: PokemonDetailEvolutionPathNode,
    visitedFormIds: Set<number>,
  ): PokemonDetailEvolutionPathStep[][] => {
    const outgoingTransitions = transitionsByFromFormId.get(node.formId) ?? [];
    const validTransitions = outgoingTransitions.filter((transition) => {
      return !visitedFormIds.has(transition.toFormId);
    });

    if (!validTransitions.length) {
      return [
        [
          {
            edgesToNext: [],
            key: `${node.formId}:leaf`,
            pokemon: node.pokemon,
          },
        ],
      ];
    }

    return validTransitions.flatMap((transition) => {
      const nextVisitedFormIds = new Set(visitedFormIds);

      nextVisitedFormIds.add(transition.toFormId);

      return buildPathStepsFromNode(
        {
          formId: transition.toFormId,
          pokemon: transition.toPokemon,
        },
        nextVisitedFormIds,
      ).map((childPathSteps) => [
        {
          edgesToNext: transition.edges,
          key: transition.key,
          pokemon: node.pokemon,
        },
        ...childPathSteps,
      ]);
    });
  };

  return rootNodes
    .flatMap((node) => {
      return buildPathStepsFromNode(node, new Set([node.formId]));
    })
    .map((steps, index) => {
      const key = steps
        .map((step) => {
          return step.key;
        })
        .join("|");

      return {
        edges: steps.flatMap((step) => step.edgesToNext),
        key: `${key}:${index}`,
        steps,
      };
    })
    .sort(comparePokemonDetailEvolutionPaths);
};
