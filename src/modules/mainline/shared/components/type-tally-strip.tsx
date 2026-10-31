import type { TypeMatchupCell } from "@/modules/mainline/shared/data/type-matchup-rows";
import {
  getTypeTallyBars,
  type TypeTallyBar,
  type TypeTallyTone,
} from "@/modules/mainline/shared/data/type-tally";
import { cn } from "@/shared/utils/cn";

/* The matchup cells' own meaning colours: wine for weak, green for resists. */
const toneClassNames: Record<TypeTallyTone, string> = {
  immune: "bg-ok-deep",
  neutral: "bg-mute",
  resist: "bg-ok",
  unknown: "bg-track",
  weak: "bg-danger",
};

/* Half the strip's height is three steps; a flat bar is a short tick. */
const stepClassNames: Record<TypeTallyBar["steps"], string> = {
  0: "h-0.5",
  1: "h-1.5",
  2: "h-2.5",
  3: "h-3",
};

const directionClassNames: Record<TypeTallyBar["direction"], string> = {
  down: "top-1/2 rounded-b-xs",
  flat: "top-1/2 -translate-y-1/2 rounded-full",
  up: "bottom-1/2 rounded-t-xs",
};

/*
 * Phones fold the matrix away, so each type's row shows it in small: a bar
 * per Pokémon in team order, up in wine where it's weak, down in green where
 * it resists, taller for 4×, ¼ and immune. The counts beside it and the
 * opened row say the same in words, so it stays out of the reading.
 */
export const TypeTallyStrip = ({
  cells,
  className,
}: {
  cells: TypeMatchupCell[];
  className?: string;
}) => (
  <span
    aria-hidden
    className={cn(
      "relative inline-flex h-6.5 shrink-0 items-stretch gap-0.75 px-0.5",
      className,
    )}
  >
    <span className="bg-line absolute inset-x-0 top-1/2 h-px -translate-y-1/2" />
    {getTypeTallyBars(cells).map((bar) => (
      <span
        key={bar.memberId}
        data-tally-tone={bar.tone}
        className="relative w-1.5"
      >
        <span
          className={cn(
            "absolute inset-x-0",
            toneClassNames[bar.tone],
            stepClassNames[bar.steps],
            directionClassNames[bar.direction],
          )}
        />
      </span>
    ))}
  </span>
);
