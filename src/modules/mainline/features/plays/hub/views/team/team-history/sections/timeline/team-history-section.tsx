"use client";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import {
  Empty,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";

import type {
  TeamHistoryFilters,
  TeamHistorySort,
} from "../../data/team-history-model";
import { getTeamHistoryEventKey } from "../../data/team-history-model";
import { TeamHistoryRow } from "./team-history-row";
import { TeamHistoryToolbar } from "./team-history-toolbar";

type TeamHistorySectionProps = {
  allEventCount: number;
  eventTypeOptions: Array<{ label: string; value: string }>;
  events: MainlinePlayTimelineEvent[];
  filters: TeamHistoryFilters;
  hasRecordedTeam: boolean;
  onClearFilters: () => void;
  onEventTypeChange: (value: string) => void;
  onQueryChange: (value: string) => void;
  onSortChange: (value: TeamHistorySort) => void;
};

export const TeamHistorySection = ({
  allEventCount,
  eventTypeOptions,
  events,
  filters,
  hasRecordedTeam,
  onClearFilters,
  onEventTypeChange,
  onQueryChange,
  onSortChange,
}: TeamHistorySectionProps) => {
  const hasFilters = Boolean(filters.query || filters.eventType);

  return (
    <MainlinePlaySectionCard
      title="Team History"
      description="Follow additions, evolutions, form changes, replacements, and retirements."
      contentClassName="grid gap-0 py-0"
      showSeparator
    >
      <div className="border-line border-b py-3">
        <TeamHistoryToolbar
          eventCount={events.length}
          eventType={filters.eventType}
          eventTypeOptions={eventTypeOptions}
          onEventTypeChange={onEventTypeChange}
          onQueryChange={onQueryChange}
          onSortChange={onSortChange}
          query={filters.query}
          sort={filters.sort}
        />
      </div>

      {events.length ? (
        <ol className="relative grid min-w-0 pl-2">
          <span
            className="bg-border absolute top-8 bottom-8 left-2 w-px"
            aria-hidden
          />
          {events.map((event, index) => (
            <TeamHistoryRow
              key={getTeamHistoryEventKey(event, index)}
              event={event}
            />
          ))}
        </ol>
      ) : (
        <Empty className="border-line min-h-52 rounded-lg border px-6 py-10">
          <EmptyHeader>
            <EmptyTitle>
              {hasFilters
                ? "No Team events match these filters"
                : hasRecordedTeam || allEventCount > 0
                  ? "No Team history recorded in Voydex"
                  : "No Team events yet"}
            </EmptyTitle>
            <EmptyDescription>
              {hasFilters
                ? "Try another Pokémon, event, or clear the current filters."
                : "Recorded additions, evolutions, form changes, replacements, and retirements will appear here."}
            </EmptyDescription>
          </EmptyHeader>
          {hasFilters ? (
            <ClearFiltersButton variant="outline" onClick={onClearFilters} />
          ) : null}
        </Empty>
      )}
    </MainlinePlaySectionCard>
  );
};
