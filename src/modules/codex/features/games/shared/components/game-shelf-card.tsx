import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import type { GameCard } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

type GameShelfCardProps = {
  card: GameCard;
  eager?: boolean;
  /* On the Games list shelf a cover may tilt while it is picked up. */
  tiltCover?: boolean;
};

/*
 * v3's game card: the cover on a cream stage, the short name and when and
 * where it is set. A reference card you don't own, so it is flat with a 1px
 * line; the cover carries the game.
 */
export const GameShelfCard = ({
  card,
  eager = false,
  tiltCover = false,
}: GameShelfCardProps) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      aria-label={[card.game.name, card.game.release_year, card.region?.name]
        .filter(Boolean)
        .join(", ")}
      className="group/game bg-surface border-line flex min-w-0 flex-col gap-3 rounded-xl border p-2 pb-3.5 transition-transform duration-150 motion-safe:hover:-translate-y-[3px]"
    >
      <span className="bg-surface-2 grid h-30 place-items-center overflow-hidden rounded-md sm:h-37">
        <span
          className={cn(
            "transition-transform duration-250 ease-[cubic-bezier(0.3,1.5,0.5,1)]",
            tiltCover &&
              "motion-safe:group-hover/game:-translate-y-1.5 motion-safe:group-hover/game:-rotate-3",
          )}
        >
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
