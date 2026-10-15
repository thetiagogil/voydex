import type { ReactNode } from "react";

import { BandTintRoot } from "@/shared/components/band-tint-root";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  children: ReactNode;
  className?: string;
  /*
   * `primary` (Plays, Statistics, Collection): the app primary's soft tint.
   * `sand`: a warm neutral, for a page whose content brings its own colour,
   * such as the Team Planner's team of type-coloured stickers.
   */
  tone?: "primary" | "sand";
};

/*
 * The band that opens a main page other than Home: the page's head and its
 * one piece of identity (the Planner's team) on the context colour's soft
 * tint, edge to edge under the top bar, which takes the band's colour. Plays,
 * Statistics and Collection wear the app's primary colour, the Team Planner
 * a warm sand under its team; game colour belongs inside a Play. Home keeps
 * the meadow. What follows the band sits on the plain page ground.
 */
export const PageBand = ({
  children,
  className,
  tone = "primary",
}: PageBandProps) => (
  <div
    className={cn(
      "game-scope page-band relative isolate rounded-b-[28px] sm:rounded-b-[44px]",
      tone === "sand" ? "bg-band-sand" : "bg-game-soft",
    )}
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
