import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type SettingsRowProps = {
  /* The control at the end: a button, a switch, chips or a pending marker. */
  children: ReactNode;
  className?: string;
  description?: ReactNode;
  title: ReactNode;
  /* Ties the row's words to its control, such as a switch's `aria-labelledby`. */
  titleId?: string;
};

/*
 * A settings row (v3 `.trow`): what it is, one line on what it means, and its
 * control at the end. Rows sit between hairlines; on phones the control drops
 * below the words. App settings and Play settings.
 */
export const SettingsRow = ({
  children,
  className,
  description,
  title,
  titleId,
}: SettingsRowProps) => (
  <div
    className={cn(
      "border-line flex flex-col items-start gap-3 py-3.5 not-first:border-t sm:flex-row sm:items-center sm:justify-between sm:gap-5",
      className,
    )}
  >
    <div className="flex min-w-0 flex-col gap-0.5 sm:flex-1">
      <p id={titleId} className="text-15 font-extrabold">
        {title}
      </p>
      {description ? (
        <div className="text-ink-2 text-13 font-semibold wrap-anywhere">
          {description}
        </div>
      ) : null}
    </div>
    <div className="flex max-w-full min-w-0 shrink-0 flex-wrap items-center gap-2">
      {children}
    </div>
  </div>
);
