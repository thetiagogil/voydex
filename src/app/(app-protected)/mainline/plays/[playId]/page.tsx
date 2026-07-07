import { notFound } from "next/navigation";

import { MainlinePlayPage } from "@/modules/mainline/features/plays/mainline-play-page";
import { getMainlinePlayPageData } from "@/modules/mainline/features/plays/server/play-page-query";

type PageProps = {
  params: Promise<{
    playId: string;
  }>;
};

export default async function PlayPage({ params }: PageProps) {
  const { playId } = await params;
  const data = await getMainlinePlayPageData(playId);

  if (!data) {
    notFound();
  }

  return <MainlinePlayPage data={data} />;
}
