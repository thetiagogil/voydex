import { notFound } from "next/navigation";

import { getMainlinePlaySettingsData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlaySettings } from "@/modules/mainline/features/plays/hub/views/settings/mainline-play-settings";

type MainlinePlaySettingsRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlaySettingsRoute({
  params,
}: MainlinePlaySettingsRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlaySettingsData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlaySettings data={data} playId={playId} />;
}
