import { notFound } from "next/navigation";

import { getMainlinePlayHistoryData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayHistory } from "@/modules/mainline/features/plays/hub/views/history/mainline-play-history";

type MainlinePlayHistoryRouteProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function MainlinePlayHistoryRoute({
  params,
}: MainlinePlayHistoryRouteProps) {
  const { playId } = await params;
  const data = await getMainlinePlayHistoryData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayHistory data={data} playId={playId} />;
}
