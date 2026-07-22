import { notFound } from "next/navigation";

import { getMainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayOverview } from "@/modules/mainline/features/plays/hub/views/overview/mainline-play-overview";

type PageProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function PlayPage({ params }: PageProps) {
  const { playId } = await params;
  const data = await getMainlinePlayOverviewData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayOverview data={data} playId={playId} />;
}
