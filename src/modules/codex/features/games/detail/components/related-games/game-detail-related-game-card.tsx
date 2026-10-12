import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";
import type { GameCard } from "@/modules/reference/types";

type GameDetailRelatedGameCardProps = {
  card: GameCard;
};

export const GameDetailRelatedGameCard = ({
  card,
}: GameDetailRelatedGameCardProps) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      style={getGameColourStyle(card.game.slug)}
      aria-label={`Open ${card.game.name} game guide`}
      className="group game-scope focus-visible:ring-ring focus-visible:ring-offset-background border-line bg-card hover:border-game focus-visible:border-game block min-w-0 overflow-hidden rounded-xl border shadow-xs transition-all duration-200 hover:-translate-y-0.5 hover:shadow-sm focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
    >
      <article className="flex min-w-0 flex-col">
        <div className="relative isolate aspect-square overflow-hidden bg-transparent">
          {card.coverImageUrl ? (
            <Image
              src={card.coverImageUrl}
              alt={`${card.game.name} cover art`}
              fill
              sizes="(min-width: 1280px) 9rem, (min-width: 1024px) 10rem, (min-width: 768px) 7rem, 5.5rem"
              className="object-contain p-2 drop-shadow-sm"
            />
          ) : (
            <div className="relative flex h-full items-center justify-center p-3">
              <span className="bg-game-soft text-game flex size-10 items-center justify-center rounded-lg text-xs font-black">
                {getGameInitials(card.game.name)}
              </span>
            </div>
          )}
        </div>
        <div className="flex items-start px-2.5 pb-2.5">
          <h3 className="text-foreground font-display line-clamp-2 text-xs leading-4 font-semibold">
            {card.game.name}
          </h3>
        </div>
      </article>
    </Link>
  );
};
