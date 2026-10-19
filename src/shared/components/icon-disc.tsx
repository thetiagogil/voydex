import { cva, type VariantProps } from "class-variance-authority";
import type { ComponentProps } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * The one round tile an icon (or a letter) sits on beside words: a section's
 * icon, a row in You, a fact in Statistics, the add mark on an empty sticker.
 * `quiet` is the inset grey, for cards and rows; `band` is white with the
 * calm blue, for a tile on the page's band. Sizes follow the row it sits in.
 */
export const iconDiscVariants = cva(
  "grid shrink-0 place-items-center rounded-full",
  {
    variants: {
      size: {
        xs: "size-6",
        sm: "size-8",
        md: "size-9",
        lg: "size-11",
        xl: "size-12",
      },
      tone: {
        band: "bg-white text-calm",
        quiet: "bg-surface-2 text-ink-2",
      },
    },
    defaultVariants: {
      size: "md",
      tone: "quiet",
    },
  },
);

export const IconDisc = ({
  className,
  size,
  tone,
  ...props
}: ComponentProps<"span"> & VariantProps<typeof iconDiscVariants>) => (
  <span
    aria-hidden
    className={cn(iconDiscVariants({ size, tone }), className)}
    {...props}
  />
);
