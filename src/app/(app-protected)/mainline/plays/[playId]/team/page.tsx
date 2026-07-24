import { notFound } from "next/navigation";

import { getMainlinePlayTeamOverviewData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamOverview } from "@/modules/mainline/features/plays/hub/views/team/team-overview/mainline-play-team-overview";

type MainlinePlayTeamRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamRoute({
  params,
}: MainlinePlayTeamRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamOverviewData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamOverview data={data} playId={playId} />;
}
