import { notFound } from "next/navigation";

import { getMainlinePlayTeamData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeam } from "@/modules/mainline/features/plays/hub/views/team/mainline-play-team";

type MainlinePlayTeamRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamRoute({
  params,
}: MainlinePlayTeamRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamData(playId);

  if (!data) {
    notFound();
  }

  return (
    <MainlinePlayTeam
      events={data.teamTimelinePreview}
      gameSlug={data.play.game_slug}
      mechanics={data.mechanics}
      playId={playId}
      roster={data.roster}
      teamPlan={data.teamPlan}
    />
  );
}
