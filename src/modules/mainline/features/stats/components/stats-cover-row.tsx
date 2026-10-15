import type { CSSProperties } from "react";

import type { StatsCover } from "@/modules/mainline/features/stats/data/stats-model";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";

/*
 * Covers in one straight row, overlapping like a hand laid on the table, the
 * last one on top and shown whole: the picture beside a Region Hopper (one
 * per region) or a Pokémon Trainer (one per game played). Each cover gets an
 * equal share of the row and overlaps the next, so any count fits the width.
 * On a first visit they fade up one by one (`group-data-reveal/title`).
 */
export const StatsCoverRow = ({ covers }: { covers: StatsCover[] }) => (
  <div aria-hidden className="flex w-full items-end">
    {covers.map((cover, index) => (
      <span
        key={cover.gameSlug ?? `${cover.gameName}-${index}`}
        style={{ "--i": index } as CSSProperties}
        className="group-data-reveal/title:animate-fade-up min-w-0 flex-1 [animation-delay:calc(300ms+var(--i)*60ms)] last:flex-none motion-reduce:animate-none"
      >
        <GameCover
          alt=""
          coverImageUrl={cover.coverImageUrl}
          gameName={cover.gameName}
          gameSlug={cover.gameSlug ?? undefined}
          className="h-24 w-auto max-w-none border-[3px] border-white sm:h-28"
        />
      </span>
    ))}
  </div>
);
