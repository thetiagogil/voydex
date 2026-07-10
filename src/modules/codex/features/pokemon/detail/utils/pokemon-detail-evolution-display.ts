import { appIcons } from "@/shared/components/app-icon";
import type { AppIconComponent } from "@/shared/components/app-icon";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
} from "@/modules/reference/types";

export type PokemonDetailEvolutionPathStep = {
  edgesToNext: PokemonEvolutionEdgeSummary[];
  key: string;
  pokemon: PokemonEvolutionSpeciesSummary;
};

export type PokemonDetailEvolutionPath = {
  edges: PokemonEvolutionEdgeSummary[];
  key: string;
  steps: PokemonDetailEvolutionPathStep[];
};

type PokemonDetailEvolutionTransition = {
  edges: PokemonEvolutionEdgeSummary[];
  fromFormId: number;
  fromPokemon: PokemonEvolutionSpeciesSummary;
  key: string;
  toFormId: number;
  toPokemon: PokemonEvolutionSpeciesSummary;
};

type PokemonDetailEvolutionPathNode = {
  formId: number;
  pokemon: PokemonEvolutionSpeciesSummary;
};

const compareEvolutionSpecies = (
  firstSpecies: PokemonEvolutionSpeciesSummary,
  secondSpecies: PokemonEvolutionSpeciesSummary,
) => {
  return (
    firstSpecies.species.national_number - secondSpecies.species.national_number
  );
};

const getEvolutionEdgeGenerationSortOrder = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  return (
    edge.introducedGeneration?.sort_order ?? edge.edge.introduced_generation_id
  );
};

const getPokemonDetailEvolutionFormPairKey = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  return `${edge.edge.from_form_id}:${edge.edge.to_form_id}`;
};

const getPokemonDetailEvolutionTransitionKey = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  return [
    edge.edge.from_species_id,
    edge.edge.from_form_id,
    edge.edge.to_species_id,
    edge.edge.to_form_id,
  ].join(":");
};

const comparePokemonDetailEvolutionTransitions = (
  firstTransition: PokemonDetailEvolutionTransition,
  secondTransition: PokemonDetailEvolutionTransition,
) => {
  const fromComparison = compareEvolutionSpecies(
    firstTransition.fromPokemon,
    secondTransition.fromPokemon,
  );

  if (fromComparison !== 0) {
    return fromComparison;
  }

  const toComparison = compareEvolutionSpecies(
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

const comparePokemonDetailEvolutionPaths = (
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

    const speciesComparison = compareEvolutionSpecies(
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

const getPokemonDetailVersionGroupScopedEvolutionEdges = ({
  activeVersionGroupId,
  edges,
}: {
  activeVersionGroupId: number | null;
  edges: PokemonEvolutionEdgeSummary[];
}) => {
  if (!activeVersionGroupId) {
    return edges;
  }

  const versionGroupSpecificFormPairs = new Set(
    edges
      .filter((edge) => {
        return edge.edge.version_group_id === activeVersionGroupId;
      })
      .map(getPokemonDetailEvolutionFormPairKey),
  );

  return edges.filter((edge) => {
    if (edge.edge.version_group_id === activeVersionGroupId) {
      return true;
    }

    if (edge.edge.version_group_id) {
      return false;
    }

    return !versionGroupSpecificFormPairs.has(
      getPokemonDetailEvolutionFormPairKey(edge),
    );
  });
};

const getPokemonDetailDefaultFormIdsBySpeciesId = (
  family: PokemonEvolutionFamilySummary,
) => {
  return new Map(
    family.species
      .map((pokemonSpecies) => {
        return pokemonSpecies.defaultForm
          ? ([
              pokemonSpecies.species.id,
              pokemonSpecies.defaultForm.id,
            ] as const)
          : null;
      })
      .filter((entry): entry is readonly [number, number] => Boolean(entry)),
  );
};

const hasPokemonDetailFormSpecificEvolutionEdges = ({
  defaultFormIdsBySpeciesId,
  edges,
}: {
  defaultFormIdsBySpeciesId: Map<number, number>;
  edges: PokemonEvolutionEdgeSummary[];
}) => {
  return edges.some((edge) => {
    return (
      edge.edge.from_form_id !==
        defaultFormIdsBySpeciesId.get(edge.edge.from_species_id) ||
      edge.edge.to_form_id !==
        defaultFormIdsBySpeciesId.get(edge.edge.to_species_id)
    );
  });
};

const getPokemonDetailConnectedEvolutionFormIds = ({
  activeFormId,
  edges,
}: {
  activeFormId: number;
  edges: PokemonEvolutionEdgeSummary[];
}) => {
  const connectedFormIds = new Set<number>([activeFormId]);
  let didAddFormId = true;

  while (didAddFormId) {
    didAddFormId = false;

    for (const edge of edges) {
      const isConnectedFromEdge = connectedFormIds.has(edge.edge.from_form_id);
      const isConnectedToEdge = connectedFormIds.has(edge.edge.to_form_id);

      if (!isConnectedFromEdge && !isConnectedToEdge) {
        continue;
      }

      const currentSize = connectedFormIds.size;

      connectedFormIds.add(edge.edge.from_form_id);
      connectedFormIds.add(edge.edge.to_form_id);

      if (connectedFormIds.size !== currentSize) {
        didAddFormId = true;
      }
    }
  }

  return connectedFormIds;
};

const getPokemonDetailFormBranchScopedEvolutionEdges = ({
  activeFormId,
  activeSpeciesId,
  edges,
  family,
}: {
  activeFormId: number | null;
  activeSpeciesId: number;
  edges: PokemonEvolutionEdgeSummary[];
  family: PokemonEvolutionFamilySummary;
}) => {
  if (!activeFormId) {
    return edges;
  }

  const defaultFormIdsBySpeciesId =
    getPokemonDetailDefaultFormIdsBySpeciesId(family);
  const hasFormSpecificEdges = hasPokemonDetailFormSpecificEvolutionEdges({
    defaultFormIdsBySpeciesId,
    edges,
  });

  if (!hasFormSpecificEdges) {
    return edges;
  }

  const connectedFormIds = getPokemonDetailConnectedEvolutionFormIds({
    activeFormId,
    edges,
  });

  return edges.filter((edge) => {
    return (
      connectedFormIds.has(edge.edge.from_form_id) &&
      connectedFormIds.has(edge.edge.to_form_id) &&
      !(
        edge.edge.from_species_id === activeSpeciesId &&
        edge.edge.from_form_id !== activeFormId
      ) &&
      !(
        edge.edge.to_species_id === activeSpeciesId &&
        edge.edge.to_form_id !== activeFormId
      )
    );
  });
};

export const getPokemonDetailScopedEvolutionEdges = ({
  activeFormId,
  activeSpeciesId,
  activeVersionGroupId,
  family,
  generationSortOrder,
}: {
  activeFormId: number | null;
  activeSpeciesId: number;
  activeVersionGroupId: number | null;
  family: PokemonEvolutionFamilySummary;
  generationSortOrder: number;
}) => {
  const generationEdges = family.edges.filter((edge) => {
    return getEvolutionEdgeGenerationSortOrder(edge) <= generationSortOrder;
  });
  const versionGroupEdges = getPokemonDetailVersionGroupScopedEvolutionEdges({
    activeVersionGroupId,
    edges: generationEdges,
  });

  return getPokemonDetailFormBranchScopedEvolutionEdges({
    activeFormId,
    activeSpeciesId,
    edges: versionGroupEdges,
    family,
  });
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
    const speciesComparison = compareEvolutionSpecies(
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

export const getPokemonDetailEvolutionDisplayForm = ({
  pokemon,
  scopedEdges,
}: {
  pokemon: PokemonEvolutionSpeciesSummary;
  scopedEdges: PokemonEvolutionEdgeSummary[];
}): PokemonForm | null => {
  const matchingEdge = scopedEdges.find((edge) => {
    return (
      edge.edge.from_species_id === pokemon.species.id ||
      edge.edge.to_species_id === pokemon.species.id
    );
  });

  if (!matchingEdge) {
    return pokemon.defaultForm;
  }

  if (matchingEdge.edge.from_species_id === pokemon.species.id) {
    return matchingEdge.fromForm ?? pokemon.defaultForm;
  }

  if (matchingEdge.edge.to_species_id === pokemon.species.id) {
    return matchingEdge.toForm ?? pokemon.defaultForm;
  }

  return pokemon.defaultForm;
};

const getPokemonDetailEvolutionConditionKey = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  if (edge.edge.minimum_level) {
    return `level:${edge.edge.minimum_level}`;
  }

  return [
    edge.method?.slug,
    edge.method?.name,
    edge.edge.condition_summary,
    edge.edge.item_id ? `item-${edge.edge.item_id}` : null,
    edge.edge.held_item_id ? `held-${edge.edge.held_item_id}` : null,
    edge.edge.known_move_id ? `move-${edge.edge.known_move_id}` : null,
    edge.edge.known_type_id ? `type-${edge.edge.known_type_id}` : null,
    edge.edge.location_label,
    edge.edge.time_of_day,
    edge.edge.gender,
  ]
    .filter(Boolean)
    .join(":")
    .toLowerCase();
};

export const getPokemonDetailDistinctEvolutionEdges = (
  edges: PokemonEvolutionEdgeSummary[],
) => {
  const distinctEdgesByCondition = new Map<
    string,
    PokemonEvolutionEdgeSummary
  >();

  for (const edge of edges) {
    const key = getPokemonDetailEvolutionConditionKey(edge);

    if (!distinctEdgesByCondition.has(key)) {
      distinctEdgesByCondition.set(key, edge);
    }
  }

  return [...distinctEdgesByCondition.values()];
};

export type PokemonDetailEvolutionConditionDisplay =
  | {
      kind: "icon";
      icon: AppIconComponent;
    }
  | {
      kind: "level";
      label: string;
    };

const getNormalizedEvolutionText = (edge: PokemonEvolutionEdgeSummary) => {
  return `${edge.method?.slug ?? ""} ${edge.method?.name ?? ""} ${
    edge.edge.condition_summary ?? ""
  }`.toLowerCase();
};

export const getPokemonDetailEvolutionConditionDisplay = (
  edge: PokemonEvolutionEdgeSummary,
): PokemonDetailEvolutionConditionDisplay => {
  if (edge.edge.minimum_level) {
    return {
      kind: "level",
      label: `Lv. ${edge.edge.minimum_level}`,
    };
  }

  const normalizedText = getNormalizedEvolutionText(edge);

  if (
    normalizedText.includes("item") ||
    normalizedText.includes("stone") ||
    normalizedText.includes("candy")
  ) {
    return {
      kind: "icon",
      icon: appIcons.product.collectible,
    };
  }

  if (normalizedText.includes("trade")) {
    return {
      kind: "icon",
      icon: appIcons.product.team,
    };
  }

  if (
    normalizedText.includes("friend") ||
    normalizedText.includes("happiness") ||
    normalizedText.includes("affection")
  ) {
    return {
      kind: "icon",
      icon: appIcons.product.health,
    };
  }

  if (
    normalizedText.includes("time") ||
    normalizedText.includes("day") ||
    normalizedText.includes("night")
  ) {
    return {
      kind: "icon",
      icon: appIcons.product.playtime,
    };
  }

  if (normalizedText.includes("location") || normalizedText.includes("area")) {
    return {
      kind: "icon",
      icon: appIcons.product.location,
    };
  }

  if (normalizedText.includes("move") || normalizedText.includes("type")) {
    return {
      kind: "icon",
      icon: appIcons.product.battle,
    };
  }

  return {
    kind: "icon",
    icon: appIcons.status.unknown,
  };
};

export const getPokemonDetailEvolutionConditionDescription = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  if (edge.edge.condition_summary) {
    return edge.edge.condition_summary;
  }

  if (edge.method?.description) {
    return edge.method.description;
  }

  if (edge.method?.name) {
    return `Evolves by ${edge.method.name}.`;
  }

  return "Evolution condition is not available in the seeded data.";
};

export const getPokemonDetailEvolutionPathGridTemplateColumns = (
  stepCount: number,
) => {
  return Array.from({ length: Math.max(1, stepCount * 2 - 1) }, (_, index) => {
    return index % 2 === 0 ? "4.5rem" : "minmax(2rem, 1fr)";
  }).join(" ");
};
