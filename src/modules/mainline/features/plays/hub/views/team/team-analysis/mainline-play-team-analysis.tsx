import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";

import { joinTeamAnalysisList } from "./data/team-analysis-health";
import { TeamAnalysisDefensiveSection } from "./sections/defensive-matchups/team-analysis-defensive-section";
import { TeamAnalysisMoveCoverageSection } from "./sections/move-coverage/team-analysis-move-coverage-section";
import { TeamAnalysisPageHead } from "./sections/page-head/team-analysis-page-head";
import { TeamAnalysisHealthSection } from "./sections/team-health/team-analysis-health-section";

type MainlinePlayTeamAnalysisProps = {
  data: MainlinePlayTeamAnalysisData;
  playId: string;
};

const emptyTeamArt = {
  name: "Pikachu",
  url: getPokemonFormImageUrl({ name: "Pikachu", slug: "pikachu" }),
};

/*
 * Team analysis is a tool, so it stays quiet: four health cards (Team health
 * first) read with the battle math, then the defensive matrix and the move
 * coverage by type. Only the data keeps
 * its colour: matchup tints, type colours and the Pokémon themselves. How the
 * team reads against each Story battle lives in Story, on its milestone.
 */
export const MainlinePlayTeamAnalysis = ({
  data,
  playId,
}: MainlinePlayTeamAnalysisProps) => {
  const { analysis } = data;

  if (!analysis || analysis.members.length === 0) {
    return (
      <div className="grid min-w-0 gap-6 sm:gap-7">
        <TeamAnalysisPageHead description="How your team holds up" />
        <EmptyState
          art={emptyTeamArt}
          title={
            analysis ? "Not enough team to read yet" : "No type chart to read"
          }
          description={
            analysis
              ? "Once Pokémon join your active team, this shows how it holds up: what it's weak to, what it resists and what your moves reach."
              : "This Play's game has no generation recorded, so Voydex can't pick the type chart to read your team with."
          }
          action={
            <Button
              variant="secondary"
              nativeButton={false}
              render={
                <Link href={appRoutes.mainlinePlayTeam(playId)}>
                  Open your team
                </Link>
              }
            />
          }
        />
      </div>
    );
  }

  const { evidence } = analysis;
  const leftOut = [
    ...(analysis.abilitiesApply ? ["abilities"] : []),
    ...(analysis.heldItemsApply ? ["held items"] : []),
    "battle effects",
  ];

  return (
    <div className="grid min-w-0 gap-8 sm:gap-10">
      <div className="grid min-w-0 gap-6 sm:gap-7">
        <TeamAnalysisPageHead
          description={`${analysis.lineupLabel} · ${evidence.activeCount} Pokémon · ${evidence.recordedMoveCount} of ${evidence.possibleMoveCount} moves recorded`}
        />
        <TeamAnalysisHealthSection
          members={analysis.members}
          metrics={analysis.healthMetrics}
          roughNote={analysis.roughNote}
        />
      </div>
      <TeamAnalysisDefensiveSection
        footnote={`Read from each Pokémon's own typing on the ${analysis.generation.name} type chart, without ${joinTeamAnalysisList(leftOut, "or")}.`}
        lineupLabel={analysis.lineupLabel}
        members={analysis.members}
        rows={analysis.defensiveRows}
      />
      <TeamAnalysisMoveCoverageSection rows={analysis.coverageRows} />
    </div>
  );
};
