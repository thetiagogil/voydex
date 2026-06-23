import { notFound } from "next/navigation";
import { MainlinePlayCollectiblesPage } from "@/modules/mainline/features/play/components/detail/mainline-play-collectibles-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/queries";
type MainlinePlayCollectiblesRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};
const MainlinePlayCollectiblesRoute = async ({
  params,
}: MainlinePlayCollectiblesRouteProps) => {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayCollectiblesPage data={data} />;
};
export default MainlinePlayCollectiblesRoute;
