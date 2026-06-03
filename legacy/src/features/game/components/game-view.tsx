"use client";

import type { GameData } from "@/features/game/types";
import { buildGameBreadcrumbs } from "@/features/game/utils/build-game-breadcrumbs";
import { PlayCreateModal } from "@/features/play/components/play-create-modal";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { useState } from "react";
import { GameHeader } from "./game-header";
import { PlayEmpty } from "./play-empty";
import { PlaysSection } from "./plays-section";

type GameViewProps = {
  game: GameData;
}

export const GameView = ({ game }: GameViewProps) => {
  const [open, setOpen] = useState(false);
  const breadcrumbs = buildGameBreadcrumbs(game.generation, game);

  return (
    <>
      <PageLayout breadcrumbs={breadcrumbs}>
        <div className="space-y-8">
          <GameHeader game={game} />

          {game.plays.length === 0 ? (
            <PlayEmpty game={game} open={open} setOpen={setOpen} />
          ) : (
            <PlaysSection plays={game.plays} open={open} setOpen={setOpen} />
          )}
        </div>
      </PageLayout>

      <PlayCreateModal open={open} setOpen={setOpen} game={game} />
    </>
  );
};
