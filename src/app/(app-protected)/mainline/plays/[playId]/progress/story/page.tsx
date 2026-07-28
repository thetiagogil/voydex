import { notFound } from "next/navigation";

import { getMainlinePlayProgressStoryData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayProgressStory } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/mainline-play-progress-story";

type MainlinePlayProgressStoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayProgressStoryRoute({
  params,
}: MainlinePlayProgressStoryRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayProgressStoryData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayProgressStory data={data} playId={playId} />;
}
