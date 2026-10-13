import { appRoutes } from "@/config/routes";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import { teamRosterSize } from "../roster/team-roster-model";
import { getTeamAnalysisPreview } from "./team-analysis-model";

type TeamAnalysisSectionProps = {
  className?: string;
  playId: string;
  roster: MainlinePlayTeamMember[];
};

const TeamAnalysisSignal = ({
  label,
  value,
}: {
  label: string;
  value: string;
}) => {
  return (
    <div className="grid content-start gap-0.5 py-3.5 first:pt-0 last:pb-0 @2xl:px-5 @2xl:py-0 @2xl:first:pl-0 @2xl:last:pr-0">
      <dt className="text-ink-2 text-13 font-bold">{label}</dt>
      <dd className="text-16 font-extrabold">{value}</dd>
    </div>
  );
};

/* A quick read of the team before the full analysis: one line each. */
export const TeamAnalysisSection = ({
  className,
  playId,
  roster,
}: TeamAnalysisSectionProps) => {
  const { activeCount, membersWithMoves, uniqueTypeCount, openSlotCount } =
    getTeamAnalysisPreview(roster);
  const types = activeCount
    ? `${uniqueTypeCount} ${uniqueTypeCount === 1 ? "type" : "types"} across ${activeCount} Pokémon`
    : "No Pokémon on the team yet";
  const moves = activeCount
    ? `${membersWithMoves} of ${activeCount} have moves recorded`
    : "No moves recorded yet";
  const slots = openSlotCount
    ? `${openSlotCount} still empty`
    : `All ${teamRosterSize} filled`;

  return (
    <MainlinePlaySectionCard
      title="Team analysis"
      headingLevel={3}
      action={
        <MainlinePlaySectionDestination
          href={appRoutes.mainlinePlayTeamAnalysis(playId)}
          label="Open analysis"
        />
      }
      className={className}
      contentClassName="@container pt-1"
    >
      <dl className="divide-line grid divide-y @2xl:grid-cols-3 @2xl:divide-x @2xl:divide-y-0">
        <TeamAnalysisSignal label="Types" value={types} />
        <TeamAnalysisSignal label="Move coverage" value={moves} />
        <TeamAnalysisSignal label="Team slots" value={slots} />
      </dl>
    </MainlinePlaySectionCard>
  );
};
