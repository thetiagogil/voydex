import { Fragment } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailEvolutionConnector } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-connector";
import type { PokemonDetailEvolutionNodeLinkScope } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-node";
import { PokemonDetailEvolutionNode } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-node";
import {
  getPokemonDetailEvolutionBranchRows,
  getPokemonDetailEvolutionEdgesBetweenStages,
  getPokemonDetailEvolutionGridTemplateColumns,
  getPokemonDetailEvolutionStages,
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

const getEvolutionStageClassName = (speciesCount: number, isMobile = false) => {
  if (speciesCount === 1) {
    return cn("grid min-w-0 place-items-center", isMobile && "w-full");
  }

  return cn(
    "grid min-w-0 place-items-center gap-2",
    isMobile && "w-full",
    speciesCount > 2 ? "grid-cols-3" : "grid-cols-2",
  );
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
    activeVersionGroupId,
    family,
    generationSortOrder: activeGenerationSortOrder,
  });
  const stages = getPokemonDetailEvolutionStages({
    activeSpeciesId,
    edges: scopedEdges,
    family,
  });

  if (!stages.length) {
    return null;
  }

  const evolutionSpeciesCount = new Set(
    stages.flatMap((stage) =>
      stage.species.map((pokemon) => pokemon.species.id),
    ),
  ).size;

  if (evolutionSpeciesCount <= 1) {
    return null;
  }

  const firstStage = stages[0];
  const secondStage = stages[1];
  const isTwoStagePath =
    stages.length === 2 && firstStage?.species.length === 1;
  const pathRows =
    isTwoStagePath && firstStage && secondStage
      ? getPokemonDetailEvolutionBranchRows({
          fromStage: firstStage,
          scopedEdges,
          toStage: secondStage,
        })
      : [];
  const shouldRenderPathRows = pathRows.length > 0;
  const nodeLinkScope = {
    activeGameSlug,
    activeGenerationSlug,
    activeVersionGroupSlug,
  } satisfies PokemonDetailEvolutionNodeLinkScope;

  return (
    <section className="pt-3">
      <div className="mb-3">
        <h2 className="text-muted-foreground text-sm font-light">
          Evolution line
        </h2>
      </div>

      {shouldRenderPathRows ? (
        <div className="grid gap-2">
          {pathRows.map((row) => (
            <div
              key={row.key}
              className="grid items-center gap-2"
              style={{
                gridTemplateColumns: "auto minmax(4rem, 1fr) auto",
              }}
            >
              <PokemonDetailEvolutionNode
                linkScope={nodeLinkScope}
                pokemon={row.fromPokemon}
                scopedEdges={row.edges}
              />

              <PokemonDetailEvolutionConnector
                direction="horizontal"
                edges={row.edges}
                length="stretched"
              />

              <PokemonDetailEvolutionNode
                linkScope={nodeLinkScope}
                pokemon={row.toPokemon}
                scopedEdges={row.edges}
              />
            </div>
          ))}
        </div>
      ) : (
        <>
          <div
            className="hidden items-center gap-2 sm:grid"
            style={{
              gridTemplateColumns: getPokemonDetailEvolutionGridTemplateColumns(
                stages.length,
              ),
            }}
          >
            {stages.map((stage, index) => {
              const nextStage = stages[index + 1];
              const connectorEdges = nextStage
                ? getPokemonDetailEvolutionEdgesBetweenStages({
                    fromStage: stage,
                    scopedEdges,
                    toStage: nextStage,
                  })
                : [];

              return (
                <Fragment key={stage.key}>
                  <div
                    className={getEvolutionStageClassName(stage.species.length)}
                  >
                    {stage.species.map((pokemon) => (
                      <PokemonDetailEvolutionNode
                        key={pokemon.species.id}
                        linkScope={nodeLinkScope}
                        pokemon={pokemon}
                        scopedEdges={scopedEdges}
                      />
                    ))}
                  </div>

                  {nextStage ? (
                    <PokemonDetailEvolutionConnector
                      direction="horizontal"
                      edges={connectorEdges}
                    />
                  ) : null}
                </Fragment>
              );
            })}
          </div>

          <div className="flex flex-col items-center gap-2 sm:hidden">
            {stages.map((stage, index) => {
              const nextStage = stages[index + 1];
              const connectorEdges = nextStage
                ? getPokemonDetailEvolutionEdgesBetweenStages({
                    fromStage: stage,
                    scopedEdges,
                    toStage: nextStage,
                  })
                : [];

              return (
                <Fragment key={stage.key}>
                  <div
                    className={getEvolutionStageClassName(
                      stage.species.length,
                      true,
                    )}
                  >
                    {stage.species.map((pokemon) => (
                      <PokemonDetailEvolutionNode
                        key={pokemon.species.id}
                        linkScope={nodeLinkScope}
                        pokemon={pokemon}
                        scopedEdges={scopedEdges}
                      />
                    ))}
                  </div>

                  {nextStage ? (
                    <PokemonDetailEvolutionConnector
                      direction="vertical"
                      edges={connectorEdges}
                    />
                  ) : null}
                </Fragment>
              );
            })}
          </div>
        </>
      )}
    </section>
  );
};
