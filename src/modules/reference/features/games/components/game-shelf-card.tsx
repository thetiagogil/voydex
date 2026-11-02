import Link from "next/link";
import type { ReactNode } from "react";

import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameShelfCardGame } from "@/modules/reference/types";
import { CornerBubble } from "@/shared/components/corner-bubble";
import { cn } from "@/shared/utils/cn";

type GameShelfCardProps = {
  eager?: boolean;
  game: GameShelfCardGame;
  href: string;
  /*
   * A game you've played (Collection): the owned white band, and this stamp
   * on its top-right corner. Without one the card is a reference card.
   */
  stamp?: ReactNode;
  /* A game you haven't played where that matters (Collection): the cover steps back. */
  unplayed?: boolean;
};

/*
 * v3's game card, the one card for a game (the Codex's Games list and Related
 * games, Collection's Games): the framed cover in a fixed-height stage (so a
 * tall Game Boy box and a square DS box keep the cards level), the short
 * name, and when and where it is set. In the Codex it is a reference card
 * (`plain-card`, as a Codex Pokémon card) and never marks the games you have
 * Plays of (a game's page has "Your Plays (N)"). Collection gives a played
 * game the owned band and a stamp, and steps the others back. Hover picks the
 * cover up.
 */
export const GameShelfCard = ({
  eager = false,
  game,
  href,
  stamp,
  unplayed = false,
}: GameShelfCardProps) => {
  return (
    <Link
      href={href}
      className={cn(
        "group/game relative flex min-w-0 flex-col gap-3 rounded-xl transition-transform duration-150 motion-safe:hover:-translate-y-0.75",
        stamp
          ? "sticker p-1 pb-2.5 [--t:var(--surface)]"
          : "plain-card p-2 pb-3.5",
        unplayed && "step-back",
      )}
    >
      <span className="grid h-30 place-items-center overflow-hidden rounded-md sm:h-37">
        <span className="ease-hop transition-transform duration-250 motion-safe:group-hover/game:-translate-y-1.5 motion-safe:group-hover/game:-rotate-3">
          <GameCover
            alt=""
            coverImageUrl={game.coverImageUrl}
            eager={eager}
            gameName={game.name}
            gameSlug={game.slug}
            size="shelf"
          />
        </span>
      </span>
      <span className="flex min-w-0 flex-col gap-0.5 px-2">
        <b className="text-14 sm:text-15 truncate leading-tight font-extrabold">
          {game.name.startsWith("Pokémon ") ? (
            <span className="sr-only">Pokémon </span>
          ) : null}
          {getGameShortName(game.name)}
        </b>
        <span className="text-13 text-ink-2 truncate font-semibold">
          <span className="tabular-nums">{game.releaseYear}</span>
          {game.regionName ? ` · ${game.regionName}` : null}
        </span>
      </span>
      {stamp ? (
        <CornerBubble border="sticker" corner="inside-top-right">
          {stamp}
        </CornerBubble>
      ) : null}
    </Link>
  );
};

/* Two covers across on phones; on wider screens as many 150px columns as fit. */
export const GameShelfGrid = ({
  children,
  className,
}: {
  children: ReactNode;
  className?: string;
}) => {
  return (
    <div
      className={cn(
        "grid grid-cols-2 gap-2.5 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-3.5",
        className,
      )}
    >
      {children}
    </div>
  );
};
