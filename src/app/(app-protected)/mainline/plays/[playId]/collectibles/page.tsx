import { notFound } from "next/navigation";
import { MainlinePlayCollectiblesPage } from "@/modules/mainline/features/play/components/detail/mainline-play-collectibles-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/play-detail-query";

type MainlinePlayCollectiblesRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayCollectiblesRoute({
  params,
}: MainlinePlayCollectiblesRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayCollectiblesPage data={data} />;
}
