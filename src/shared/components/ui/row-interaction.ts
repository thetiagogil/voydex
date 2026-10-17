import { cva } from "class-variance-authority";

/*
 * Repeated data rows on a card, on the one hover fill (`hover`). `scan` rows only help the eye follow a line;
 * `action` rows open something, so they also take the focus outline.
 */
const rowInteractionVariants = cva("transition-colors", {
  variants: {
    interaction: {
      action:
        "hover:bg-hover focus-visible:outline-focus outline-none focus-visible:bg-hover focus-visible:outline-3 focus-visible:-outline-offset-3 focus-visible:outline-solid",
      scan: "hover:bg-hover",
    },
  },
  defaultVariants: {
    interaction: "scan",
  },
});

export { rowInteractionVariants };
