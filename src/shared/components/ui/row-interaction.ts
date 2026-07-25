import { cva } from "class-variance-authority";

const rowInteractionVariants = cva("transition-colors", {
  variants: {
    interaction: {
      action: "hover:bg-muted/50 focus-visible:bg-muted outline-none",
      scan: "hover:bg-muted/50",
    },
  },
  defaultVariants: {
    interaction: "scan",
  },
});

export { rowInteractionVariants };
