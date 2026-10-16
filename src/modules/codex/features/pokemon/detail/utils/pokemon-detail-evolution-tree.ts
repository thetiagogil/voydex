import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
  PokemonForm,
} from "@/modules/reference/types";
import { getPokemonDetailEvolutionDisplayForm } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type { PokemonDetailEvolutionPath } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-path-types";

export type PokemonDetailEvolutionTreeNode = {
  children: PokemonDetailEvolutionTreeNode[];
  displayForm: PokemonForm | null;
  /* The edges from the parent stage into this one; empty for a first stage. */
  incomingEdges: PokemonEvolutionEdgeSummary[];
  key: string;
  pokemon: PokemonEvolutionSpeciesSummary;
};

/*
 * Merges the evolution paths into one tree, so a stage several paths share
 * (Eevee, Gloom, Wurmple) shows once with its branches after it.
 */
export const getPokemonDetailEvolutionTree = (
  paths: PokemonDetailEvolutionPath[],
): PokemonDetailEvolutionTreeNode[] => {
  const roots: PokemonDetailEvolutionTreeNode[] = [];

  for (const path of paths) {
    let siblings = roots;
    let incomingEdges: PokemonEvolutionEdgeSummary[] = [];

    for (const step of path.steps) {
      const displayForm = getPokemonDetailEvolutionDisplayForm({
        pokemon: step.pokemon,
        scopedEdges: path.edges,
      });
      const key = `${step.pokemon.species.id}:${displayForm?.id ?? "default"}`;
      let node = siblings.find((sibling) => sibling.key === key);

      if (!node) {
        node = {
          children: [],
          displayForm,
          incomingEdges,
          key,
          pokemon: step.pokemon,
        };
        siblings.push(node);
      }

      siblings = node.children;
      incomingEdges = step.edgesToNext;
    }
  }

  return roots;
};

/* The run of single evolutions from a node, and the branches that end it. */
export const getPokemonDetailEvolutionChain = (
  node: PokemonDetailEvolutionTreeNode,
) => {
  const chain = [node];
  let current = node;

  while (current.children.length === 1) {
    current = current.children[0];
    chain.push(current);
  }

  return { branches: current.children, chain };
};
