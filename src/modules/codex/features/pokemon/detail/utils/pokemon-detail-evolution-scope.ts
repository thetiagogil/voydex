import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
} from "@/modules/reference/types";

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

const getEvolutionEdgeGenerationSortOrder = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  return (
    edge.introducedGeneration?.sort_order ?? edge.edge.introduced_generation_id
  );
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
