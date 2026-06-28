import { notFound } from "next/navigation";
import { MainlinePlayOverviewPage } from "@/modules/mainline/features/play/detail/overview/mainline-play-overview-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/detail/shared/data/play-detail-query";

type MainlinePlayOverviewRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayOverviewRoute({
  params,
}: MainlinePlayOverviewRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayOverviewPage data={data} />;
}
