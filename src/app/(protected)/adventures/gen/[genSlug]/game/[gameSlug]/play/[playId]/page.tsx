import { PlayStats } from "@/components/features/play/play-stats";
import { ProgressTracking } from "@/components/features/play/progress-tracking";
import { TeamManagement } from "@/components/features/play/team-management";
import { PageLayout } from "@/components/layout/page-layout";
import { playthroughData } from "@/lib/mock-data";
import { notFound } from "next/navigation";

interface PlayPageProps {
  params: Promise<{
    genSlug: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default async function PlayPage({ params }: PlayPageProps) {
  const { playId } = await params;
  const playthrough = playthroughData[playId];

  if (!playthrough) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-8">
        <PlayStats playthrough={playthrough} />

        <TeamManagement playthrough={playthrough} />
        <ProgressTracking playthrough={playthrough} />
      </div>
    </PageLayout>
  );
}
