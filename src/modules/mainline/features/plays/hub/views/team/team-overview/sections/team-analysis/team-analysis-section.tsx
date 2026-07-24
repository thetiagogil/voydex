import { appRoutes } from "@/config/routes";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import { getTeamAnalysisPreview } from "./team-analysis-model";

type TeamAnalysisSectionProps = {
  playId: string;
  roster: MainlinePlayTeamMember[];
};

const TeamAnalysisSignal = ({
  detail,
  label,
  value,
}: {
  detail: string;
  label: string;
  value: string;
}) => {
  return (
    <div className="grid content-start gap-1.5 sm:px-4 sm:not-first:border-l sm:first:pl-0 sm:last:pr-0">
      <dt className="text-muted-foreground text-xs font-medium">{label}</dt>
      <dd className="text-foreground text-sm font-semibold">{value}</dd>
      <dd className="text-muted-foreground text-xs leading-5">{detail}</dd>
    </div>
  );
};

export const TeamAnalysisSection = ({
  playId,
  roster,
}: TeamAnalysisSectionProps) => {
  const analysis = getTeamAnalysisPreview(roster);
  const activeEvidence = analysis.activeCount
    ? `${analysis.typedMemberCount} of ${analysis.activeCount} typed`
    : "No Active members recorded";
  const moveEvidence = analysis.activeCount
    ? `${analysis.membersWithMoves} of ${analysis.activeCount} members`
    : "No moves recorded";
  const watchlist = analysis.unknownActivePositions
    ? `${analysis.unknownActivePositions} positions not recorded`
    : "All Active positions recorded";

  return (
    <MainlinePlaySectionCard
      title="Team Analysis"
      action={
        <MainlinePlaySectionDestination
          href={appRoutes.mainlinePlayTeamAnalysis(playId)}
          label="Open full analysis"
        />
      }
      contentClassName="py-4"
      showSeparator
    >
      <dl className="grid gap-4 sm:grid-cols-3 sm:gap-0">
        <TeamAnalysisSignal
          label="Defensive evidence"
          value={activeEvidence}
          detail={`${analysis.uniqueTypeCount} distinct types represented in the Active lineup.`}
        />
        <TeamAnalysisSignal
          label="Move coverage"
          value={moveEvidence}
          detail="Recorded damaging moves are evaluated with generation-correct type rules."
        />
        <TeamAnalysisSignal
          label="Watchlist"
          value={watchlist}
          detail="No weakness claims are inferred from incomplete evidence."
        />
      </dl>
    </MainlinePlaySectionCard>
  );
};
