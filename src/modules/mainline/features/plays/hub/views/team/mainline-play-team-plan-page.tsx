import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { TeamPlanView } from "@/modules/mainline/features/plays/hub/views/team/sections/team-plan/team-plan-view";
import type { MainlinePlayTeamData } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";

type MainlinePlayTeamPlanPageProps = {
  data: MainlinePlayTeamData;
  playId: string;
};

export const MainlinePlayTeamPlanPage = ({
  data,
  playId,
}: MainlinePlayTeamPlanPageProps) => {
  const teamHref = appRoutes.mainlinePlayTeam(playId);

  if (!data.teamPlan) {
    return (
      <EmptyState
        title="No Team Plan linked"
        description="This Play does not have a linked Team Plan to compare with its recorded team."
        action={
          <Button
            render={<Link href={teamHref} />}
            nativeButton={false}
            variant="outline"
          >
            <AppIcon icon={appIcons.actions.back} inline="start" aria-hidden />
            Back to team
          </Button>
        }
      />
    );
  }

  return <TeamPlanView backHref={teamHref} plan={data.teamPlan} />;
};
