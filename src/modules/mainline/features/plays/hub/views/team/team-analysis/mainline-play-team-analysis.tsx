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
import { StoryMatchupsSection } from "./sections/story-matchups/story-matchups-section";
import { TeamAnalysisHealthSection } from "./sections/team-health/team-analysis-health-section";

type MainlinePlayTeamAnalysisProps = {
  data: MainlinePlayTeamAnalysisData;
  playId: string;
};

const emptyTeamArtUrl = getPokemonFormImageUrl({
  name: "Pikachu",
  sprite_slug: "pikachu",
});

/*
 * Team analysis is a tool, so it stays quiet: four health cards (Team health
 * first), then the defensive matrix and the move coverage. Only the data keeps
 * its colour: matchup tints, type colours and the Pokémon themselves. The
 * Story matchups reading lists the battles of the Story instead.
 */
export const MainlinePlayTeamAnalysis = ({
  data,
  playId,
}: MainlinePlayTeamAnalysisProps) => {
  const { analysis, storyMatchups } = data;

  if (data.reading === "story" && storyMatchups) {
    return (
      <div className="grid min-w-0 gap-6 sm:gap-7">
        <TeamAnalysisPageHead
          description={`${analysis?.lineupLabel ?? "Active team"} · ${storyMatchups.wonCount} of ${storyMatchups.battleCount} battles won`}
          playId={playId}
          reading="story"
          showReadingSwitch
        />
        <StoryMatchupsSection model={storyMatchups} />
      </div>
    );
  }

  if (!analysis || analysis.members.length === 0) {
    return (
      <div className="grid min-w-0 gap-6 sm:gap-7">
        <TeamAnalysisPageHead
          description="How your team holds up"
          playId={playId}
          showReadingSwitch={Boolean(analysis)}
        />
        <EmptyState
          artUrl={emptyTeamArtUrl}
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
              variant="outline"
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
          playId={playId}
          showReadingSwitch
        />
        <TeamAnalysisHealthSection metrics={analysis.healthMetrics} />
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
