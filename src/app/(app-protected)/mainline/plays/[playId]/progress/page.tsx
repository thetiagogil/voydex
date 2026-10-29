import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getMainlinePlayTracking } from "@/modules/mainline/features/plays/hub/server/play-hub-query";

type MainlinePlayProgressRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayProgressRoute({
  params,
}: MainlinePlayProgressRouteProps) {
  const { playId } = await params;

  /* Progress opens on Story, or on the Pokédex when this Play doesn't track Story. */
  const tracking = await getMainlinePlayTracking(playId);

  redirect(
    tracking.story
      ? appRoutes.mainlinePlayProgressStory(playId)
      : appRoutes.mainlinePlayProgressPokedex(playId),
  );
}
