import { notFound } from "next/navigation";

import { getMainlinePlayTeamRosterData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamRoster } from "@/modules/mainline/features/plays/hub/views/team/team-roster/mainline-play-team-roster";

type MainlinePlayTeamRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamRoute({
  params,
}: MainlinePlayTeamRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamRosterData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamRoster data={data} playId={playId} />;
}
