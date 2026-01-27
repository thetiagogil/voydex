"use client";

import { GameHeader } from "@/components/features/game/game-header";
import { PlayEmpty } from "@/components/features/game/play-empty";
import { PlayModal } from "@/components/features/game/play-modal";
import { PlaysSection } from "@/components/features/game/plays-section";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { useGameBySlug } from "@/hooks/useGames";
import { use, useState } from "react";

interface GamePageProps {
  params: Promise<{
    genId: string;
    gameSlug: string;
  }>;
}

export default function GamePage({ params }: GamePageProps) {
  const { genId, gameSlug } = use(params);
  const [open, setOpen] = useState<boolean>(false);

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

  if (gameError || !game?.data) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Game not found</p>
        </div>
      </PageLayout>
    );
  }

  const gameData = game.data as GameWithFullData;

  return (
    <>
      <PageLayout>
        <div className="space-y-8">
          <GameHeader game={gameData} />

          {gameData.plays.length === 0 ? (
            <PlayEmpty game={gameData} open={open} setOpen={setOpen} />
          ) : (
            <PlaysSection
              plays={gameData.plays}
              game={gameData}
              genId={genId}
              open={open}
              setOpen={setOpen}
            />
          )}
        </div>
      </PageLayout>
      <PlayModal open={open} setOpen={setOpen} game={gameData} />
    </>
  );
}
