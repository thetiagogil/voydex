import * as React from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/shared/utils/cn";

/*
 * A section card: cream on the page ground, lifted by a soft shadow, never a
 * hard edge. Inside another card, a sheet or a dialog it goes flat (`inset`
 * is that inner tile on purpose). `interactive` is a card that opens
 * something: it rises a little under the pointer, with everything on it.
 */
const cardVariants = cva(
  "group/card text-card-foreground flex flex-col gap-(--card-spacing) overflow-hidden rounded-2xl py-(--card-spacing) text-15 [--card-spacing:--spacing(5)] has-[>img:first-child]:pt-0 data-[size=sm]:[--card-spacing:--spacing(4)] sm:[--card-spacing:--spacing(6)] *:[img:first-child]:rounded-t-2xl *:[img:last-child]:rounded-b-2xl",
  {
    variants: {
      size: {
        default: "",
        sm: "rounded-xl",
      },
      variant: {
        default:
          "bg-surface shadow-card in-data-[slot=card]:bg-surface-2 in-data-[slot=card]:shadow-none in-data-[slot=dialog-content]:shadow-none in-data-[slot=alert-dialog-content]:shadow-none in-data-[slot=sheet-content]:shadow-none",
        inset: "bg-surface-2",
        /*
         * The card takes the focus ring for what opens it, so the ring lifts
         * with it: a link around it (`group/card-link`, its own outline
         * off), or its own action stretched over it (`data-slot="card-open"`)
         * beside others such as a ⋯. Everything on the card lifts along.
         */
        interactive:
          "bg-surface shadow-card transition-[translate,background-color] duration-150 hover:-translate-y-0.5 focus-visible:-translate-y-0.5 group-hover/card-link:-translate-y-0.5 group-focus-visible/card-link:-translate-y-0.5 group-focus-visible/card-link:outline-3 group-focus-visible/card-link:outline-offset-2 group-focus-visible/card-link:outline-(--focus) has-[[data-slot=card-open]:focus-visible]:-translate-y-0.5 has-[[data-slot=card-open]:focus-visible]:outline-3 has-[[data-slot=card-open]:focus-visible]:outline-offset-2 has-[[data-slot=card-open]:focus-visible]:outline-(--focus)",
      },
    },
    defaultVariants: {
      size: "default",
      variant: "default",
    },
  },
);

const Card = ({
  className,
  size = "default",
  variant = "default",
  ...props
}: React.ComponentProps<"div"> & VariantProps<typeof cardVariants>) => {
  return (
    <div
      data-slot="card"
      data-size={size}
      className={cn(cardVariants({ size, variant }), className)}
      {...props}
    />
  );
};

const CardContent = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-content"
      className={cn("px-(--card-spacing)", className)}
      {...props}
    />
  );
};

export { Card, CardContent, cardVariants };
