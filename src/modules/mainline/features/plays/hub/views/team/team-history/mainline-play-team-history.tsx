"use client";

import { useMemo, useState } from "react";

import type { MainlinePlayTeamHistoryData } from "@/modules/mainline/features/plays/hub/types";

import {
  getFilteredTeamHistoryEvents,
  getTeamHistoryEventTypeOptions,
  type TeamHistoryFilters,
  type TeamHistorySort,
} from "./data/team-history-model";
import { TeamHistorySection } from "./sections/timeline/team-history-section";

const initialFilters: TeamHistoryFilters = {
  eventType: "",
  query: "",
  sort: "newest",
};

export const MainlinePlayTeamHistory = ({
  data,
}: {
  data: MainlinePlayTeamHistoryData;
}) => {
  const [filters, setFilters] = useState<TeamHistoryFilters>(initialFilters);
  const eventTypeOptions = useMemo(
    () => getTeamHistoryEventTypeOptions(data.events),
    [data.events],
  );
  const filteredEvents = useMemo(
    () => getFilteredTeamHistoryEvents(data.events, filters),
    [data.events, filters],
  );
  const hasRecordedTeam =
    (data.play.active_team_count ?? 0) > 0 ||
    (data.play.reserve_team_count ?? 0) > 0 ||
    (data.play.historical_pokemon_count ?? 0) > 0;

  const updateFilter = <TKey extends keyof TeamHistoryFilters>(
    key: TKey,
    value: TeamHistoryFilters[TKey],
  ) => {
    setFilters((current) => ({ ...current, [key]: value }));
  };

  return (
    <TeamHistorySection
      allEventCount={data.events.length}
      eventTypeOptions={eventTypeOptions}
      events={filteredEvents}
      filters={filters}
      hasRecordedTeam={hasRecordedTeam}
      onClearFilters={() => {
        setFilters((current) => ({
          ...initialFilters,
          sort: current.sort,
        }));
      }}
      onEventTypeChange={(value) => {
        updateFilter("eventType", value);
      }}
      onQueryChange={(value) => {
        updateFilter("query", value);
      }}
      onSortChange={(value: TeamHistorySort) => {
        updateFilter("sort", value);
      }}
    />
  );
};
