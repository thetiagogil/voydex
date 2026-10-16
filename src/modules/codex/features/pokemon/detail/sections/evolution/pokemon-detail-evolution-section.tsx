import { Fragment } from "react";

import {
  PokemonDetailEvolutionNode,
  type PokemonDetailEvolutionLinkScope,
} from "@/modules/codex/features/pokemon/detail/sections/evolution/pokemon-detail-evolution-node";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  getPokemonDetailDistinctEvolutionEdges,
  getPokemonDetailEvolutionConditionDescription,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import { getPokemonDetailEvolutionPaths } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-paths";
import { getPokemonDetailScopedEvolutionEdges } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-scope";
import {
  getPokemonDetailEvolutionChain,
  getPokemonDetailEvolutionTree,
  type PokemonDetailEvolutionTreeNode,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-tree";
import type {
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionFamilySummary,
} from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type PokemonDetailEvolutionSectionProps = PokemonDetailEvolutionLinkScope & {
  activeGenerationSortOrder: number;
  activeVersionGroupId: number | null;
  family: PokemonEvolutionFamilySummary;
};

const MAX_VISIBLE_CONDITIONS = 2;

/* v3's "how": an arrow over what it takes, between two stages. */
const EvolutionCondition = ({
  edges,
  showArrow,
}: {
  edges: PokemonEvolutionEdgeSummary[];
  showArrow: boolean;
}) => {
  const distinctEdges = getPokemonDetailDistinctEvolutionEdges(edges);
  const visibleEdges = distinctEdges.slice(0, MAX_VISIBLE_CONDITIONS);
  const hiddenEdges = distinctEdges.slice(MAX_VISIBLE_CONDITIONS);

  return (
    <div className="text-13 text-ink-2 flex max-w-36 flex-col items-center gap-1 text-center font-bold">
      {showArrow ? (
        <AppIcon icon={appIcons.actions.continue} size="md" aria-hidden />
      ) : null}
      <span className="sr-only">Evolves: </span>
      {visibleEdges.map((edge) => (
        <span key={edge.edge.id}>
          {getPokemonDetailEvolutionConditionDescription(edge)}
        </span>
      ))}
      {hiddenEdges.length ? (
        <details className="group flex flex-col items-center">
          <summary className="text-link focus-visible:outline-focus cursor-pointer list-none rounded-xs outline-none hover:underline focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid [&::-webkit-details-marker]:hidden">
            <span className="group-open:hidden">
              +{hiddenEdges.length} more
            </span>
            <span className="hidden group-open:inline">Show less</span>
          </summary>
          <span className="mt-1 flex flex-col gap-1">
            {hiddenEdges.map((edge) => (
              <span key={edge.edge.id}>
                {getPokemonDetailEvolutionConditionDescription(edge)}
              </span>
            ))}
          </span>
        </details>
      ) : null}
    </div>
  );
};

/*
 * One stage and everything after it: single evolutions run on in a row, as
 * v3 draws them; where the line branches, the branches sit below, each with
 * what it takes over its first stage.
 */
const EvolutionBranch = ({
  linkScope,
  node,
}: {
  linkScope: PokemonDetailEvolutionLinkScope;
  node: PokemonDetailEvolutionTreeNode;
}) => {
  const { branches, chain } = getPokemonDetailEvolutionChain(node);

  return (
    <div className="flex flex-col items-center gap-3">
      <div className="flex flex-wrap items-center justify-center gap-x-4.5 gap-y-4">
        {chain.map((chainNode, index) => (
          <Fragment key={chainNode.key}>
            {index > 0 ? (
              <EvolutionCondition edges={chainNode.incomingEdges} showArrow />
            ) : null}
            <PokemonDetailEvolutionNode
              linkScope={linkScope}
              node={chainNode}
            />
          </Fragment>
        ))}
      </div>
      {branches.length ? (
        <>
          <AppIcon
            icon={appIcons.actions.continue}
            size="md"
            aria-hidden
            className="text-ink-2 rotate-90"
          />
          <ul className="flex flex-wrap items-end justify-center gap-x-4 gap-y-5">
            {branches.map((branch) => (
              <li key={branch.key} className="flex flex-col items-center gap-2">
                <EvolutionCondition
                  edges={branch.incomingEdges}
                  showArrow={false}
                />
                <EvolutionBranch linkScope={linkScope} node={branch} />
              </li>
            ))}
          </ul>
        </>
      ) : null}
    </div>
  );
};

export const PokemonDetailEvolutionSection = ({
  activeFormId,
  activeGenerationSortOrder,
  activeSpeciesId,
  activeVersionGroupId,
  activeVersionGroupSlug,
  family,
}: PokemonDetailEvolutionSectionProps) => {
  const scopedEdges = getPokemonDetailScopedEvolutionEdges({
    activeFormId,
    activeSpeciesId,
    activeVersionGroupId,
    family,
    generationSortOrder: activeGenerationSortOrder,
  });
  const evolutionPaths = getPokemonDetailEvolutionPaths({
    activeSpeciesId,
    edges: scopedEdges,
    family,
  });
  const evolutionSpeciesCount = new Set(
    evolutionPaths.flatMap((path) =>
      path.steps.map((step) => step.pokemon.species.id),
    ),
  ).size;

  if (evolutionSpeciesCount <= 1) {
    return null;
  }

  const linkScope = {
    activeFormId,
    activeSpeciesId,
    activeVersionGroupSlug,
  } satisfies PokemonDetailEvolutionLinkScope;

  return (
    <DetailSectionCard id="evolution" title="Evolution">
      <div className="flex flex-col gap-6">
        {getPokemonDetailEvolutionTree(evolutionPaths).map((root) => (
          <EvolutionBranch key={root.key} linkScope={linkScope} node={root} />
        ))}
      </div>
    </DetailSectionCard>
  );
};
