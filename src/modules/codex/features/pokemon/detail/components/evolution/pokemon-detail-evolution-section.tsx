import { Fragment } from "react";

import { PokemonDetailEvolutionConnector } from "@/modules/codex/features/pokemon/detail/components/evolution/pokemon-detail-evolution-connector";
import type { PokemonDetailEvolutionNodeLinkScope } from "@/modules/codex/features/pokemon/detail/components/evolution/pokemon-detail-evolution-node";
import { PokemonDetailEvolutionNode } from "@/modules/codex/features/pokemon/detail/components/evolution/pokemon-detail-evolution-node";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import {
  getPokemonDetailEvolutionPathGridTemplateColumns,
  getPokemonDetailEvolutionPaths,
  getPokemonDetailScopedEvolutionEdges,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type { PokemonEvolutionFamilySummary } from "@/modules/codex/shared/types";

type PokemonDetailEvolutionSectionProps = {
  activeFormId: number | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  activeGenerationSortOrder: number;
  activeSpeciesId: number;
  activeVersionGroupId: number | null;
  activeVersionGroupSlug: string | null;
  family: PokemonEvolutionFamilySummary;
};

const getEvolutionPathNodeColumn = (stepIndex: number) => {
  return stepIndex * 2 + 1;
};

const getEvolutionPathConnectorColumn = (stepIndex: number) => {
  return stepIndex * 2 + 2;
};

export const PokemonDetailEvolutionSection = ({
  activeFormId,
  activeGameSlug,
  activeGenerationSlug,
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

  if (!evolutionPaths.length) {
    return null;
  }

  const evolutionSpeciesCount = new Set(
    evolutionPaths.flatMap((path) =>
      path.steps.map((step) => step.pokemon.species.id),
    ),
  ).size;

  if (evolutionSpeciesCount <= 1) {
    return null;
  }

  const maxPathStepCount = Math.max(
    1,
    ...evolutionPaths.map((path) => path.steps.length),
  );
  const nodeLinkScope = {
    activeGameSlug,
    activeGenerationSlug,
    activeVersionGroupSlug,
  } satisfies PokemonDetailEvolutionNodeLinkScope;

  return (
    <PokemonDetailSectionCard
      title="Evolution line"
      contentClassName="grid gap-2"
    >
      {evolutionPaths.map((path) => (
        <div
          key={path.key}
          className="grid min-w-full items-center gap-2"
          style={{
            gridTemplateColumns:
              getPokemonDetailEvolutionPathGridTemplateColumns(
                maxPathStepCount,
              ),
          }}
        >
          {path.steps.map((step, stepIndex) => (
            <Fragment key={`${path.key}:${step.key}:${stepIndex}`}>
              <div
                className="justify-self-center"
                style={{
                  gridColumn: getEvolutionPathNodeColumn(stepIndex),
                }}
              >
                <PokemonDetailEvolutionNode
                  activeFormId={activeFormId}
                  activeSpeciesId={activeSpeciesId}
                  linkScope={nodeLinkScope}
                  pokemon={step.pokemon}
                  scopedEdges={path.edges}
                />
              </div>

              {step.edgesToNext.length ? (
                <div
                  className="min-w-0"
                  style={{
                    gridColumn: getEvolutionPathConnectorColumn(stepIndex),
                  }}
                >
                  <PokemonDetailEvolutionConnector
                    direction="horizontal"
                    edges={step.edgesToNext}
                    length="stretched"
                  />
                </div>
              ) : null}
            </Fragment>
          ))}
        </div>
      ))}
    </PokemonDetailSectionCard>
  );
};
