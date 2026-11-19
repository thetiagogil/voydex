import { Link } from "@/shared/components/link";
import type { CSSProperties, ReactNode } from "react";

import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameShelfCardGame } from "@/modules/reference/types";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { cn } from "@/shared/utils/cn";

type GameShelfCardProps = {
  eager?: boolean;
  game: GameShelfCardGame;
  /*
   * A game you've played (Collection): its count in words, such as "2
   * Plays". The card is then a collector card, framed in the game's own
   * colour as the Collection's Pokémon are in their type's. Without one the
   * card is a reference card.
   */
  count?: string;
} & (
  | { href: string; onClick?: never }
  | {
      href?: never;
      /* Opens the game in place (its Collection sheet) instead of a page. */
      onClick: () => void;
    }
);

const stageClassName =
  "grid h-30 place-items-center overflow-hidden rounded-sm sm:h-37";

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
 * Plays of (a game's page has "Your Plays (N)"). Collection shows a played
 * game as a collector card: a frame in the game's colour, its name and count
 * in words, the cover in a window. Hover picks the cover up. A link opens a
 * page; with `onClick` it is a button.
 */
export const GameShelfCard = ({
  count,
  eager = false,
  game,
  href,
  onClick,
}: GameShelfCardProps) => {
  const facts = (
    <span className="text-13 text-ink-2 truncate font-semibold">
      <span className="tabular-nums">{game.releaseYear}</span>
      {game.regionName ? ` · ${game.regionName}` : null}
    </span>
  );
  const className = cn(
    "group/game relative flex min-w-0 flex-col rounded-lg text-left transition-transform duration-150 motion-safe:hover:-translate-y-0.75",
    count ? "card-frame shadow-soft p-1.5" : "plain-card gap-3 p-2 pb-3.5",
  );
  const content = count ? (
    <span className="bg-surface flex min-w-0 flex-1 flex-col gap-2 rounded-lg p-2.5">
      <span className="flex min-w-0 items-baseline justify-between gap-2">
        <GameShelfName game={game} />
        <span className="text-ink-2 text-12 shrink-0 font-extrabold tabular-nums">
          {count}
        </span>
      </span>
      <span className="card-window rounded-sm">
        <GameShelfCover eager={eager} game={game} />
      </span>
      {facts}
    </span>
  ) : (
    <>
      <GameShelfCover eager={eager} game={game} />
      <span className="flex min-w-0 flex-col gap-0.5 px-2">
        <GameShelfName game={game} />
        {facts}
      </span>
    </>
  );
  /* The frame takes the game's own colour through `--t`, as a type does. */
  const style = count
    ? ({
        "--t": getGameColourStyle(game.slug)["--game"],
      } as CSSProperties)
    : undefined;

  return onClick ? (
    <button
      type="button"
      onClick={onClick}
      style={style}
      className={cn(className, "w-full")}
    >
      {content}
    </button>
  ) : (
    <Link href={href} style={style} className={className}>
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
