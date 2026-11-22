import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * A tag: something a thing carries, such as a Play's tag or one of its
 * challenge rules. It is a label, like a status: a white pill with a thin
 * line, never a control (anything you operate in a toolbar is a
 * `ChoiceChip` or a `SegmentedControl`). `lg` (36px) where the tag can be
 * taken off (`RemovableChip`) or opened.
 */
export const TagLabel = ({
  children,
  className,
  size = "md",
}: {
  children: ReactNode;
  className?: string;
  size?: "lg" | "md";
}) => (
  <span
    className={cn(
      "border-line bg-surface text-ink copy-label inline-flex max-w-full items-center gap-1.5 rounded-full border",
      size === "lg" ? "min-h-9 px-3.5" : "min-h-7 px-3",
      className,
    )}
  >
    {children}
  </span>
);
