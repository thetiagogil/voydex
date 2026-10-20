import type { ReactNode } from "react";

import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { appIcons } from "@/shared/components/app-icon";
import { RangeHeading } from "@/shared/components/range-heading";
import { cn } from "@/shared/utils/cn";

/*
 * A Play's moments on one line, as History and Overview's recent moments draw
 * them: each moment's medallion sits on the line with its words in a small
 * card beside it, months mark the line where they begin, and where the Play
 * began is the line's origin. Words line up on one edge: a month's name and
 * the starting line start where a card's words do. The line is dashed and
 * runs 28px in, from the first stop's centre to the last one's (28px into
 * the list at each end; a medallion covers the line where it stops). It is
 * drawn once for the whole list, so its dashes keep their rhythm.
 */
export const PlayTimeline = ({
  children,
  className,
  label,
}: {
  children: ReactNode;
  className?: string;
  /* Names the list when no heading does. */
  label?: string;
}) => (
  <ol
    aria-label={label}
    className={cn(
      "before:timeline-line relative grid min-w-0 before:absolute before:inset-y-7 before:left-6.5 before:w-1",
      className,
    )}
  >
    {children}
  </ol>
);

/* One stop on the line: a moment, a month, or where the Play began. */
export const PlayTimelineItem = ({
  children,
  className,
  id,
}: {
  children: ReactNode;
  className?: string;
  /* A moment's anchor, so a link to it (a Collection "Before" row) lands here. */
  id?: string;
}) => (
  <li id={id} className={cn("relative min-w-0 pb-4 last:pb-0", className)}>
    {children}
  </li>
);

/*
 * A month on the line: a small mark, then its name and how many moments, and
 * under it the month's moments (History). Narrower than 1024px they keep to
 * the line; from 1024px they leave it for a grid of cards, two across and
 * three on wide screens, so the line runs from month to month.
 */
export const PlayTimelineMonth = ({
  children,
  count,
  label,
  titleId,
}: {
  /* The month's moments, each a `PlayTimelineItem` whose row is `placement="grid"`. */
  children?: ReactNode;
  count: number;
  label: string;
  titleId: string;
}) => (
  <PlayTimelineItem className="pt-5 first:pt-0">
    <div className="grid min-h-14 grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4">
      <span
        aria-hidden
        className="bg-surface inset-ring-mute relative mx-auto size-4.5 rounded-full inset-ring-[3px]"
      />
      <RangeHeading
        className="pl-4 sm:pl-5"
        headingLevel={3}
        title={label}
        titleId={titleId}
        count={`${count} ${count === 1 ? "moment" : "moments"}`}
      />
    </div>
    {children ? (
      <ol
        aria-labelledby={titleId}
        className="grid pt-4 lg:grid-cols-2 lg:gap-4 lg:pl-18 xl:grid-cols-3"
      >
        {children}
      </ol>
    ) : null}
  </PlayTimelineItem>
);

/*
 * Where the Play began: the line's origin, below the moments when the newest
 * come first, above them when the oldest do. Only its medallion and kicker
 * wear the accent.
 */
export const PlayTimelineStart = ({
  startedOn,
}: {
  startedOn: string | null;
}) => {
  const startedOnLabel = formatPlayDate(startedOn, "");

  return (
    <PlayTimelineItem className="pt-2">
      <div className="grid min-h-14 grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4">
        <Medallion
          content={{ icon: appIcons.milestones.story, kind: "start" }}
        />
        <div className="grid min-w-0 gap-0.5 pl-4 sm:pl-5">
          <p className="text-action-ink text-13 font-bold">
            {startedOnLabel ? `Started ${startedOnLabel}` : "Started"}
          </p>
          <p className="title-card">Your Play starts here</p>
        </div>
      </div>
    </PlayTimelineItem>
  );
};
