import { notFound } from "next/navigation";
import { MainlinePlayStoryPage } from "@/modules/mainline/features/play/components/detail/mainline-play-story-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/play-detail-query";

type MainlinePlayStoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayStoryRoute({
  params,
}: MainlinePlayStoryRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayStoryPage data={data} />;
}
