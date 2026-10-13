import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import type { GameCard } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type GameShelfCardProps = {
  card: GameCard;
  eager?: boolean;
  /* How many of your Plays are of this game, signed in; flags the card. */
  playCount?: number;
};

const formatPlayCount = (count: number) =>
  `${count} ${count === 1 ? "Play" : "Plays"}`;

/*
 * v3's game card, the one card for a game in the Codex (the Games list and
 * Related games): the cover on a soft stage in the game's colour, the short
 * name, and when and where it is set. A reference card you don't own, so it
 * is flat with a 1px line; a game you have Plays of carries v3's flag with
 * the count in the corner. Hover picks the cover up. It opens its version
 * group's page with this game picked in the version switch.
 */
export const GameShelfCard = ({
  card,
  eager = false,
  playCount = 0,
}: GameShelfCardProps) => {
  return (
    <Link
      href={appRoutes.codexVersionGroup(card.versionGroup.slug, card.game.slug)}
      aria-label={[
        card.game.name,
        card.game.release_year,
        card.region?.name,
        playCount ? `you have ${formatPlayCount(playCount)}` : null,
      ]
        .filter(Boolean)
        .join(", ")}
      className="group/game bg-surface border-line relative flex min-w-0 flex-col gap-3 rounded-xl border p-2 pb-3.5 transition-transform duration-150 motion-safe:hover:-translate-y-[3px]"
    >
      {playCount ? (
        <span
          aria-hidden
          title={`You have ${formatPlayCount(playCount)} of ${getGameShortName(card.game.name)}`}
          className="bg-action text-12 ring-bg absolute -top-1.5 -right-1.5 z-10 inline-flex items-center gap-1 rounded-full px-2.25 py-1 font-extrabold text-white tabular-nums shadow-[0_2px_0_var(--action-lip)] ring-3"
        >
          <AppIcon icon={appIcons.product.play} size="xs" />
          {playCount}
        </span>
      ) : null}
      <span
        style={getGameColourStyle(card.game.slug)}
        className="game-scope bg-game-soft grid h-30 place-items-center overflow-hidden rounded-md sm:h-37"
      >
        <span className="transition-transform duration-250 ease-[cubic-bezier(0.3,1.5,0.5,1)] motion-safe:group-hover/game:-translate-y-1.5 motion-safe:group-hover/game:-rotate-3">
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
