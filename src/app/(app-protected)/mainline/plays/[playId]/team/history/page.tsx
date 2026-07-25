import { notFound } from "next/navigation";

import { getMainlinePlayTeamHistoryData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamHistory } from "@/modules/mainline/features/plays/hub/views/team/team-history/mainline-play-team-history";

type MainlinePlayTeamHistoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamHistoryRoute({
  params,
}: MainlinePlayTeamHistoryRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamHistoryData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamHistory data={data} />;
}
