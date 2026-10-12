import * as React from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/shared/utils/cn";

/*
 * A section card on the page ground keeps the quiet clay edge (3px, neutral,
 * never pressed). Inside another card, a sheet or a dialog it goes flat.
 */
const cardVariants = cva(
  "group/card text-card-foreground flex flex-col gap-(--card-spacing) overflow-hidden rounded-2xl py-(--card-spacing) text-15 [--card-spacing:--spacing(5)] has-data-[slot=card-footer]:pb-0 has-[>img:first-child]:pt-0 data-[size=sm]:[--card-spacing:--spacing(4)] data-[size=sm]:has-data-[slot=card-footer]:pb-0 sm:[--card-spacing:--spacing(6)] *:[img:first-child]:rounded-t-2xl *:[img:last-child]:rounded-b-2xl",
  {
    variants: {
      size: {
        default: "",
        sm: "rounded-xl",
      },
      variant: {
        default:
          "bg-surface shadow-card in-data-[slot=card]:bg-surface-2 in-data-[slot=card]:shadow-none in-data-[slot=dialog-content]:shadow-none in-data-[slot=sheet-content]:shadow-none",
        inset: "bg-surface-2",
        interactive:
          "bg-surface shadow-card transition-[transform,background-color] duration-150 hover:-translate-y-0.5 focus-visible:-translate-y-0.5 group-hover/card-link:-translate-y-0.5 group-focus-visible/card-link:-translate-y-0.5",
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

const CardHeader = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-header"
      className={cn(
        "group/card-header @container/card-header grid auto-rows-min items-start gap-1 px-(--card-spacing) has-data-[slot=card-action]:grid-cols-[1fr_auto] has-data-[slot=card-description]:grid-rows-[auto_auto] [.border-b]:pb-(--card-spacing)",
        className,
      )}
      {...props}
    />
  );
};

const CardTitle = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-title"
      className={cn(
        "font-display text-20 leading-tight font-semibold tracking-[-0.01em] group-data-[size=sm]/card:text-17",
        className,
      )}
      {...props}
    />
  );
};

const CardDescription = ({
  className,
  ...props
}: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-description"
      className={cn("text-14 font-semibold text-ink-2", className)}
      {...props}
    />
  );
};

const CardAction = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-action"
      className={cn(
        "col-start-2 row-span-2 row-start-1 self-start justify-self-end",
        className,
      )}
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

const CardFooter = ({ className, ...props }: React.ComponentProps<"div">) => {
  return (
    <div
      data-slot="card-footer"
      className={cn(
        "flex items-center border-t border-line bg-surface-2 p-(--card-spacing)",
        className,
      )}
      {...props}
    />
  );
};

export {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
  cardVariants,
};
