import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
};

/*
 * The band that opens Plays, the Team Planner, Statistics, Collection and
 * the Codex's game and Pokémon pages:
 * the page's head (and the Planner's team) on warm sand, edge to edge under
 * the top bar, which sits on it. The sand stays neutral so what the page
 * shows (type-coloured stickers, covers) brings the colour. Home keeps the
 * meadow. What follows the band sits on the plain page ground.
 */
export const PageBand = ({ children, className }: PageBandProps) => (
  <div className="page-band bg-band-sand relative isolate rounded-b-[28px] sm:rounded-b-[44px]">
    <div
      className={cn(
        "mx-auto w-full max-w-(--page-width) px-(--page-gutter) pb-6 sm:pb-8",
        className,
      )}
    >
      {children}
    </div>
  </div>
);
