import { notFound } from "next/navigation";

import { getMainlinePlayTeamData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamPlanPage } from "@/modules/mainline/features/plays/hub/views/team/mainline-play-team-plan-page";

type MainlinePlayTeamPlanRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamPlanRoute({
  params,
}: MainlinePlayTeamPlanRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamPlanPage data={data} playId={playId} />;
}
