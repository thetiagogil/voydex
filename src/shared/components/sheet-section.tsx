import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * One part of a sheet or panel (v3 `.step`): its Fredoka heading with a
 * quiet word beside it (`aside`, such as "Optional") or a control at the end
 * of the row (`action`), then its content. Used by the roster's editor, the
 * Team Planner's slot sheet and Team check, and a species sheet.
 */
export const SheetSection = ({
  action,
  aside,
  children,
  className,
  title,
}: {
  action?: ReactNode;
  aside?: ReactNode;
  children: ReactNode;
  className?: string;
  title: string;
}) => (
  <section className={cn("grid min-w-0 gap-4", className)}>
    <div className="flex flex-wrap items-center justify-between gap-x-3 gap-y-2">
      <div className="flex min-w-0 items-baseline gap-3">
        <h3 className="text-20">{title}</h3>
        {aside ? (
          <span className="text-ink-3 text-13 font-semibold">{aside}</span>
        ) : null}
      </div>
      {action}
    </div>
    {children}
  </section>
);
