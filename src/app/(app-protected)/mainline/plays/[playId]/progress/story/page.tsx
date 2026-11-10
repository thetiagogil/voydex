import { PlayProgressStoryRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

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

  return (
    <PlayProgressStoryRoute
      playId={playId}
      recordMilestoneId={
        recordMilestoneId && Number.isFinite(recordMilestoneId)
          ? recordMilestoneId
          : null
      }
    />
  );
}
