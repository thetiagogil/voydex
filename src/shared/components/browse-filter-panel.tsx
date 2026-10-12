import type { ComponentProps } from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/shared/utils/cn";

const browseFilterPanelVariants = cva("grid gap-3", {
  variants: {
    variant: {
      default:
        "rounded-xl bg-surface p-4 text-ink shadow-card",
      bare: "bg-transparent text-ink",
    },
  },
  defaultVariants: {
    variant: "default",
  },
});

export const BrowseFilterPanel = ({
  className,
  variant = "default",
  ...props
}: ComponentProps<"form"> & VariantProps<typeof browseFilterPanelVariants>) => {
  return (
    <form
      className={cn(browseFilterPanelVariants({ variant }), className)}
      {...props}
    />
  );
};
