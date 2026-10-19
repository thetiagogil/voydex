import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type CornerBubbleCorner =
  | "bottom"
  | "inside-top-right"
  | "top-left"
  | "top-right";

const cornerClassNames: Record<CornerBubbleCorner, string> = {
  /* Centred on the bottom edge, half outside: a number tab. */
  bottom: "-bottom-2.5 left-1/2 -translate-x-1/2",
  /*
   * Inside the top-right corner, for a card whose list clips its edges: clear
   * of a sticker's 4px band, so it never touches the edge.
   */
  "inside-top-right": "top-3 right-3",
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
    className={cn(
      "absolute z-10 flex items-center gap-1",
      cornerClassNames[corner],
      className,
    )}
  >
    {children}
  </span>
);

/*
 * A slot's number on a corner (the Team Planner's six): the action red in a
 * white band. Decorative: the card says its slot in words.
 */
export const SlotMark = ({ children }: { children: ReactNode }) => (
  <span
    aria-hidden
    className="bg-action text-13 bubble grid size-6 place-items-center rounded-full font-extrabold text-white tabular-nums"
  >
    {children}
  </span>
);
