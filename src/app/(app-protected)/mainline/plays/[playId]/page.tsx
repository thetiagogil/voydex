import { notFound } from "next/navigation";
import { MainlinePlayOverviewPage } from "@/modules/mainline/features/play/components/detail/mainline-play-overview-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/queries";
type MainlinePlayOverviewRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};
const MainlinePlayOverviewRoute = async ({
  params,
}: MainlinePlayOverviewRouteProps) => {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayOverviewPage data={data} />;
};
export default MainlinePlayOverviewRoute;
