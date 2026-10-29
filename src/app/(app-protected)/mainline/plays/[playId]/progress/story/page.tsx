import { notFound, redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";

import {
  getMainlinePlayProgressStoryData,
  getMainlinePlayTracking,
} from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayProgressStory } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/mainline-play-progress-story";

type MainlinePlayProgressStoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    record?: string;
  }>;
};

export default async function MainlinePlayProgressStoryRoute({
  params,
  searchParams,
}: MainlinePlayProgressStoryRouteProps) {
  const [{ playId }, { record }] = await Promise.all([params, searchParams]);
  const recordMilestoneId = record ? Number.parseInt(record, 10) : null;
  const [data, tracking] = await Promise.all([
    getMainlinePlayProgressStoryData(playId),
    getMainlinePlayTracking(playId),
  ]);

  if (!data) {
    notFound();
  }

  /* A Play that doesn't track Story has no Story page; its link goes to the Pokédex. */
  if (!tracking.story) {
    redirect(appRoutes.mainlinePlayProgressPokedex(playId));
  }

  return (
    <MainlinePlayProgressStory
      data={data}
      playId={playId}
      recordMilestoneId={
        recordMilestoneId && Number.isFinite(recordMilestoneId)
          ? recordMilestoneId
          : null
      }
    />
  );
}
