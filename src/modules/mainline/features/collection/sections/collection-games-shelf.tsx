import type { CollectionGames } from "@/modules/mainline/features/collection/data/collection-games-model";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import { RangeHeading } from "@/shared/components/range-heading";

/* A played game's stamp leans a little, each one its own way. */
const stampTilts = [-10, 7, -5, 9, -8, 5];

const EAGER_COVER_COUNT = 6;

/*
 * Collection's Games: every game in release order, a range per generation.
 * A game you've played wears the owned band and a gold stamp with how many
 * Plays you have of it, and opens them; the rest step back and open their
 * Codex page.
 */
export const CollectionGamesShelf = ({ games }: { games: CollectionGames }) => (
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
            {section.games.map(({ game, href, playCount }, gameIndex) => (
              <GameShelfCard
                key={game.id}
                game={game}
                href={href}
                eager={sectionIndex === 0 && gameIndex < EAGER_COVER_COUNT}
                unplayed={!playCount}
                stamp={
                  playCount ? (
                    <BadgeStamp
                      className="w-9"
                      label={`${playCount} ${playCount === 1 ? "Play" : "Plays"}`}
                      state={{ count: playCount, kind: "earned" }}
                      tilt={stampTilts[game.id % stampTilts.length]}
                    />
                  ) : undefined
                }
              />
            ))}
          </GameShelfGrid>
        </section>
      );
    })}
  </div>
);
