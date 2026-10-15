import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import { PlayStartRow } from "@/modules/mainline/features/plays/hub/components/play-start-row";
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
 * Recent moments: the Play's newest three records, drawn as History draws
 * them, with the way on to History once there are any. While there are
 * fewer, where the Play began closes the list at the card's foot (the card
 * is as tall as the badge case beside it), so the gap reads as the road
 * travelled since.
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
      contentClassName="flex flex-1 flex-col pt-0"
      more={
        moments.length ? { href: historyHref, label: "History" } : undefined
      }
    >
      <div className="flex flex-1 flex-col">
        {moments.map((event, index) => {
          const happenedAt = getPlayMomentInstant(event);

          return (
            <PlayMomentRow
              key={event.event_id ?? `${event.title}-${index}`}
              context={context}
              event={event}
              when={happenedAt ? <PlayMomentTime value={happenedAt} /> : null}
            />
          );
        })}
        {moments.length < recentMomentLimit ? (
          <PlayStartRow className="mt-auto" startedOn={startedOn} />
        ) : null}
      </div>
    </DetailSectionCard>
  );
};
