import { PlayTeamAnalysisRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayTeamAnalysisRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamAnalysisRoute({
  params,
}: MainlinePlayTeamAnalysisRouteProps) {
  const { playId } = await params;

  return <PlayTeamAnalysisRoute playId={playId} />;
}
