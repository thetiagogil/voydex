import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export type CornerBubbleCorner =
  | "bottom"
  | "inside-right"
  | "inside-top-left"
  | "inside-top-right"
  | "top-left"
  | "top-right";

const cornerClassNames: Record<CornerBubbleCorner, string> = {
  /* Centred on the bottom edge, half outside: a number tab. */
  bottom: "-bottom-2.5 left-1/2 -translate-x-1/2",
  /*
   * On the same right edge as the slot number, for a mark that sits lower
   * (the shiny mark by the art): the caller sets how far down with `top-*`.
   */
  "inside-right": "right-2",
  /*
   * Inside a top corner, for a card whose list clips its edges: 8px in, clear
   * of a sticker's 4px band, so it never touches the edge.
   */
  "inside-top-left": "top-2 left-2",
  "inside-top-right": "top-2 right-2",
  "top-left": "-top-2 -left-2",
  "top-right": "-top-2 -right-2",
};

/*
 * Where the small marks on a card sit (an "i" tip, a slot number, a remove
 * ×): on a corner, half outside the card, above it. Its children draw the
 * marks with the `bubble` utility; several share one corner side by side.
 * The card is the positioning context (`relative`).
 */
export const CornerBubble = ({
  children,
  className,
  corner = "top-right",
}: {
  children: ReactNode;
  className?: string;
  corner?: CornerBubbleCorner;
}) => (
  <span
    data-corner={corner}
    className={cn(
      "absolute z-20 flex items-center gap-1",
      cornerClassNames[corner],
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
