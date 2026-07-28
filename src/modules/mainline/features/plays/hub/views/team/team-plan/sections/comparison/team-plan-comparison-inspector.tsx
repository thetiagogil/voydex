import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { MainlinePlayInspectorCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-inspector-card";

import { TeamPlanComparisonDetails } from "./team-plan-comparison-details";

type TeamPlanComparisonInspectorProps = {
  comparison: MainlinePlayTeamPlanMemberComparison;
  mechanics: GameMechanicsProfile;
};

export const TeamPlanComparisonInspector = ({
  comparison,
  mechanics,
}: TeamPlanComparisonInspectorProps) => {
  return (
    <aside className="hidden h-full lg:block">
      <MainlinePlayInspectorCard
        accessibilityTitle={`Slot ${comparison.slot} comparison`}
        className="h-full"
      >
        <TeamPlanComparisonDetails
          comparison={comparison}
          idPrefix={`team-plan-panel-${comparison.planMemberId}`}
          mechanics={mechanics}
        />
      </MainlinePlayInspectorCard>
    </aside>
  );
};
