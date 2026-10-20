import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import {
  PlayTimeline,
  PlayTimelineItem,
  PlayTimelineStart,
} from "@/modules/mainline/features/plays/hub/components/play-timeline";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { getPlayMomentInstant } from "@/modules/mainline/features/plays/shared/utils/play-moment-date";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type RecentHistorySectionProps = {
  context: PlayMomentContext;
  events: MainlinePlayTimelineEvent[];
  historyHref: string;
  startedOn: string | null;
};

const recentMomentLimit = 3;

/*
 * Recent moments: the Play's newest records on the same line History draws,
 * with the way on to History once there are any. While there are fewer than
 * three, where the Play began closes the line.
 */
export const RecentHistorySection = ({
  context,
  events,
  historyHref,
  startedOn,
}: RecentHistorySectionProps) => {
  const moments = events.slice(0, recentMomentLimit);

  return (
    <DetailSectionCard
      title="Recent moments"
      contentClassName="pt-0"
      more={
        moments.length ? { href: historyHref, label: "History" } : undefined
      }
    >
      <PlayTimeline className="pt-1" label="Recent moments">
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
    </DetailSectionCard>
  );
};
