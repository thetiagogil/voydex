import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import type { GameCard } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

type GameShelfCardProps = {
  card: GameCard;
  eager?: boolean;
};

/*
 * v3's game card, the one card for a game in the Codex (the Games list and
 * Related games): the framed cover in a fixed-height stage (so a tall Game
 * Boy box and a square DS box keep the cards level), the short name, and when
 * and where it is set. A reference card you don't own (`plain-card`, as a
 * Codex Pokémon card): white with a thin edge, no white band, and it never
 * marks the games you have Plays of (a
 * game's page has "Your Plays (N)"). Hover picks the cover up. It opens its
 * version group's page with this game picked in the version switch.
 */
export const GameShelfCard = ({ card, eager = false }: GameShelfCardProps) => {
  return (
    <Link
      href={appRoutes.codexVersionGroup(card.versionGroup.slug, card.game.slug)}
      className="group/game plain-card relative flex min-w-0 flex-col gap-3 rounded-xl p-2 pb-3.5 transition-transform duration-150 motion-safe:hover:-translate-y-0.75"
    >
      <span className="grid h-30 place-items-center overflow-hidden rounded-md sm:h-37">
        <span className="ease-hop transition-transform duration-250 motion-safe:group-hover/game:-translate-y-1.5 motion-safe:group-hover/game:-rotate-3">
          <GameCover
            alt=""
            coverImageUrl={card.coverImageUrl}
            eager={eager}
            gameName={card.game.name}
            gameSlug={card.game.slug}
            size="shelf"
          />
        </span>
      </span>
      <span className="flex min-w-0 flex-col gap-0.5 px-2">
        <b className="text-14 sm:text-15 truncate leading-tight font-extrabold">
          {card.game.name.startsWith("Pokémon ") ? (
            <span className="sr-only">Pokémon </span>
          ) : null}
          {getGameShortName(card.game.name)}
        </b>
        <span className="text-13 text-ink-2 truncate font-semibold">
          <span className="tabular-nums">{card.game.release_year}</span>
          {card.region ? ` · ${card.region.name}` : null}
        </span>
      </span>
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
