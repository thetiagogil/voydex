"use client";

import { GameHeader } from "@/features/game/components/game-header";
import { PlayEmpty } from "@/features/game/components/play-empty";
import { PlaysSection } from "@/features/game/components/plays-section";
import { useGameOverview } from "@/features/game/hooks/useGame";
import { PlayCreateModal } from "@/features/play/components/play-create-modal";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { notFound } from "next/navigation";
import { use, useState } from "react";

type GamePageProps = {
  params: Promise<{
    generationId: string;
    gameSlug: string;
  }>;
};

export default function GamePage({ params }: GamePageProps) {
  const { generationId, gameSlug } = use(params);
  const [open, setOpen] = useState<boolean>(false);
  const { data: game, isLoading, error } = useGameOverview(gameSlug);

  if (isLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (error || !game?.data) {
    notFound();
  }

  return (
    <>
      <PageLayout>
        <div className="space-y-8">
          <GameHeader game={game.data} />

          {game.data.plays.length === 0 ? (
            <PlayEmpty game={game.data} open={open} setOpen={setOpen} />
          ) : (
            <PlaysSection
              plays={game.data.plays}
              game={game.data}
              generationId={generationId}
              open={open}
              setOpen={setOpen}
            />
          )}
        </div>
      </PageLayout>
      <PlayCreateModal open={open} setOpen={setOpen} game={game.data} />
    </>
  );
}
