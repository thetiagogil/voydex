import { Link } from "@/shared/components/link";
import type { CSSProperties, ReactNode } from "react";

import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameShelfCardGame } from "@/modules/reference/types";
import { getGameCardColour } from "@/modules/reference/features/games/utils/game-color-styles";
import {
  CollectorCardGlint,
  collectorCardGridClassName,
  collectorCardSizeClassNames,
} from "@/modules/reference/features/pokemon/components/pokemon-collector-card";
import { cardTiltClassName, cardTiltHandlers } from "@/shared/utils/card-tilt";
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

/*
 * The cover in its fixed-height stage, picked up on hover on a reference
 * card (`lifts`). On a collector card the whole card turns instead.
 */
const GameShelfCover = ({
  eager,
  game,
  lifts,
}: {
  eager: boolean;
  game: GameShelfCardGame;
  lifts: boolean;
}) => (
  <span className={stageClassName}>
    <span
      className={cn(
        lifts &&
          "ease-hop transition-transform duration-250 motion-safe:group-hover/game:-translate-y-1.5",
      )}
    >
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
const GameShelfName = ({
  className = "copy-strong",
  game,
}: {
  className?: string;
  game: GameShelfCardGame;
}) => (
  <b className={cn("truncate leading-tight", className)}>
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
 * game as a collector card laid out as a Pokémon one: a frame in the game's
 * card colour, its year and count on the top line, the cover standing on
 * the card's face with no window behind it, the name centred under it, and
 * the Pokémon card's glint. In the Codex the name and the year and region
 * are centred, as a Codex Pokémon card's name is. In the Codex hover lifts
 * the card and its cover (never tilting the cover); a played game's card
 * turns toward the pointer as a Pokémon one does. A link opens a page; with
 * `onClick` it is a button.
 */
export const GameShelfCard = ({
  count,
  eager = false,
  game,
  href,
  onClick,
}: GameShelfCardProps) => {
  const facts = (
    <span className="copy-meta text-ink-2 max-w-full truncate">
      <span className="tabular-nums">{game.releaseYear}</span>
      {game.regionName ? ` · ${game.regionName}` : null}
    </span>
  );
  const className = cn(
    "group/game relative flex min-w-0 flex-col rounded-lg text-left",
    count
      ? cn(
          "group/collector @container/collector card-frame overflow-hidden p-1.5",
          cardTiltClassName,
        )
      : "plain-card gap-3 p-2 pb-3.5 transition-transform duration-150 motion-safe:hover:-translate-y-0.75",
  );
  /*
   * A played game reads as the Collection's Pokémon card does: the top line
   * (its year, its count), the cover, then the name centred, and the same
   * glint under the pointer. Read name first, as that card is.
   */
  const content = count ? (
    <>
      <span className="card-face flex min-w-0 flex-1 flex-col rounded-[1.125rem] p-2 pb-3">
        <span className="order-3 mt-2 flex min-w-0 justify-center">
          <GameShelfName
            className={collectorCardSizeClassNames.md.name}
            game={game}
          />
        </span>
        <span className="text-ink-tint copy-mark order-1 mb-1.5 flex min-w-0 items-baseline justify-between gap-2 tabular-nums">
          <span className="shrink-0">{game.releaseYear}</span>
          <span className="truncate">{count}</span>
        </span>
        <span className="order-2">
          <GameShelfCover eager={eager} game={game} lifts={false} />
        </span>
      </span>
      <CollectorCardGlint />
    </>
  ) : (
    <>
      <GameShelfCover eager={eager} game={game} lifts />
      <span className="flex min-w-0 flex-col items-center gap-0.5 px-2 text-center">
        <GameShelfName className="copy-strong max-w-full" game={game} />
        {facts}
      </span>
    </>
  );
  /*
   * The frame takes the game's card colour through `--t`, as a type does:
   * as lively as a type's, so a game card sits beside a Pokémon one.
   */
  const style = count
    ? ({ "--t": getGameCardColour(game.slug) } as CSSProperties)
    : undefined;
  const tiltHandlers = count ? cardTiltHandlers : undefined;

  return onClick ? (
    <button
      type="button"
      onClick={onClick}
      style={style}
      className={cn(className, "w-full")}
      {...tiltHandlers}
    >
      {content}
    </button>
  ) : (
    <Link href={href} style={style} className={className} {...tiltHandlers}>
      {content}
    </Link>
  );
};

/*
 * Two covers across on phones; on wider screens as many 150px columns as
 * fit. `collection` lays played games out as the Collection's Pokémon are
 * (`collectorCardGridClassName`), so the two views keep one grid.
 */
export const GameShelfGrid = ({
  children,
  className,
  layout = "shelf",
}: {
  children: ReactNode;
  className?: string;
  layout?: "collection" | "shelf";
}) => {
  return (
    <div
      className={cn(
        layout === "collection"
          ? collectorCardGridClassName
          : "grid grid-cols-2 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(150px,1fr))] sm:gap-4",
        className,
      )}
    >
      {children}
    </div>
  );
};
