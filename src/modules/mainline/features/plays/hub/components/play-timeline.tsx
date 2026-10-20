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
 * the starting line start where a card's words do. The line runs 28px in,
 * from the first stop's centre to the last one's (28px down a month or the
 * start; a moment's medallion, level with its card, covers the line's end).
 *
 * `centered` (History) turns the line into a trail down the middle from
 * 1024px: each month is a big circle on it, moments hang either side with
 * their medallion inside the card (each row says which side, see RecordRow's
 * `side`), and the start's words sit to the right of its medallion.
 */
export const PlayTimeline = ({
  children,
  className,
  label,
  layout = "start",
}: {
  children: ReactNode;
  className?: string;
  /* Names the list when no heading does. */
  label?: string;
  layout?: "centered" | "start";
}) => (
  <ol
    aria-label={label}
    data-layout={layout}
    className={cn(
      "timeline-centered:before:trail timeline-centered:before:absolute timeline-centered:before:inset-y-7 timeline-centered:before:left-[calc(50%-12px)] timeline-centered:before:w-6 relative grid min-w-0",
      className,
    )}
  >
    {children}
  </ol>
);

const lineClassName =
  "before:bg-line before:absolute before:top-0 before:bottom-0 before:left-6.75 before:w-0.5 first:before:top-7 last:before:bottom-auto last:before:h-7 only:before:hidden timeline-centered:before:hidden";

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
  <li
    id={id}
    className={cn("relative min-w-0 pb-4 last:pb-0", lineClassName, className)}
  >
    {children}
  </li>
);

/*
 * "February 2025" on one line, or in a trail's circle as the month over its
 * year, so every circle reads the same way.
 */
const PlayTimelineMonthName = ({ label }: { label: string }) => {
  const [, month, year] = /^(.+) (\d{4})$/.exec(label) ?? [];

  return month ? (
    <>
      {month} <span className="timeline-centered:block">{year}</span>
    </>
  ) : (
    label
  );
};

/*
 * A month on the line: a small mark, then its name and how many moments. On
 * History's trail it is a big circle the trail runs through.
 */
export const PlayTimelineMonth = ({
  count,
  label,
  titleId,
}: {
  count: number;
  label: string;
  titleId: string;
}) => (
  <PlayTimelineItem className="timeline-centered:py-4 timeline-centered:first:pt-0 pt-5 first:pt-0">
    <div className="timeline-centered:flex timeline-centered:justify-center grid min-h-14 grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4">
      <span
        aria-hidden
        className="bg-surface inset-ring-mute timeline-centered:hidden relative mx-auto size-4.5 rounded-full inset-ring-[3px]"
      />
      <RangeHeading
        className="timeline-centered:size-32 timeline-centered:flex-col timeline-centered:flex-nowrap timeline-centered:items-center timeline-centered:justify-center timeline-centered:gap-0.5 timeline-centered:rounded-full timeline-centered:bg-surface timeline-centered:p-3 timeline-centered:text-center timeline-centered:shadow-card timeline-centered:inset-ring-2 timeline-centered:inset-ring-line relative pl-4 sm:pl-5"
        headingLevel={3}
        title={<PlayTimelineMonthName label={label} />}
        titleId={titleId}
        count={`${count} ${count === 1 ? "moment" : "moments"}`}
      />
    </div>
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
      <div className="timeline-centered:grid-cols-[minmax(0,1fr)_56px_minmax(0,1fr)] timeline-centered:gap-5 grid min-h-14 grid-cols-[56px_minmax(0,1fr)] items-center gap-3 sm:gap-4">
        <Medallion
          className="timeline-centered:col-start-2"
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
