import { selectEvolutionEdgesInForce } from "@/modules/reference/features/pokemon/domain/evolution-scope";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
} from "@/modules/reference/types";

/* The family forms the open version group (expansions included) hands out. */
const getPokemonDetailAvailableFormIds = ({
  family,
  versionGroupIds,
}: {
  family: PokemonEvolutionFamilySummary;
  versionGroupIds: number[];
}) => {
  const groupIds = new Set(versionGroupIds);
  const formIds = new Set<number>();

  for (const row of family.availability) {
    if (!groupIds.has(row.versionGroupId)) continue;

    if (row.formId !== null) {
      formIds.add(row.formId);
      continue;
    }

    for (const pokemon of family.species) {
      if (pokemon.species.id !== row.speciesId) continue;
      for (const { form } of pokemon.forms) formIds.add(form.id);
    }
  }

  return formIds;
};

/* The edges the open game has (see `selectEvolutionEdgesInForce`). */
const getPokemonDetailGameEvolutionEdges = ({
  activeVersionGroupIds,
  edges,
  family,
  generationSortOrder,
}: {
  activeVersionGroupIds: number[];
  edges: PokemonEvolutionEdgeSummary[];
  family: PokemonEvolutionFamilySummary;
  generationSortOrder: number;
}) => {
  return selectEvolutionEdgesInForce({
    availableFormIds: getPokemonDetailAvailableFormIds({
      family,
      versionGroupIds: activeVersionGroupIds,
    }),
    edges: edges.map((edge) => ({ ...edge.edge, summary: edge })),
    generationOrder: generationSortOrder,
    getGenerationOrder: (edge) =>
      getEvolutionEdgeGenerationSortOrder(edge.summary),
    versionGroupIds: activeVersionGroupIds,
  }).map((edge) => edge.summary);
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
  activeVersionGroupIds,
  family,
  generationSortOrder,
}: {
  activeFormId: number | null;
  activeSpeciesId: number;
  /* The open version group and its expansions. */
  activeVersionGroupIds: number[];
  family: PokemonEvolutionFamilySummary;
  generationSortOrder: number;
}) => {
  const gameEdges = getPokemonDetailGameEvolutionEdges({
    activeVersionGroupIds,
    edges: family.edges,
    family,
    generationSortOrder,
  });

  return getPokemonDetailFormBranchScopedEvolutionEdges({
    activeFormId,
    activeSpeciesId,
    edges: gameEdges,
    family,
  });
};
