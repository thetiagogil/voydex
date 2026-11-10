import { PlayProgressRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayProgressRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

/* Progress opens on Story, or on the Pokédex for a Play that doesn't track it. */
export default async function MainlinePlayProgressRoute({
  params,
}: MainlinePlayProgressRouteProps) {
  const { playId } = await params;

  return <PlayProgressRoute playId={playId} />;
}
