import { notFound } from "next/navigation";

import { MainlinePlayTeamPage } from "@/modules/mainline/features/play/components/detail/mainline-play-team-page";
import { getMainlinePlayDetailData } from "@/modules/mainline/features/play/data/queries";

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
