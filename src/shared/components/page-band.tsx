import type { CSSProperties, ReactNode } from "react";

import { BandTintRoot } from "@/shared/components/band-tint-root";
import { cn } from "@/shared/utils/cn";

type PageBandProps = {
  /* The page's head, on the band's sky. */
  children: ReactNode;
  className?: string;
  /*
   * The page's one piece of identity (the Planner's team), standing on a low,
   * flat rise of ground at the band's foot.
   */
  ground?: ReactNode;
  /* A game's colour (`getGameColourStyle`); without one, Voydex green. */
  style?: CSSProperties;
};

/*
 * The band that opens a main page other than Home: the page's head on the
 * context colour's soft tint, edge to edge under the top bar, which takes the
 * band's colour, and its one piece of identity on a flat rise of ground
 * (`band-floor`). Home keeps the meadow; this is its quiet cousin, flat
 * colour only. What follows it sits on the plain page ground.
 */
export const PageBand = ({
  children,
  className,
  ground,
  style,
}: PageBandProps) => (
  <div
    style={style}
    className="game-scope page-band bg-game-soft relative isolate overflow-hidden rounded-b-[28px] sm:rounded-b-[44px]"
  >
    <BandTintRoot />
    <div
      className={cn(
        "mx-auto w-full max-w-(--page-width) px-(--page-gutter)",
        ground ? "pb-4 sm:pb-5" : "pb-6 sm:pb-8",
        className,
      )}
    >
      {children}
    </div>
    {ground ? (
      <div className="relative">
        <span
          aria-hidden
          className="band-floor absolute inset-x-[-12%] inset-y-0 rounded-[50%_50%_0_0/36px_36px_0_0] sm:rounded-[50%_50%_0_0/56px_56px_0_0]"
        />
        <div className="relative mx-auto w-full max-w-(--page-width) px-(--page-gutter) pt-5 pb-6 sm:pt-7 sm:pb-8">
          {ground}
        </div>
      </div>
    ) : null}
  </div>
);
