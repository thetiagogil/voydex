import { TeamPlanView } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-view";
import type { MainlinePlayTeamData } from "@/modules/mainline/features/plays/hub/types";
import { EmptyState } from "@/shared/components/empty-state";

type MainlinePlayTeamPlanPageProps = {
  data: MainlinePlayTeamData;
};

export const MainlinePlayTeamPlanPage = ({
  data,
}: MainlinePlayTeamPlanPageProps) => {
  if (!data.teamPlan) {
    return (
      <EmptyState
        title="No Team Plan linked"
        description="This Play does not have a linked Team Plan to compare with its recorded team."
      />
    );
  }

  return <TeamPlanView plan={data.teamPlan} />;
};
