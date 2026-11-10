import { PlaySettingsRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlaySettingsRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlaySettingsRoute({
  params,
}: MainlinePlaySettingsRouteProps) {
  const { playId } = await params;

  return <PlaySettingsRoute playId={playId} />;
}
