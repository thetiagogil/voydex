import { cva } from "class-variance-authority";

/*
 * Repeated data rows on a card, on the one hover fill (`hover`). `scan` rows only help the eye follow a line;
 * `action` rows open something, so they also take the focus outline.
 */
const rowInteractionVariants = cva("transition-colors", {
  variants: {
    interaction: {
      action: "hover:bg-hover focus-visible:bg-hover focus-ring-inset",
      scan: "hover:bg-hover",
    },
  },
  defaultVariants: {
    interaction: "scan",
  },
});

export { rowInteractionVariants };
