import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export type CornerBubbleCorner =
  | "bottom"
  | "inside-top-left"
  | "inside-top-right"
  | "top-left"
  | "top-right";

/*
 * A mark sits 12px in from its card's outer edge, whatever border the card
 * draws: `none` when the bubble is a sibling of the card (a list item
 * around it), `line` inside a card with a 1px border, `sticker` inside a
 * sticker's 4px band. The position is measured from inside the border, so the
 * band is taken off.
 */
export type CornerBubbleBorder = "line" | "none" | "sticker";

const insetClassNames: Record<
  CornerBubbleBorder,
  { left: string; right: string; top: string }
> = {
  line: { left: "left-2.75", right: "right-2.75", top: "top-2.75" },
  none: { left: "left-3", right: "right-3", top: "top-3" },
  sticker: { left: "left-2", right: "right-2", top: "top-2" },
};

const cornerClassNames: Record<
  Exclude<CornerBubbleCorner, `inside-${string}`>,
  string
> = {
  /* Centred on the bottom edge, half outside: a number tab. */
  bottom: "-bottom-2.5 left-1/2 -translate-x-1/2",
  "top-left": "-top-2 -left-2",
  "top-right": "-top-2 -right-2",
};

const getCornerClassName = (
  corner: CornerBubbleCorner,
  border: CornerBubbleBorder,
) => {
  const inset = insetClassNames[border];

  /*
   * Inside a card, clear of its edge so a list that clips never cuts it.
   * Marks that share a corner stack with `flex-col` (the shiny mark under
   * the slot number).
   */
  switch (corner) {
    case "inside-top-left":
      return `${inset.top} ${inset.left}`;
    case "inside-top-right":
      return `${inset.top} ${inset.right}`;
    default:
      return cornerClassNames[corner];
  }
};

/*
 * Where the small marks on a card sit (an "i" tip, a slot number, a remove
 * ×): on a corner, half outside the card, above it. Its children draw the
 * marks with the `bubble` utility; several share one corner side by side.
 * The card is the positioning context (`relative`).
 */
export const CornerBubble = ({
  border = "none",
  children,
  className,
  corner = "top-right",
}: {
  border?: CornerBubbleBorder;
  children: ReactNode;
  className?: string;
  corner?: CornerBubbleCorner;
}) => (
  <span
    data-corner={corner}
    className={cn(
      "absolute z-20 flex items-center gap-1",
      getCornerClassName(corner, border),
      className,
    )}
  >
    {children}
  </span>
);

/*
 * The marks a Pokémon card carries in its corners, all drawn the same way:
 * a 24px round disc in the `bubble` white band. The corner rule: the slot
 * number top-right, a warning top-left, the Pokédex number (plain text, where
 * it is shown) top-left. `npm run design:check` fails a card that draws its
 * own.
 */

/*
 * A slot's number on a corner: the action red in a white band. Decorative:
 * the card says its slot in words.
 */
export const SlotMark = ({ children }: { children: ReactNode }) => (
  <span
    aria-hidden
    className="bg-action text-13 bubble grid size-6 place-items-center rounded-full font-extrabold text-white tabular-nums"
  >
    {children}
  </span>
);

/*
 * A warning on a corner (a rule the Pokémon breaks): the soft amber "!". The
 * static twin of the raised tip in `ExplanatoryTip`, for a card that is
 * itself a link or a button; its words are read, not seen.
 */
export const WarningMark = ({ label }: { label: string }) => (
  <span className="bg-warn-soft text-warn-ink bubble grid size-6 place-items-center rounded-full">
    <AppIcon icon={appIcons.status.warning} size="sm" />
    <span className="sr-only">, {label}</span>
  </span>
);

/* A shiny Pokémon's mark, in its type's colour; the word is read, not seen. */
export const ShinyMark = () => (
  <span className="bg-surface bubble grid size-6 place-items-center rounded-full">
    <AppIcon icon={appIcons.product.shiny} size="sm" className="type-ink" />
    <span className="sr-only">, Shiny</span>
  </span>
);
