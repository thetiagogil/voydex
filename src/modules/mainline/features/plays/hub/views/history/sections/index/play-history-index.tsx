import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import {
  getPlayMomentRecord,
  type PlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { SectionIndexNav } from "@/shared/components/section-index-nav";

import {
  getPlayHistoryMonthAnchor,
  groupPlayHistoryMonthsByYear,
  type PlayHistoryMonth,
} from "../../data/play-history-model";

/* How many of a month's medallions its index row shows before "+N". */
const previewLimit = 6;

/* A month's moments at a glance: their medallions in a row, overlapping. */
const PlayHistoryMonthPreview = ({
  context,
  month,
}: {
  context: PlayMomentContext;
  month: PlayHistoryMonth;
}) => {
  const shown = month.entries.slice(0, previewLimit);
  const rest = month.entries.length - shown.length;

  return (
    <span aria-hidden className="flex items-center">
      {shown.map(({ event }, index) => {
        const record = getPlayMomentRecord(event, context);

        return (
          <Medallion
            key={event.event_id ?? index}
            className={index > 0 ? "-ml-1.5" : undefined}
            content={record.medallion}
            faded={record.faded}
            size="xs"
          />
        );
      })}
      {rest > 0 ? (
        <span className="text-12 pl-2 font-bold tabular-nums opacity-80">
          +{rest}
        </span>
      ) : null}
    </span>
  );
};

/*
 * History's side index on wide screens: the months shown, under their years
 * in the list's own order, each with how many moments it holds and a row of
 * their medallions. A month name drops its year, which its heading says.
 */
export const PlayHistoryIndex = ({
  context,
  months,
}: {
  context: PlayMomentContext;
  months: PlayHistoryMonth[];
}) => (
  <SectionIndexNav
    label="History months"
    groups={groupPlayHistoryMonthsByYear(months).map((group) => ({
      label: group.label,
      sections: group.months.map((month) => ({
        detail: <PlayHistoryMonthPreview context={context} month={month} />,
        href: `#${getPlayHistoryMonthAnchor(month)}` as const,
        label: month.year
          ? month.label.replace(` ${month.year}`, "")
          : month.label,
        meta: `${month.entries.length} ${month.entries.length === 1 ? "moment" : "moments"}`,
      })),
    }))}
  />
);
