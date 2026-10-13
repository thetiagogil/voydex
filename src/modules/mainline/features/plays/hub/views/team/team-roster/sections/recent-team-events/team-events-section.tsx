import { appRoutes } from "@/config/routes";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import { formatPlayTimelineDate } from "@/modules/mainline/features/plays/hub/utils/play-timeline-date";
import { getTeamEventTypeByFormId } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-record";
import { TeamEventRecordRow } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-record-row";

type TeamEventsSectionProps = {
  className?: string;
  events: MainlinePlayTimelineEvent[];
  playId: string;
  roster: MainlinePlayTeamMember[];
};

/* The team's newest moments, as History's record rows. */
export const TeamEventsSection = ({
  className,
  events,
  playId,
  roster,
}: TeamEventsSectionProps) => {
  const typeByFormId = getTeamEventTypeByFormId(roster);

  return (
    <MainlinePlaySectionCard
      title="Recent team moments"
      headingLevel={3}
      action={
        <MainlinePlaySectionDestination
          href={appRoutes.mainlinePlayTeamHistory(playId)}
          label="Open history"
        />
      }
      className={className}
      contentClassName="pt-0"
    >
      {events.length ? (
        <div className="divide-line grid divide-y">
          {events.map((event, index) => {
            const date = formatPlayTimelineDate(event);

            return (
              <TeamEventRecordRow
                key={event.event_id ?? `${event.title}-${index}`}
                event={event}
                typeByFormId={typeByFormId}
                when={
                  <time
                    dateTime={
                      event.happened_at ?? event.created_at ?? undefined
                    }
                    title={date.dateTime}
                  >
                    {date.date}
                  </time>
                }
              />
            );
          })}
        </div>
      ) : (
        <p className="text-ink-2 py-4 font-semibold">
          No team moments yet. Adding, moving, evolving and retiring Pokémon
          will show up here.
        </p>
      )}
    </MainlinePlaySectionCard>
  );
};
