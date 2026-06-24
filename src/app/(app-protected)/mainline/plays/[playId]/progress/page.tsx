import { notFound } from "next/navigation";
import { MainlinePlayProgressPage } from "@/modules/mainline/features/play/components/detail/mainline-play-progress-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/play-detail-query";

type MainlinePlayProgressRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayProgressRoute({
  params,
}: MainlinePlayProgressRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayProgressPage data={data} />;
}
