import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { Card, CardContent } from "@/shared/components/ui/card";

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
      <Card className="bg-card ring-app-surface-border/80 h-full gap-0 py-0 shadow-xs">
        <CardContent className="p-4">
          <h2 className="sr-only">Slot {comparison.slot} comparison</h2>
          <TeamPlanComparisonDetails
            comparison={comparison}
            idPrefix={`team-plan-panel-${comparison.planMemberId}`}
            mechanics={mechanics}
          />
        </CardContent>
      </Card>
    </aside>
  );
};
