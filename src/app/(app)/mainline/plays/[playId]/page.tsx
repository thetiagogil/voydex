import { PlayOverviewRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayOverviewRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayOverviewRoute({
  params,
}: MainlinePlayOverviewRouteProps) {
  const { playId } = await params;

  return <PlayOverviewRoute playId={playId} />;
}
