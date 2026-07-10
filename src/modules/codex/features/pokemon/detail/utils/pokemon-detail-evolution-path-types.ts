import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
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
