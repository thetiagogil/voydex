import { notFound } from "next/navigation";
import { MainlinePlayPokedexPage } from "@/modules/mainline/features/play/detail/pokedex/mainline-play-pokedex-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/detail/shared/server/play-detail-query";

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
