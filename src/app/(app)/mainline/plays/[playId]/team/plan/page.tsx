import { PlayTeamPlanRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayTeamPlanRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamPlanRoute({
  params,
}: MainlinePlayTeamPlanRouteProps) {
  const { playId } = await params;

  return <PlayTeamPlanRoute playId={playId} />;
}
