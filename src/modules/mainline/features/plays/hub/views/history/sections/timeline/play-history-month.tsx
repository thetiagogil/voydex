import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { RangeHeading } from "@/shared/components/range-heading";
import { Card } from "@/shared/components/ui/card";

import {
  getPlayHistoryEventKey,
  type PlayHistoryMonth,
} from "../../data/play-history-model";

/*
 * A month: its heading on the page, then its moments between rules in one
 * card (the brief's change from v3's card per record). Each record stays
 * readable at every width, so its line and note wrap instead of truncating.
 */
export const PlayHistoryMonthSection = ({
  context,
  month,
}: {
  context: PlayMomentContext;
  month: PlayHistoryMonth;
}) => {
  const headingId = `play-history-${month.key}`;
  const count = month.entries.length;

  return (
    <section aria-labelledby={headingId} className="min-w-0">
      <RangeHeading
        headingLevel={3}
        title={month.label}
        titleId={headingId}
        count={`${count} ${count === 1 ? "moment" : "moments"}`}
      />

      <Card className="mt-3.5 gap-0 px-5 py-1.5 sm:px-7 sm:py-3">
        <ol className="grid min-w-0">
          {month.entries.map(({ date, event }, index) => (
            <li
              key={getPlayHistoryEventKey(event, index)}
              // A link to one moment (a Collection "Before" row) lands here.
              id={event.event_id ? `moment-${event.event_id}` : undefined}
              className="target:bg-select-soft -mx-3 min-w-0 scroll-mt-[calc(var(--play-dock-offset,0px)+5rem)] rounded-lg px-3 sm:-mx-4 sm:px-4"
            >
              <PlayMomentRow
                context={context}
                event={event}
                wrap
                when={
                  date.moment ? (
                    <time dateTime={date.moment.dateTime}>
                      {date.moment.day} · {date.moment.time}
                    </time>
                  ) : undefined
                }
              />
            </li>
          ))}
        </ol>
      </Card>
    </section>
  );
};
