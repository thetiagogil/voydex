import { notFound } from "next/navigation";

import { getMainlinePlayTeamPlanData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamPlan } from "@/modules/mainline/features/plays/hub/views/team/team-plan/mainline-play-team-plan";

type MainlinePlayTeamPlanRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamPlanRoute({
  params,
}: MainlinePlayTeamPlanRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamPlanData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamPlan data={data} />;
}
