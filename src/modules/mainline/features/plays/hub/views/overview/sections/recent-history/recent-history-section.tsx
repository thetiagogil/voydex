import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { formatPlayTimelineDate } from "@/modules/mainline/features/plays/hub/utils/play-timeline-date";
import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { appIcons } from "@/shared/components/app-icon";

import {
  getTimelineDescription,
  getTimelineEventDisplay,
} from "./recent-history-display";
import { getTimelineMedia } from "./recent-history-media-model";

type RecentHistorySectionProps = {
  badgeTypeByMilestoneId: Map<number, PokemonTypeSlug>;
  events: MainlinePlayTimelineEvent[];
  startedOn: string | null;
};

const recentMomentLimit = 3;

const getMedallion = (
  event: MainlinePlayTimelineEvent,
  badgeTypeByMilestoneId: Map<number, PokemonTypeSlug>,
): MedallionContent => {
  const display = getTimelineEventDisplay(event);

  if (display.medallion === "milestone") {
    const badgeType =
      event.milestone_id === null
        ? undefined
        : badgeTypeByMilestoneId.get(event.milestone_id);

    return badgeType
      ? { kind: "badge", type: badgeType }
      : { icon: display.icon, kind: "gold" };
  }

  if (display.medallion === "pokemon") {
    const imageUrl = getTimelineMedia(event).find(
      (item) => item.imageUrl,
    )?.imageUrl;

    return imageUrl
      ? { imageUrl, kind: "pokemon", type: null }
      : { icon: display.icon, kind: "status" };
  }

  return { icon: display.icon, kind: display.medallion };
};

/*
 * Recent moments: the Play's newest records, as History will draw them. While
 * there are fewer than three, where the Play began closes the list.
 */
export const RecentHistorySection = ({
  badgeTypeByMilestoneId,
  events,
  startedOn,
}: RecentHistorySectionProps) => {
  const moments = events
    .filter((event) => event.event_type_slug !== "status_change")
    .slice(0, recentMomentLimit);

  return (
    <MainlinePlaySectionCard title="Recent moments" contentClassName="pt-0">
      <div className="divide-line grid divide-y">
        {moments.map((event, index) => {
          const display = getTimelineEventDisplay(event);

          return (
            <RecordRow
              key={event.event_id ?? `${event.title}-${index}`}
              kicker={`${display.label} · ${formatPlayTimelineDate(event).date}`}
              headline={event.title ?? event.milestone_name ?? display.label}
              description={
                event.body && event.body !== event.title
                  ? getTimelineDescription(event)
                  : null
              }
              medallion={getMedallion(event, badgeTypeByMilestoneId)}
            />
          );
        })}
        {moments.length < recentMomentLimit ? (
          <RecordRow
            kicker={
              startedOn
                ? `Play started · ${formatPlayDate(startedOn)}`
                : "Play started"
            }
            headline="The journey began"
            medallion={{ icon: appIcons.milestones.story, kind: "start" }}
          />
        ) : null}
      </div>
    </MainlinePlaySectionCard>
  );
};
