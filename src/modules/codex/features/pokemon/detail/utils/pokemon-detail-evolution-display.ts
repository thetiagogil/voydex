import { appIcons } from "@/shared/components/app-icon";
import type { AppIconComponent } from "@/shared/components/app-icon";
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
