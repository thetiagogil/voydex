import {
  PlayTimelineItem,
  PlayTimelineMonth,
} from "@/modules/mainline/features/plays/hub/components/play-timeline";
import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";

import {
  getPlayHistoryEventKey,
  type PlayHistoryMonth,
} from "../../data/play-history-model";

/*
 * A month on History's line: its mark, then its moments, each in a card of
 * its own, beside their medallions on the line or, from 1024px, in a grid.
 * Each record stays readable at every width, so its line and note wrap
 * instead of truncating.
 */
export const PlayHistoryMonthItems = ({
  context,
  month,
}: {
  context: PlayMomentContext;
  month: PlayHistoryMonth;
}) => (
  <PlayTimelineMonth
    count={month.entries.length}
    label={month.label}
    titleId={`play-history-${month.key}`}
  >
    {month.entries.map(({ date, event }, index) => (
      <PlayTimelineItem
        key={getPlayHistoryEventKey(event, index)}
        // A link to one moment (a Collection "Before" row) lands here.
        id={event.event_id ? `moment-${event.event_id}` : undefined}
        className="target:**:data-[slot=card]:bg-select-soft scroll-mt-[calc(var(--play-dock-offset,0px)+5rem)] lg:pb-0"
      >
        <PlayMomentRow
          context={context}
          event={event}
          placement="grid"
          variant="timeline"
          wrap
          when={
            date.moment ? (
              <time dateTime={date.moment.dateTime}>
                {date.moment.day} · {date.moment.time}
              </time>
            ) : undefined
          }
        />
      </PlayTimelineItem>
    ))}
  </PlayTimelineMonth>
);
