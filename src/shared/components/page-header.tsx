import type { ReactNode } from "react";

import { PageHeadTool } from "@/shared/components/page-head-tool";
import { cn } from "@/shared/utils/cn";

type PageHeaderProps = {
  action?: ReactNode;
  className?: string;
  description?: ReactNode;
  /* For a section or region labelled by this heading. */
  headingId?: string;
  /* `h2` where the page already has its `h1`, such as a Play's tab. */
  headingLevel?: "h1" | "h2";
  /* A second, optional line under the description, such as a reward. */
  note?: ReactNode;
  title: ReactNode;
};

/*
 * A page head: the Fredoka title, one line under it (and an optional note
 * below that), and an optional action that sits at the end of the row from
 * `sm` up. A tool handed down by the
 * page (`PageHeadToolProvider`) sits just before the action, so the main
 * action keeps the row's edge.
 */
export const PageHeader = ({
  action,
  className,
  description,
  headingId,
  headingLevel: Heading = "h1",
  note,
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
        <Heading id={headingId} className="title-page">
          {title}
        </Heading>
        {description ? (
          <p className="text-ink-2 text-15 mt-1.5 max-w-3xl font-semibold">
            {description}
          </p>
        ) : null}
        {note ? (
          <p className="text-ink-2 text-15 mt-1 max-w-3xl font-semibold">
            {note}
          </p>
        ) : null}
      </div>
      <div className="flex min-w-0 flex-wrap items-center gap-3 empty:hidden sm:ml-auto">
        <PageHeadTool />
        {action}
      </div>
    </div>
  );
};
