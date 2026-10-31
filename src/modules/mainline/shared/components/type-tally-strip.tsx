import type { HTMLAttributes } from "react";

import type { TypeMatchupCell } from "@/modules/mainline/shared/data/type-matchup-rows";
import {
  describeTypeTally,
  getTypeTallyBars,
  type TypeTallyBar,
  type TypeTallyTone,
} from "@/modules/mainline/shared/data/type-tally";
import { getHoverFocusClassName } from "@/shared/utils/hover-focus";
import { cn } from "@/shared/utils/cn";

/* The matchup cells' own meaning colours: wine for weak, green for resists. */
const toneClassNames: Record<TypeTallyTone, string> = {
  immune: "bg-ok-deep",
  neutral: "bg-mute",
  resist: "bg-ok",
  unknown: "bg-track",
  weak: "bg-danger",
};

/*
 * Half the strip's height is three steps; a flat bar is a short tick. `md`
 * fills a table row, `sm` sits on a line of text.
 */
const sizeClassNames = {
  md: {
    bar: "w-2.5",
    steps: { 0: "h-0.5", 1: "h-2.5", 2: "h-4", 3: "h-5" },
    strip: "h-11 gap-1",
  },
  sm: {
    bar: "w-1.5",
    steps: { 0: "h-0.5", 1: "h-1.5", 2: "h-2.5", 3: "h-3" },
    strip: "h-6.5 gap-0.75",
  },
} as const satisfies Record<
  string,
  { bar: string; steps: Record<TypeTallyBar["steps"], string>; strip: string }
>;

const directionClassNames: Record<TypeTallyBar["direction"], string> = {
  down: "top-1/2 rounded-b-xs",
  flat: "top-1/2 -translate-y-1/2 rounded-full",
  up: "bottom-1/2 rounded-t-xs",
};

/*
 * One attacking type across the team, as a small bar per Pokémon in team
 * order: up in wine where it's weak, down in green where it resists, taller
 * for 4×, ¼ and immune. In a table, `getBarProps` and `isBarDimmed` link
 * each bar to its Pokémon's column through the shared hover focus.
 */
export const TypeTallyStrip = ({
  cells,
  className,
  decorative = false,
  getBarProps,
  isBarDimmed,
  size = "md",
}: {
  cells: TypeMatchupCell[];
  className?: string;
  /* When the counts beside it already say it, it stays out of the reading. */
  decorative?: boolean;
  getBarProps?: (column: number) => HTMLAttributes<HTMLSpanElement>;
  isBarDimmed?: (column: number) => boolean;
  size?: keyof typeof sizeClassNames;
}) => (
  <span
    {...(decorative
      ? { "aria-hidden": true }
      : { "aria-label": describeTypeTally(cells), role: "img" })}
    className={cn(
      "relative inline-flex shrink-0 items-stretch px-0.5",
      sizeClassNames[size].strip,
      className,
    )}
  >
    <span
      aria-hidden
      className="bg-line absolute inset-x-0 top-1/2 h-px -translate-y-1/2"
    />
    {getTypeTallyBars(cells).map((bar, column) => (
      <span
        key={bar.memberId}
        data-tally-tone={bar.tone}
        {...getBarProps?.(column)}
        className={cn(
          "relative",
          sizeClassNames[size].bar,
          getHoverFocusClassName(isBarDimmed?.(column) ?? false),
        )}
      >
        <span
          className={cn(
            "absolute inset-x-0",
            toneClassNames[bar.tone],
            sizeClassNames[size].steps[bar.steps],
            directionClassNames[bar.direction],
          )}
        />
      </span>
    ))}
  </span>
);
