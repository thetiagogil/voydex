"use client";

import { cn } from "@/lib/utils/cn";
import type { ReactNode } from "react";

type PlayDrawerToolbarProps = {
  summary?: ReactNode;
  search?: ReactNode;
  controls?: ReactNode;
  actions?: ReactNode;
  className?: string;
};

export const PlayDrawerToolbar = ({
  summary,
  search,
  controls,
  actions,
  className,
}: PlayDrawerToolbarProps) => {
  return (
    <div
      className={cn(
        "border-border flex flex-col gap-3 border-b px-6 py-4",
        className,
      )}
    >
      {summary ? (
        <div className="text-muted-foreground text-xs">{summary}</div>
      ) : null}

      {search ? <div className="min-w-0">{search}</div> : null}

      {controls || actions ? (
        <div className="flex min-w-0 flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
          <div className="flex min-w-0 flex-1 flex-wrap items-center gap-2">
            {controls}
          </div>

          {actions ? (
            <div className="flex shrink-0 items-center justify-end">{actions}</div>
          ) : null}
        </div>
      ) : null}
    </div>
  );
};
