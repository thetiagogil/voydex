import { notFound, redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

import {
  getMainlinePlayProgressCollectiblesData,
  getMainlinePlayTracking,
} from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayProgressCollectibles } from "@/modules/mainline/features/plays/hub/views/progress/progress-collectibles/mainline-play-progress-collectibles";

type MainlinePlayProgressCollectiblesRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    collectible?: string | string[];
  }>;
};

export default async function MainlinePlayProgressCollectiblesRoute({
  params,
  searchParams,
}: MainlinePlayProgressCollectiblesRouteProps) {
  const { playId } = await params;
  const { collectible } = await searchParams;
  const [data, tracking] = await Promise.all([
    getMainlinePlayProgressCollectiblesData(playId),
    getMainlinePlayTracking(playId),
  ]);

  if (!data) {
    notFound();
  }

  /* A Play that doesn't track Collectibles has no Collectibles page. */
  if (!tracking.collectibles) {
    redirect(appRoutes.mainlinePlayProgressPokedex(playId));
  }

  return (
    <MainlinePlayProgressCollectibles
      data={data}
      initialGroupSlug={
        typeof collectible === "string" ? collectible : undefined
      }
      playId={playId}
    />
  );
}
