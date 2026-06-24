import { notFound } from "next/navigation";
import { MainlinePlayPokedexPage } from "@/modules/mainline/features/play/components/detail/mainline-play-pokedex-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/play-detail-query";

type MainlinePlayPokedexRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayPokedexRoute({
  params,
}: MainlinePlayPokedexRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayPokedexPage data={data} />;
}
