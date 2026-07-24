import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { cn } from "@/shared/utils/cn";

import { teamPlanComparisonGridClassName } from "./team-plan-comparison-layout";
import { TeamPlanComparisonRow } from "./team-plan-comparison-row";

type TeamPlanComparisonSectionProps = {
  comparisons: MainlinePlayTeamPlanMemberComparison[];
  fillHeight: boolean;
  onSelect: (comparison: MainlinePlayTeamPlanMemberComparison) => void;
  selectedComparisonId: string | null;
  showSelection: boolean;
};

export const TeamPlanComparisonSection = ({
  comparisons,
  fillHeight,
  onSelect,
  selectedComparisonId,
  showSelection,
}: TeamPlanComparisonSectionProps) => {
  return (
    <MainlinePlaySectionCard
      title="Planned team comparison"
      contentClassName="p-0!"
      className={cn(fillHeight && "lg:h-full")}
      showSeparator
    >
      <div
        className={cn(
          "text-muted-foreground hidden gap-2.5 px-5 py-2 text-[0.625rem] font-medium uppercase lg:grid",
          teamPlanComparisonGridClassName,
        )}
      >
        <span />
        <span>Planned Pokémon</span>
        <span />
        <span>Tracked</span>
        <span />
      </div>

      {comparisons.length ? (
        <div
          role="list"
          aria-label="Team Plan comparisons"
          className="grid gap-1.5 p-2"
        >
          {comparisons.map((comparison) => (
            <TeamPlanComparisonRow
              key={comparison.planMemberId}
              comparison={comparison}
              selected={
                showSelection &&
                selectedComparisonId === comparison.planMemberId
              }
              onSelect={onSelect}
            />
          ))}
        </div>
      ) : (
        <p className="text-muted-foreground px-4 py-8 text-center text-sm">
          This Plan does not have any planned Pokémon yet.
        </p>
      )}
    </MainlinePlaySectionCard>
  );
};
