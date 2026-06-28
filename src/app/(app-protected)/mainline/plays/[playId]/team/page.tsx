import { notFound } from "next/navigation";
import { MainlinePlayTeamPage } from "@/modules/mainline/features/play/detail/team/mainline-play-team-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/detail/shared/data/play-detail-query";

type MainlinePlayTeamRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayTeamRoute({
  params,
}: MainlinePlayTeamRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayDetailData(playId);
  if (!data) {
    notFound();
  }
  return <MainlinePlayTeamPage data={data} />;
}
