import { notFound } from "next/navigation";

import { getMainlinePlayProgressCollectiblesData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
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
  const data = await getMainlinePlayProgressCollectiblesData(playId);

  if (!data) {
    notFound();
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
