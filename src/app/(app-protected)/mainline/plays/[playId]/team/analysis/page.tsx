import { notFound } from "next/navigation";

import { getMainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamAnalysis } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/mainline-play-team-analysis";

type MainlinePlayTeamAnalysisRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamAnalysisRoute({
  params,
}: MainlinePlayTeamAnalysisRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayTeamAnalysisData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamAnalysis data={data} playId={playId} />;
}
