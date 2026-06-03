"use client";

import type { PlayPokemon } from "@/features/play/types";
import { buildPokemonTeamAnalysis } from "@/features/play/utils/pokemon-team-analysis";
import {
  Tabs,
  TabsContent,
  TabsList,
  TabsTrigger,
} from "@/shared/components/ui/tabs";
import { useMemo } from "react";
import { PokemonTeamAnalysisCoverage } from "./pokemon-team-analysis-coverage";
import { PokemonTeamAnalysisOverview } from "./pokemon-team-analysis-overview";
import { PokemonTeamAnalysisTypeChart } from "./pokemon-team-analysis-type-chart";

type PokemonTeamAnalysisProps = {
  pokemon: PlayPokemon[];
  generationId: number;
  variant?: "full" | "summary";
};

export const PokemonTeamAnalysis = ({
  pokemon,
  generationId,
  variant = "full",
}: PokemonTeamAnalysisProps) => {
  const analysis = useMemo(
    () => buildPokemonTeamAnalysis(pokemon, generationId),
    [generationId, pokemon],
  );

  const isSummary = variant === "summary";

  if (pokemon.length === 0) {
    return (
      <div className="flex min-h-[560px] items-center justify-center p-6 text-center">
        <p className="text-muted-foreground max-w-md text-sm">
          Add Pokemon to this view to see coverage and weaknesses.
        </p>
      </div>
    );
  }

  return (
    <Tabs defaultValue="overview" className="flex min-h-[560px] flex-col gap-0">
      <div className="border-border flex items-center justify-center border-b py-3">
        <TabsList>
          <TabsTrigger value="overview">Overview</TabsTrigger>
          <TabsTrigger value="coverage">Coverage</TabsTrigger>
          {!isSummary ? (
            <TabsTrigger value="chart">Type Chart</TabsTrigger>
          ) : null}
        </TabsList>
      </div>

      <TabsContent value="overview" className="m-0 flex-1 p-4 md:p-6">
        <PokemonTeamAnalysisOverview
          analysis={analysis}
          isSummary={isSummary}
        />
      </TabsContent>

      <TabsContent value="coverage" className="m-0 flex-1 p-4 md:p-6">
        <PokemonTeamAnalysisCoverage analysis={analysis} />
      </TabsContent>

      {!isSummary ? (
        <TabsContent value="chart" className="m-0 flex-1 p-4 md:p-6">
          <PokemonTeamAnalysisTypeChart
            analysis={analysis}
            generationId={generationId}
          />
        </TabsContent>
      ) : null}
    </Tabs>
  );
};
