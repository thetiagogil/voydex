import { CreatePlaythroughDialog } from "@/components/features/game/create-playthrough-dialog";
import { GameInfoCard } from "@/components/features/game/game-info-card";
import { PlaythroughCard } from "@/components/features/game/playthrough-card";
import { PlaythroughsSectionHeader } from "@/components/features/game/playthroughs-section-header";
import { PageLayout } from "@/components/layout/page-layout";
import { Button } from "@/components/ui/button";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";
import { gameData } from "@/lib/mock-data";
import { Play, Plus } from "lucide-react";
import { notFound } from "next/navigation";

interface GamePageProps {
  params: Promise<{
    genSlug: string;
    gameSlug: string;
  }>;
}

export default async function GamePage({ params }: GamePageProps) {
  const { genSlug, gameSlug } = await params;
  const gameKey = `${genSlug}/${gameSlug}`;
  const game = gameData[gameKey];

  if (!game) {
    notFound();
  }

  return (
    <PageLayout>
      <div className="space-y-6">
        <GameInfoCard game={game} />

        <PlaythroughsSectionHeader game={game} />

        {!game.playthroughs || game.playthroughs.length === 0 ? (
          <Empty className="border">
            <EmptyHeader>
              <EmptyMedia variant="icon">
                <Play />
              </EmptyMedia>
              <EmptyTitle>No playthroughs yet</EmptyTitle>
              <EmptyDescription>
                Start your first adventure in {game.name}!
              </EmptyDescription>
            </EmptyHeader>
            <CreatePlaythroughDialog
              game={game}
              trigger={
                <Button>
                  <Plus className="h-4 w-4 mr-2" />
                  Create Playthrough
                </Button>
              }
            />
          </Empty>
        ) : (
          <div className="grid gap-4 md:grid-cols-2">
            {game.playthroughs?.map((playthrough) => (
              <PlaythroughCard
                key={playthrough.id}
                playthrough={playthrough}
                genSlug={genSlug}
                gameSlug={gameSlug}
              />
            ))}
          </div>
        )}
      </div>
    </PageLayout>
  );
}
