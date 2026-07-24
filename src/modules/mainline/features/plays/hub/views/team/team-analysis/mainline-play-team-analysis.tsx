import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";

import { TeamAnalysisOverviewSection } from "./sections/analysis-overview/team-analysis-overview-section";
import { TeamAnalysisDefensiveSection } from "./sections/defensive-matchups/team-analysis-defensive-section";
import { TeamAnalysisMoveCoverageSection } from "./sections/move-coverage/team-analysis-move-coverage-section";
import { TeamAnalysisHealthSection } from "./sections/team-health/team-analysis-health-section";

type MainlinePlayTeamAnalysisProps = {
  data: MainlinePlayTeamAnalysisData;
  playId: string;
};

export const MainlinePlayTeamAnalysis = ({
  data,
  playId,
}: MainlinePlayTeamAnalysisProps) => {
  const { analysis } = data;
  const teamHref = appRoutes.mainlinePlayTeam(playId);

  return (
    <div className="grid gap-4">
      <h2 className="sr-only">Team Analysis</h2>

      {!analysis ? (
        <EmptyState
          title="Analysis unavailable"
          description="This Play does not have enough game context to apply generation-correct type rules."
          action={
            <Button
              variant="outline"
              nativeButton={false}
              render={<Link href={teamHref}>Open Team</Link>}
            />
          }
        />
      ) : analysis.members.length === 0 ? (
        <EmptyState
          title="No Active Pokémon recorded"
          description="Move Pokémon into the Active lineup to see defensive matchups and recorded move coverage."
          action={
            <Button
              variant="outline"
              nativeButton={false}
              render={<Link href={teamHref}>Open Team</Link>}
            />
          }
        />
      ) : (
        <>
          <TeamAnalysisOverviewSection analysis={analysis} />
          <TeamAnalysisHealthSection metrics={analysis.healthMetrics} />
          <TeamAnalysisDefensiveSection
            members={analysis.members}
            rows={analysis.defensiveRows}
          />
          <TeamAnalysisMoveCoverageSection
            members={analysis.members}
            rows={analysis.coverageRows}
          />
        </>
      )}
    </div>
  );
};
