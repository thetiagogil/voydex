import type { ComponentProps } from "react";

import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/shared/utils/cn";

const browseFilterPanelVariants = cva("grid gap-3", {
  variants: {
    variant: {
      default:
        "bg-card text-card-foreground ring-app-surface-border rounded-xl p-3 shadow-(--app-surface-shadow) ring-1",
      journal: "bg-transparent text-card-foreground",
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
