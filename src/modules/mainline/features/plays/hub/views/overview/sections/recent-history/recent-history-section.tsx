import { useId } from "react";

import { PlayMomentRow } from "@/modules/mainline/features/plays/shared/components/play-moment-row";
import {
  PlayTimeline,
  PlayTimelineItem,
  PlayTimelineStart,
} from "@/modules/mainline/features/plays/hub/components/play-timeline";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { SectionHead } from "@/shared/components/section-head";

type RecentHistorySectionProps = {
  context: PlayMomentContext;
  events: MainlinePlayTimelineEvent[];
  historyHref: string;
  startedOn: string | null;
};

const recentMomentLimit = 3;

/*
 * Latest moments: the Play's newest records as moment cards, the same ones
 * History draws, under a heading on the wall (as Home's are), with the way
 * on to History once there are any. While there are fewer than three, where
 * the Play began closes the list.
 */
export const RecentHistorySection = ({
  context,
  events,
  historyHref,
  startedOn,
}: RecentHistorySectionProps) => {
  const headingId = useId();
  const moments = events.slice(0, recentMomentLimit);

  return (
    <section
      aria-labelledby={headingId}
      className="flex min-w-0 flex-col gap-3"
    >
      <SectionHead
        title="Latest moments"
        titleId={headingId}
        more={
          moments.length ? { href: historyHref, label: "History" } : undefined
        }
      />
      <PlayTimeline labelledBy={headingId}>
        {moments.map((event, index) => {
          const happenedAt = getPlayMomentInstant(event);

          return (
            <PlayTimelineItem key={event.event_id ?? `${event.title}-${index}`}>
              <PlayMomentRow
                context={context}
                event={event}
                variant="timeline"
                when={happenedAt ? <PlayMomentTime value={happenedAt} /> : null}
              />
            </PlayTimelineItem>
          );
        })}
        {moments.length < recentMomentLimit ? (
          <PlayTimelineStart startedOn={startedOn} />
        ) : null}
      </PlayTimeline>
    </section>
  );
};
