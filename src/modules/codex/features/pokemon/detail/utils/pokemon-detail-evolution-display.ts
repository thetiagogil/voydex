import { appIcons } from "@/shared/components/app-icon";
import type { AppIconComponent } from "@/shared/components/app-icon";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
} from "@/modules/codex/shared/types";

export type PokemonDetailEvolutionStage = {
  key: string;
  species: PokemonEvolutionSpeciesSummary[];
};

export type PokemonDetailEvolutionBranchRow = {
  edges: PokemonEvolutionEdgeSummary[];
  fromPokemon: PokemonEvolutionSpeciesSummary;
  key: string;
  toPokemon: PokemonEvolutionSpeciesSummary;
};

const compareEvolutionSpecies = (
  firstSpecies: PokemonEvolutionSpeciesSummary,
  secondSpecies: PokemonEvolutionSpeciesSummary,
) => {
  return (
    firstSpecies.species.national_number - secondSpecies.species.national_number
  );
};

const getOutgoingEvolutionEdges = (
  edges: PokemonEvolutionEdgeSummary[],
  speciesId: number,
) => {
  return edges.filter((edge) => {
    return edge.edge.from_species_id === speciesId;
  });
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

const getPokemonDetailConnectedEvolutionFormIds = ({
  activeFormId,
  edges,
}: {
  activeFormId: number;
  edges: PokemonEvolutionEdgeSummary[];
}) => {
  const connectedFormIds = new Set<number>([activeFormId]);
  let didChange = true;

  while (didChange) {
    didChange = false;

    for (const edge of edges) {
      const isConnected =
        connectedFormIds.has(edge.edge.from_form_id) ||
        connectedFormIds.has(edge.edge.to_form_id);

      if (!isConnected) {
        continue;
      }

      const previousSize = connectedFormIds.size;

      connectedFormIds.add(edge.edge.from_form_id);
      connectedFormIds.add(edge.edge.to_form_id);
      didChange = connectedFormIds.size !== previousSize;
    }
  }

  return connectedFormIds;
};

export const getPokemonDetailScopedEvolutionEdges = ({
  activeFormId,
  activeVersionGroupId,
  family,
  generationSortOrder,
}: {
  activeFormId: number | null;
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

  if (!activeFormId) {
    return versionGroupEdges;
  }

  const connectedFormIds = getPokemonDetailConnectedEvolutionFormIds({
    activeFormId,
    edges: versionGroupEdges,
  });

  if (connectedFormIds.size <= 1) {
    return versionGroupEdges;
  }

  return versionGroupEdges.filter((edge) => {
    return (
      connectedFormIds.has(edge.edge.from_form_id) &&
      connectedFormIds.has(edge.edge.to_form_id)
    );
  });
};

export const getPokemonDetailEvolutionStages = ({
  activeSpeciesId,
  edges,
  family,
}: {
  activeSpeciesId: number;
  edges: PokemonEvolutionEdgeSummary[];
  family: PokemonEvolutionFamilySummary;
}): PokemonDetailEvolutionStage[] => {
  const evolutionSpeciesIds = new Set<number>([activeSpeciesId]);

  for (const edge of edges) {
    evolutionSpeciesIds.add(edge.edge.from_species_id);
    evolutionSpeciesIds.add(edge.edge.to_species_id);
  }

  const evolutionSpecies = family.species.filter((pokemonSpecies) => {
    return evolutionSpeciesIds.has(pokemonSpecies.species.id);
  });
  const targetSpeciesIds = new Set(
    edges.map((edge) => edge.edge.to_species_id),
  );
  const speciesById = new Map(
    evolutionSpecies.map((pokemonSpecies) => [
      pokemonSpecies.species.id,
      pokemonSpecies,
    ]),
  );
  const roots = evolutionSpecies.filter((pokemonSpecies) => {
    return !targetSpeciesIds.has(pokemonSpecies.species.id);
  });
  const rootSpecies = roots.length
    ? roots
    : evolutionSpecies.filter((pokemonSpecies) => {
        return pokemonSpecies.species.id === activeSpeciesId;
      });
  const depthBySpeciesId = new Map<number, number>();
  const queue = rootSpecies.map((pokemonSpecies) => ({
    depth: 0,
    speciesId: pokemonSpecies.species.id,
  }));

  for (const pokemonSpecies of rootSpecies) {
    depthBySpeciesId.set(pokemonSpecies.species.id, 0);
  }

  while (queue.length) {
    const current = queue.shift();

    if (!current) {
      continue;
    }

    for (const edge of getOutgoingEvolutionEdges(edges, current.speciesId)) {
      const targetSpecies = speciesById.get(edge.edge.to_species_id);

      if (!targetSpecies) {
        continue;
      }

      const nextDepth = current.depth + 1;
      const existingDepth = depthBySpeciesId.get(targetSpecies.species.id);

      if (existingDepth !== undefined && existingDepth <= nextDepth) {
        continue;
      }

      depthBySpeciesId.set(targetSpecies.species.id, nextDepth);
      queue.push({
        depth: nextDepth,
        speciesId: targetSpecies.species.id,
      });
    }
  }

  for (const pokemonSpecies of evolutionSpecies) {
    if (!depthBySpeciesId.has(pokemonSpecies.species.id)) {
      depthBySpeciesId.set(pokemonSpecies.species.id, 0);
    }
  }

  const speciesByDepth = new Map<number, PokemonEvolutionSpeciesSummary[]>();

  for (const pokemonSpecies of evolutionSpecies) {
    const depth = depthBySpeciesId.get(pokemonSpecies.species.id) ?? 0;
    const currentSpecies = speciesByDepth.get(depth) ?? [];

    currentSpecies.push(pokemonSpecies);
    speciesByDepth.set(depth, currentSpecies);
  }

  return [...speciesByDepth.entries()]
    .sort(([firstDepth], [secondDepth]) => firstDepth - secondDepth)
    .map(([depth, species]) => ({
      key: `stage-${depth}`,
      species: species.sort(compareEvolutionSpecies),
    }));
};

export const getPokemonDetailEvolutionEdgesBetweenStages = ({
  fromStage,
  scopedEdges,
  toStage,
}: {
  fromStage: PokemonDetailEvolutionStage;
  scopedEdges: PokemonEvolutionEdgeSummary[];
  toStage: PokemonDetailEvolutionStage;
}) => {
  const fromSpeciesIds = new Set(
    fromStage.species.map((pokemonSpecies) => pokemonSpecies.species.id),
  );
  const toSpeciesIds = new Set(
    toStage.species.map((pokemonSpecies) => pokemonSpecies.species.id),
  );

  return scopedEdges.filter((edge) => {
    return (
      fromSpeciesIds.has(edge.edge.from_species_id) &&
      toSpeciesIds.has(edge.edge.to_species_id)
    );
  });
};

export const getPokemonDetailEvolutionBranchRows = ({
  fromStage,
  scopedEdges,
  toStage,
}: {
  fromStage: PokemonDetailEvolutionStage;
  scopedEdges: PokemonEvolutionEdgeSummary[];
  toStage: PokemonDetailEvolutionStage;
}): PokemonDetailEvolutionBranchRow[] => {
  const fromSpeciesById = new Map(
    fromStage.species.map((pokemon) => [pokemon.species.id, pokemon]),
  );
  const toSpeciesById = new Map(
    toStage.species.map((pokemon) => [pokemon.species.id, pokemon]),
  );
  const rowsByKey = new Map<string, PokemonDetailEvolutionBranchRow>();

  for (const edge of scopedEdges) {
    const fromPokemon = fromSpeciesById.get(edge.edge.from_species_id);
    const toPokemon = toSpeciesById.get(edge.edge.to_species_id);

    if (!fromPokemon || !toPokemon) {
      continue;
    }

    const key = [
      edge.edge.from_species_id,
      edge.edge.from_form_id,
      edge.edge.to_species_id,
      edge.edge.to_form_id,
    ].join(":");
    const existingRow = rowsByKey.get(key);

    if (existingRow) {
      existingRow.edges.push(edge);
      continue;
    }

    rowsByKey.set(key, {
      edges: [edge],
      fromPokemon,
      key,
      toPokemon,
    });
  }

  return [...rowsByKey.values()].sort((firstRow, secondRow) => {
    const fromComparison = compareEvolutionSpecies(
      firstRow.fromPokemon,
      secondRow.fromPokemon,
    );

    if (fromComparison !== 0) {
      return fromComparison;
    }

    const toComparison = compareEvolutionSpecies(
      firstRow.toPokemon,
      secondRow.toPokemon,
    );

    if (toComparison !== 0) {
      return toComparison;
    }

    return (
      firstRow.edges[0].edge.sort_order - secondRow.edges[0].edge.sort_order
    );
  });
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

export const getPokemonDetailEvolutionGridTemplateColumns = (
  stageCount: number,
) => {
  return Array.from({ length: Math.max(1, stageCount * 2 - 1) }, (_, index) => {
    return index % 2 === 0 ? "minmax(0, 1fr)" : "minmax(3.5rem, 0.5fr)";
  }).join(" ");
};
