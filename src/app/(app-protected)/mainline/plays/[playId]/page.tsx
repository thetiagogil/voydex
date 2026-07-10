import { notFound } from "next/navigation";

import { MainlinePlayHubPage } from "@/modules/mainline/features/plays/hub/shell/mainline-play-hub-page";
import { getMainlinePlayHubData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";

type PageProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function PlayPage({ params }: PageProps) {
  const { playId } = await params;
  const data = await getMainlinePlayHubData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayHubPage data={data} />;
}
