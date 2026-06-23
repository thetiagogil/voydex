import { notFound } from "next/navigation";
import { MainlinePlayPokedexPage } from "@/modules/mainline/features/play/components/detail/mainline-play-pokedex-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/queries";
type MainlinePlayPokedexRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};
const MainlinePlayPokedexRoute = async ({
  params,
}: MainlinePlayPokedexRouteProps) => {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayPokedexPage data={data} />;
};
export default MainlinePlayPokedexRoute;
