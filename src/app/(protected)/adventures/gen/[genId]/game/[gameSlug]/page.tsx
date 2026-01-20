"use client";

import { GameEmptyPlay } from "@/components/features/game/game-empty-play";
import { GameHeader } from "@/components/features/game/game-header";
import { GamePlayCard } from "@/components/features/game/game-play-card";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { useGameBySlug } from "@/hooks/useGames";
import { use } from "react";

interface GamePageProps {
  params: Promise<{
    genId: string;
    gameSlug: string;
  }>;
}

export default function GamePage({ params }: GamePageProps) {
  const { genId, gameSlug } = use(params);

  const {
    data: game,
    isLoading: gameLoading,
    error: gameError,
  } = useGameBySlug(gameSlug);

  if (gameLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (gameError || !game) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  return (
    <PageLayout>
      <div className="space-y-8">
        <GameHeader game={game.data} />

        {game.data.plays.length === 0 ? (
          <GameEmptyPlay game={game.data} />
        ) : (
          <div className="grid gap-4 md:grid-cols-2">
            {game.data.plays.map((play: GamePlaySummary) => (
              <GamePlayCard
                key={play.id}
                play={play}
                genId={genId}
                gameSlug={gameSlug}
              />
            ))}
          </div>
        )}
      </div>
    </PageLayout>
  );
}
