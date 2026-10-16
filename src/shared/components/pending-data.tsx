import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type PendingDataProps = {
  /* A quiet preview of the shape, such as empty rows; never invented values. */
  children?: ReactNode;
  className?: string;
  /* The visible label. */
  label?: string;
  /* What is missing, for the reader, such as "Pokédex entries aren't in Voydex yet." */
  note?: ReactNode;
  /* `block` stands in for a section or card body; `inline` for one value or action. */
  variant?: "block" | "inline";
};

/*
 * A piece of the v3 design whose data or backend Voydex doesn't have yet. It
 * shows where the piece goes without inventing anything. Every use carries a
 * `TODO(v3-data)` comment naming what it waits on; when that data lands, the
 * marker and its comment go. Grep `TODO(v3-data)` to find them all.
 */
export const PendingData = ({
  children,
  className,
  label = "Not in Voydex yet",
  note,
  variant = "block",
}: PendingDataProps) => {
  if (variant === "inline") {
    return (
      <span
        data-slot="pending-data"
        className={cn(
          "empty-slot text-12 text-ink-3 inline-flex h-7 items-center rounded-full px-2.5 font-bold whitespace-nowrap",
          className,
        )}
      >
        {label}
      </span>
    );
  }

  return (
    <div
      data-slot="pending-data"
      className={cn(
        "empty-slot text-ink-3 flex flex-col items-center gap-1.5 rounded-md px-4 py-5 text-center",
        className,
      )}
    >
      {children ? (
        <div aria-hidden className="w-full">
          {children}
        </div>
      ) : null}
      <p className="text-14 font-extrabold">{label}</p>
      {note ? (
        <p className="text-13 max-w-[60ch] font-semibold">{note}</p>
      ) : null}
    </div>
  );
};
