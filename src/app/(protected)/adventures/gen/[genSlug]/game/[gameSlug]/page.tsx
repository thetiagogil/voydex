import { EmptyPlaythroughsState } from "@/components/features/game/empty-playthroughs-state";
import { GameHeader } from "@/components/features/game/game-header";
import { PlaythroughCard } from "@/components/features/game/playthrough-card";
import { PlaythroughsSectionHeader } from "@/components/features/game/playthroughs-section-header";
import { PageLayout } from "@/components/layout/page-layout";
import { gameData } from "@/lib/mock-data";
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
        <GameHeader game={game} />

        <PlaythroughsSectionHeader game={game} />

        {!game.playthroughs || game.playthroughs.length === 0 ? (
          <EmptyPlaythroughsState game={game} />
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
