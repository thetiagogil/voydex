"use client";

import { useState } from "react";

import { CollectionGameSheet } from "@/modules/mainline/features/collection/components/collection-game-sheet";
import type { CollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import {
  GameShelfCard,
  GameShelfEmptySlot,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import { RangeHeading } from "@/shared/components/range-heading";

/* A played game's stamp leans a little, each one its own way. */
const stampTilts = [-10, 7, -5, 9, -8, 5];

const EAGER_COVER_COUNT = 6;

const countPlays = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * Collection's Games, an album: every game in release order, a page per
 * generation. A game you've played sits in its place as a card with the
 * owned band and a gold stamp counting your Plays of it, and opens its sheet
 * in place; a game you haven't is a dashed open slot that New Play fills.
 */
export const CollectionGamesShelf = ({ games }: { games: CollectionGames }) => {
  const [openGameId, setOpenGameId] = useState<number | null>(null);
  const openEntry =
    games.sections
      .flatMap((section) => section.games)
      .find((entry) => entry.game.id === openGameId) ?? null;

  return (
    <div className="flex flex-col gap-7.5">
      {games.sections.map((section, sectionIndex) => {
        const titleId = `collection-games-${section.key}`;

        return (
          <section
            key={section.key}
            aria-labelledby={titleId}
            className="min-w-0"
          >
            <RangeHeading
              title={section.label}
              titleId={titleId}
              count={section.summary}
            />
            <GameShelfGrid className="mt-4.5">
              {section.games.map(({ game, href, plays }, gameIndex) => {
                const eager =
                  sectionIndex === 0 && gameIndex < EAGER_COVER_COUNT;

                return href ? (
                  <GameShelfEmptySlot
                    key={game.id}
                    game={game}
                    href={href}
                    eager={eager}
                  />
                ) : (
                  <GameShelfCard
                    key={game.id}
                    game={game}
                    eager={eager}
                    onClick={() => setOpenGameId(game.id)}
                    stamp={
                      <BadgeStamp
                        className="w-9"
                        label={countPlays(plays.length)}
                        state={{ count: plays.length, kind: "earned" }}
                        tilt={stampTilts[game.id % stampTilts.length]}
                      />
                    }
                  />
                );
              })}
            </GameShelfGrid>
          </section>
        );
      })}

      <CollectionGameSheet
        entry={openEntry}
        onOpenChange={(open) => {
          if (!open) setOpenGameId(null);
        }}
      />
    </div>
  );
};
