import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * One figure inside a card or sheet (the Planner's Team check, a Story
 * battle's levels): a quiet label over a Fredoka value, and an optional line
 * saying what it means, on the inset fill.
 */
export const StatTile = ({
  children,
  className,
  label,
  value,
}: {
  children?: ReactNode;
  className?: string;
  label: ReactNode;
  value: ReactNode;
}) => (
  <div className={cn("bg-surface-2 rounded-md px-4 py-3", className)}>
    <p className="text-ink-2 text-13 font-bold">{label}</p>
    <p className="font-display text-24 font-semibold tabular-nums">{value}</p>
    {children ? (
      <p className="text-ink-2 text-14 font-semibold">{children}</p>
    ) : null}
  </div>
);
