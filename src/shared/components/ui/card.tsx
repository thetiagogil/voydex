import * as React from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/shared/utils/cn";

/*
 * A section card on the page ground keeps the quiet clay edge (3px, neutral,
 * never pressed). Inside another card, a sheet or a dialog it goes flat.
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
        interactive:
          "bg-surface shadow-card transition-[translate,background-color] duration-150 hover:-translate-y-0.5 focus-visible:-translate-y-0.5 group-hover/card-link:-translate-y-0.5 group-focus-visible/card-link:-translate-y-0.5",
        bare: "gap-0 rounded-none bg-transparent py-0",
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
