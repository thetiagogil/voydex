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
  /*
   * A game you've played (Collection): the owned white band, and this mark
   * (its `CountMark`) on its top-right corner. Without one the card is a
   * reference card.
   */
  mark?: ReactNode;
} & (
  | { href: string; onClick?: never }
  | {
      href?: never;
      /* Opens the game in place (its Collection sheet) instead of a page. */
      onClick: () => void;
    }
);

const stageClassName =
  "grid h-30 place-items-center overflow-hidden rounded-md sm:h-37";

/* The cover in its fixed-height stage, picked up on hover. */
const GameShelfCover = ({
  eager,
  game,
}: {
  eager: boolean;
  game: GameShelfCardGame;
}) => (
  <span className={stageClassName}>
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
);

/* The game's short name, read in full ("Pokémon Sword") by assistive tech. */
const GameShelfName = ({ game }: { game: GameShelfCardGame }) => (
  <b className="text-14 sm:text-15 truncate leading-tight font-extrabold">
    {game.name.startsWith("Pokémon ") ? (
      <span className="sr-only">Pokémon </span>
    ) : null}
    {getGameShortName(game.name)}
  </b>
);

/*
 * v3's game card, the one card for a game (the Codex's Games list and Related
 * games, Collection's Games): the framed cover in a fixed-height stage (so a
 * tall Game Boy box and a square DS box keep the cards level), the short
 * name, and when and where it is set. In the Codex it is a reference card
 * (`plain-card`, as a Codex Pokémon card) and never marks the games you have
 * Plays of (a game's page has "Your Plays (N)"). Collection gives a played
 * game the owned band and its count mark. Hover picks the cover up. A link opens a
 * page; with `onClick` it is a button.
 */
export const GameShelfCard = ({
  eager = false,
  game,
  href,
  mark,
  onClick,
}: GameShelfCardProps) => {
  const className = cn(
    "group/game relative flex min-w-0 flex-col gap-3 rounded-xl text-left transition-transform duration-150 motion-safe:hover:-translate-y-0.75",
    mark ? "sticker p-1 pb-2.5 [--t:var(--surface)]" : "plain-card p-2 pb-3.5",
  );
  const content = (
    <>
      <GameShelfCover eager={eager} game={game} />
      <span className="flex min-w-0 flex-col gap-0.5 px-2">
        <GameShelfName game={game} />
        <span className="text-13 text-ink-2 truncate font-semibold">
          <span className="tabular-nums">{game.releaseYear}</span>
          {game.regionName ? ` · ${game.regionName}` : null}
        </span>
      </span>
      {mark ? (
        <CornerBubble border="sticker" corner="inside-top-right">
          {mark}
        </CornerBubble>
      ) : null}
    </>
  );

  return onClick ? (
    <button type="button" onClick={onClick} className={cn(className, "w-full")}>
      {content}
    </button>
  ) : (
    <Link href={href} className={className}>
      {content}
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
