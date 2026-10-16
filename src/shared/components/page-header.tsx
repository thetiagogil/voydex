import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type PageHeaderProps = {
  action?: ReactNode;
  className?: string;
  description?: ReactNode;
  /* For a section or region labelled by this heading. */
  headingId?: string;
  /* `h2` where the page already has its `h1`, such as a Play's tab. */
  headingLevel?: "h1" | "h2";
  title: ReactNode;
};

/*
 * A page head: the Fredoka title, one line under it, and an optional action
 * that sits at the end of the row from `sm` up.
 */
export const PageHeader = ({
  action,
  className,
  description,
  headingId,
  headingLevel: Heading = "h1",
  title,
}: PageHeaderProps) => {
  return (
    <div
      className={cn(
        "flex flex-col gap-x-6 gap-y-4 pt-4 sm:flex-row sm:items-end sm:justify-between sm:pt-6",
        className,
      )}
    >
      <div className="min-w-0">
        <Heading
          id={headingId}
          className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]"
        >
          {title}
        </Heading>
        {description ? (
          <p className="text-ink-2 text-15 mt-1.5 max-w-3xl font-semibold">
            {description}
          </p>
        ) : null}
      </div>
      {action ? <div className="min-w-0 sm:ml-auto">{action}</div> : null}
    </div>
  );
};
