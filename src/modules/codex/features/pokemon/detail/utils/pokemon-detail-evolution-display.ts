import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
} from "@/modules/reference/types";

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

const getEvolutionEdgeGeneration = (edge: PokemonEvolutionEdgeSummary) => {
  return (
    edge.introducedGeneration?.sort_order ?? edge.edge.introduced_generation_id
  );
};

/*
 * One edge per distinct condition, the newest first: the way the line evolves
 * in the latest games of the generation you're reading leads.
 */
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

  return [...distinctEdgesByCondition.values()].sort((first, second) => {
    return (
      getEvolutionEdgeGeneration(second) - getEvolutionEdgeGeneration(first) ||
      first.edge.sort_order - second.edge.sort_order
    );
  });
};

const toSentenceCase = (text: string) => {
  return text.charAt(0).toUpperCase() + text.slice(1);
};

/* What it takes to evolve, as a short phrase: "Level 16", "Use Fire Stone". */
export const getPokemonDetailEvolutionConditionDescription = (
  edge: PokemonEvolutionEdgeSummary,
) => {
  if (edge.edge.condition_summary) {
    return toSentenceCase(edge.edge.condition_summary);
  }

  if (edge.edge.minimum_level) {
    return `Level ${edge.edge.minimum_level}`;
  }

  return edge.method?.name ?? "Condition not recorded";
};
