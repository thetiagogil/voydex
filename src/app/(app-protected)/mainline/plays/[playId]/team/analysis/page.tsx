import { notFound } from "next/navigation";

import { getMainlinePlayTeamAnalysisData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamAnalysis } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/mainline-play-team-analysis";

type MainlinePlayTeamAnalysisRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    reading?: string | string[];
  }>;
};

export default async function MainlinePlayTeamAnalysisRoute({
  params,
  searchParams,
}: MainlinePlayTeamAnalysisRouteProps) {
  const [{ playId }, { reading }] = await Promise.all([params, searchParams]);
  const data = await getMainlinePlayTeamAnalysisData(
    playId,
    reading === "story" ? "story" : "overall",
  );

  if (!data) {
    notFound();
  }

  return <MainlinePlayTeamAnalysis data={data} playId={playId} />;
}
