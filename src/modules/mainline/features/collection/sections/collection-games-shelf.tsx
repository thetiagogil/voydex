"use client";

import { useState } from "react";

import { CollectionGameSheet } from "@/modules/mainline/features/collection/components/collection-game-sheet";
import type { CollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import { CountMark } from "@/shared/components/corner-bubble";

const EAGER_COVER_COUNT = 6;

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * Collection's Games: one grid of the games you've played, most Plays
 * leading, each a card with the owned band and its Play count on a corner
 * that opens its sheet in place.
 */
export const CollectionGamesShelf = ({ games }: { games: CollectionGames }) => {
  const [openGameId, setOpenGameId] = useState<number | null>(null);
  const openEntry =
    games.games.find((entry) => entry.game.id === openGameId) ?? null;

  return (
    <section aria-label="Your games">
      <GameShelfGrid>
        {games.games.map(({ game, plays }, index) => (
          <GameShelfCard
            key={game.id}
            game={game}
            eager={index < EAGER_COVER_COUNT}
            onClick={() => setOpenGameId(game.id)}
            mark={
              <CountMark
                count={plays.length}
                label={countPlays(plays.length)}
              />
            }
          />
        ))}
      </GameShelfGrid>

      <CollectionGameSheet
        entry={openEntry}
        onOpenChange={(open) => {
          if (!open) setOpenGameId(null);
        }}
      />
    </section>
  );
};
