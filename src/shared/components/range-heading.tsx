import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type RangeHeadingProps = {
  /* Trailing quiet actions, such as "Mark all" (v3 `.bulk`). */
  actions?: ReactNode;
  className?: string;
  /* The count line beside the heading, such as "24 of 151 caught". */
  count?: ReactNode;
  /* `3` under a page or tab heading at level 2. */
  headingLevel?: 2 | 3;
  title: ReactNode;
  /*
   * Lets script move focus to the heading (`tabIndex={-1}`), such as after a
   * jump or a bulk change. It never joins the tab order.
   */
  titleFocusable?: boolean;
  /* Give the group `aria-labelledby={titleId}`. */
  titleId?: string;
};

/*
 * The head of a range inside a long list (v3 `.range`): a Fredoka 20 heading,
 * a count line and trailing actions over a hairline, dropped when a card
 * follows. It wraps on phones.
 */
export const RangeHeading = ({
  actions,
  className,
  count,
  headingLevel = 2,
  title,
  titleFocusable = false,
  titleId,
}: RangeHeadingProps) => {
  const Heading = headingLevel === 3 ? "h3" : "h2";

  return (
    <div
      data-slot="range-heading"
      className={cn(
        "flex min-w-0 flex-wrap items-baseline gap-x-3.5 gap-y-1.5",
        className,
      )}
    >
      <Heading
        id={titleId}
        tabIndex={titleFocusable ? -1 : undefined}
        className="text-20 text-ink rounded-xs tracking-[-0.01em]"
      >
        {title}
      </Heading>
      {count !== undefined && count !== null ? (
        <span className="text-14 text-ink-2 font-semibold tabular-nums">
          {count}
        </span>
      ) : null}
      {actions ? (
        <div className="ml-auto flex items-center gap-1">{actions}</div>
      ) : null}
    </div>
  );
};
