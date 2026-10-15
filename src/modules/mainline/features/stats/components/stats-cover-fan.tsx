import type { CSSProperties } from "react";

import type { StatsCover } from "@/modules/mainline/features/stats/data/stats-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";

/*
 * Covers fanned out like a hand of cards, the last one on top: the picture
 * beside a Region Hopper (one per region) or a Pokémon Trainer (one per game
 * played). A few covers spread wider so a small hand still reads as a fan.
 * On a first visit they deal out from one pile (`group-data-reveal/title`).
 */
export const StatsCoverFan = ({ covers }: { covers: StatsCover[] }) => {
  const step = covers.length <= 4 ? 13 : 5;
  const middle = (covers.length - 1) / 2;

  return (
    <div aria-hidden className="relative h-full w-full">
      {covers.map((cover, index) => (
        <span
          key={cover.gameSlug ?? `${cover.gameName}-${index}`}
          style={
            {
              "--i": index,
              "--r": `${((index - middle) * step).toFixed(1)}deg`,
            } as CSSProperties
          }
          className="group-data-reveal/title:animate-cover-deal absolute bottom-9 left-1/2 origin-[50%_240%] -translate-x-1/2 rotate-(--r) [animation-delay:calc(300ms+var(--i)*60ms)] motion-reduce:animate-none sm:bottom-11"
        >
          <GameCover
            alt=""
            coverImageUrl={cover.coverImageUrl}
            gameName={cover.gameName}
            gameSlug={cover.gameSlug ?? undefined}
            className="h-22 w-auto border-[3px] border-white sm:h-28"
          />
        </span>
      ))}
    </div>
  );
};
