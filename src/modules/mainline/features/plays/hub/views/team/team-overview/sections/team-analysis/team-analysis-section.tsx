import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import { getTeamAnalysisPreview } from "./team-analysis-model";

type TeamAnalysisSectionProps = {
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

export const TeamAnalysisSection = ({ roster }: TeamAnalysisSectionProps) => {
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
          label="Open full analysis"
          unavailableLabel="The full Team Analysis page is not available yet"
        />
      }
      contentClassName="py-4"
      showSeparator
    >
      <dl className="grid gap-4 sm:grid-cols-3 sm:gap-0">
        <TeamAnalysisSignal
          label="Defensive evidence"
          value={activeEvidence}
          detail={`${analysis.uniqueTypeCount} distinct types represented. Full matchups are not connected yet.`}
        />
        <TeamAnalysisSignal
          label="Move coverage"
          value={moveEvidence}
          detail="Generation-correct move facts are connected; full coverage analysis is not built yet."
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
