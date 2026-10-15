import type { CSSProperties, ReactNode } from "react";

import { BandTintRoot } from "@/shared/components/band-tint-root";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
  /* A game's colour (`getGameColourStyle`); without one, Voydex green. */
  style?: CSSProperties;
};

/*
 * The band that opens a main page other than Home: the page's head and its
 * one piece of identity (the Planner's team) on the context colour's soft
 * tint, edge to edge under the top bar, which takes the band's colour. Flat
 * colour only (`band-ground`): a pair of games splits it with a hard edge.
 * Home keeps the meadow. What follows it sits on the plain page ground.
 */
export const PageBand = ({ children, className, style }: PageBandProps) => (
  <div
    style={style}
    className="game-scope page-band band-ground relative isolate rounded-b-[28px] sm:rounded-b-[44px]"
  >
    <BandTintRoot />
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
