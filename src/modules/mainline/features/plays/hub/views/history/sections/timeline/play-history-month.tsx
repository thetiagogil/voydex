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
 * A month on History's line: its mark, then each moment in a card of its own
 * beside its medallion. Each record stays readable at every width, so its
 * line and note wrap instead of truncating. From 1024px the line is in the
 * middle and a month's moments take turns, left then right.
 */
export const PlayHistoryMonthItems = ({
  context,
  month,
}: {
  context: PlayMomentContext;
  month: PlayHistoryMonth;
}) => (
  <>
    <PlayTimelineMonth
      count={month.entries.length}
      label={month.label}
      titleId={`play-history-${month.key}`}
    />
    {month.entries.map(({ date, event }, index) => (
      <PlayTimelineItem
        key={getPlayHistoryEventKey(event, index)}
        // A link to one moment (a Collection "Before" row) lands here.
        id={event.event_id ? `moment-${event.event_id}` : undefined}
        className="target:**:data-[slot=card]:bg-select-soft scroll-mt-[calc(var(--play-dock-offset,0px)+5rem)]"
      >
        <PlayMomentRow
          context={context}
          event={event}
          side={index % 2 ? "right" : "left"}
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
  </>
);
