import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import { PlayStartRow } from "@/modules/mainline/features/plays/hub/components/play-start-row";
import type { PlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type RecentHistorySectionProps = {
  context: PlayMomentContext;
  events: MainlinePlayTimelineEvent[];
  historyHref: string;
  startedOn: string | null;
};

const recentMomentLimit = 3;

/*
 * Recent moments: the Play's newest records, drawn as History draws them,
 * with the way on to History once there are any. While there are fewer than
 * three, where the Play began closes the list.
 */
export const RecentHistorySection = ({
  context,
  events,
  historyHref,
  startedOn,
}: RecentHistorySectionProps) => {
  const moments = events
    .filter((event) => event.event_type_slug !== "status_change")
    .slice(0, recentMomentLimit);

  return (
    <DetailSectionCard
      title="Recent moments"
      contentClassName="pt-0"
      more={
        moments.length ? { href: historyHref, label: "History" } : undefined
      }
    >
      <div className="divide-line grid divide-y">
        {moments.map((event, index) => {
          const happenedAt = event.happened_at ?? event.created_at;

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
          <PlayStartRow startedOn={startedOn} />
        ) : null}
      </div>
    </DetailSectionCard>
  );
};
