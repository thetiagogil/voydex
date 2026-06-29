import { Fragment } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailEvolutionConnector } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-connector";
import { PokemonDetailEvolutionNode } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-node";
import {
  getPokemonDetailEvolutionEdgesBetweenStages,
  getPokemonDetailEvolutionGridTemplateColumns,
  getPokemonDetailEvolutionStages,
  getPokemonDetailScopedEvolutionEdges,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-evolution-display";
import type { PokemonEvolutionFamilySummary } from "@/modules/codex/shared/types";

type PokemonDetailEvolutionSectionProps = {
  activeFormId: number | null;
  activeGenerationSortOrder: number;
  activeSpeciesId: number;
  activeVersionGroupId: number | null;
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
  activeGenerationSortOrder,
  activeSpeciesId,
  activeVersionGroupId,
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

  const isBranchingEvolution =
    stages.length === 2 && stages[1]?.species.length > 3;

  return (
    <section className="pt-3">
      <div className="mb-3">
        <h2 className="text-foreground text-sm font-semibold">
          Evolution line
        </h2>
      </div>

      {isBranchingEvolution ? (
        <div className="flex flex-col items-center gap-2">
          <div className="flex flex-wrap justify-center gap-2">
            {stages[0].species.map((pokemon) => (
              <PokemonDetailEvolutionNode
                key={pokemon.species.id}
                pokemon={pokemon}
                scopedEdges={scopedEdges}
              />
            ))}
          </div>

          <PokemonDetailEvolutionConnector
            direction="vertical"
            edges={getPokemonDetailEvolutionEdgesBetweenStages({
              fromStage: stages[0],
              scopedEdges,
              toStage: stages[1],
            })}
          />

          <div className="grid w-full grid-cols-3 place-items-center gap-2">
            {stages[1].species.map((pokemon) => (
              <PokemonDetailEvolutionNode
                key={pokemon.species.id}
                pokemon={pokemon}
                scopedEdges={scopedEdges}
              />
            ))}
          </div>
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
