import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * A paper tag: something a thing carries, such as a Play's tag or one of its
 * challenge rules. Tags describe; anything you operate in a toolbar stays a
 * pill (`ChoiceChip`, `SegmentedControl`). `lg` (40px) where the tag can be
 * taken off (`RemovableChip`).
 */
export const PaperTag = ({
  children,
  className,
  size = "md",
}: {
  children: ReactNode;
  className?: string;
  size?: "lg" | "md";
}) => (
  <span className={cn("paper-tag-lift inline-flex max-w-full", className)}>
    <span
      className={cn(
        "paper-tag text-ink inline-flex items-center gap-1.5 font-extrabold",
        size === "lg" ? "text-14 min-h-10" : "text-13 min-h-8",
      )}
    >
      {children}
    </span>
  </span>
);
