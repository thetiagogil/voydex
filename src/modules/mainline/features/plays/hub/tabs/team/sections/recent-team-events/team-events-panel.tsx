import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import { TeamEventRow } from "@/modules/mainline/features/plays/hub/tabs/team/sections/recent-team-events/team-event-row";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";

type TeamEventsPanelProps = {
  events: MainlinePlayTimelineEvent[];
};

export const TeamEventsPanel = ({ events }: TeamEventsPanelProps) => {
  return (
    <MainlinePlaySectionCard
      title="Recent Team Events"
      action={
        <MainlinePlaySectionDestination
          label="View team history"
          unavailableLabel="The Team-filtered History view is not available yet"
        />
      }
      contentClassName="py-0"
      showSeparator
    >
      {events.length ? (
        <div className="relative grid min-w-0">
          <span
            className="bg-border absolute top-8 bottom-8 left-3 hidden w-px sm:block"
            aria-hidden
          />
          {events.map((event, index) => (
            <div
              key={event.event_id ?? `${event.title}-${index}`}
              className="border-app-surface-border/60 not-last:border-b"
            >
              <TeamEventRow event={event} />
            </div>
          ))}
        </div>
      ) : (
        <Empty className="p-6 sm:p-8">
          <EmptyHeader>
            <EmptyTitle>No Team events recorded yet</EmptyTitle>
            <EmptyDescription>
              Pokémon additions, movements, updates, evolutions, and lifecycle
              changes will appear here when they are recorded.
            </EmptyDescription>
          </EmptyHeader>
        </Empty>
      )}
    </MainlinePlaySectionCard>
  );
};
