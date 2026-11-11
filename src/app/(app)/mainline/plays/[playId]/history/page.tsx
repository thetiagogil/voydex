import { PlayHistoryRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayHistoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayHistoryRoute({
  params,
}: MainlinePlayHistoryRouteProps) {
  const { playId } = await params;

  return <PlayHistoryRoute playId={playId} />;
}
