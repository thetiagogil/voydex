import { PlayView } from "@/features/play/components/play-view";
import { getPlayOverview } from "@/features/play/server/play-overview";
import { notFound } from "next/navigation";

type PlayPageProps = {
  params: Promise<{
    playId: string;
  }>;
}

export default async function PlayPage({ params }: PlayPageProps) {
  const { playId } = await params;
  const { data, error } = await getPlayOverview(playId);

  if (error || !data) {
    notFound();
  }

  return <PlayView playId={playId} initialOverview={data} />;
}
