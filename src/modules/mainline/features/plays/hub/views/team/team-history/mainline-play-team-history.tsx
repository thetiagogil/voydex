"use client";

import { useMemo, useState } from "react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamHistoryData } from "@/modules/mainline/features/plays/hub/types";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/utils/use-viewer-clock";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";

import {
  allTeamHistoryEventTypes,
  getFilteredTeamHistoryEvents,
  getTeamHistoryEventTypeOptions,
  groupTeamHistoryEventsByMonth,
  hasTeamHistoryFilters,
  type TeamHistoryFilters,
} from "./data/team-history-model";
import { TeamHistoryMonthSection } from "./sections/timeline/team-history-month";
import { TeamHistoryStart } from "./sections/timeline/team-history-start";
import { TeamHistoryToolbar } from "./sections/timeline/team-history-toolbar";

const initialFilters: TeamHistoryFilters = {
  eventType: allTeamHistoryEventTypes,
  query: "",
  sort: "newest",
};

const pluralizeMoments = (count: number) =>
  count === 1 ? "Team moment" : "Team moments";

/*
 * Team history: the Team-only projection of the Play's timeline, drawn with
 * History's grammar. Month groups, each month's moments between rules in one
 * card, one medallion per moment; the Play's start closes the full list.
 */
export const MainlinePlayTeamHistory = ({
  data,
}: {
  data: MainlinePlayTeamHistoryData;
}) => {
  const [filters, setFilters] = useState<TeamHistoryFilters>(initialFilters);
  const clock = useViewerClock();
  const eventTypeOptions = useMemo(
    () => getTeamHistoryEventTypeOptions(data.events, filters.query),
    [data.events, filters.query],
  );
  const months = useMemo(
    () =>
      groupTeamHistoryEventsByMonth(
        getFilteredTeamHistoryEvents(data.events, filters),
        clock,
      ),
    [data.events, filters, clock],
  );
  const shownCount = months.reduce(
    (count, month) => count + month.entries.length,
    0,
  );
  const totalCount = data.events.length;
  const startedOn = data.play.started_on;
  const startedOnLabel = formatPlayDate(startedOn, "");
  const hasFilters = hasTeamHistoryFilters(filters);
  const hasRecordedTeam =
    (data.play.active_team_count ?? 0) > 0 ||
    (data.play.reserve_team_count ?? 0) > 0 ||
    (data.play.historical_pokemon_count ?? 0) > 0;
  const start = hasFilters ? null : <TeamHistoryStart startedOn={startedOn} />;

  const updateFilter = <TKey extends keyof TeamHistoryFilters>(
    key: TKey,
    value: TeamHistoryFilters[TKey],
  ) => {
    setFilters((current) => ({ ...current, [key]: value }));
  };

  const clearFilters = () => {
    setFilters((current) => ({ ...initialFilters, sort: current.sort }));
  };

  return (
    <section
      aria-labelledby="team-history-heading"
      className="grid min-w-0 grid-cols-1"
    >
      <h2
        id="team-history-heading"
        className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]"
      >
        Team history
      </h2>
      <p className="text-ink-2 text-15 mt-1.5 font-semibold">
        {totalCount ? (
          <>
            <b className="text-ink font-extrabold tabular-nums">{totalCount}</b>{" "}
            {pluralizeMoments(totalCount)}
            {startedOnLabel ? ` since ${startedOnLabel}` : null}
          </>
        ) : (
          "Nothing recorded yet"
        )}
      </p>

      {totalCount ? (
        <>
          <TeamHistoryToolbar
            eventType={filters.eventType}
            eventTypeOptions={eventTypeOptions}
            onEventTypeChange={(value) => {
              updateFilter("eventType", value);
            }}
            onQueryChange={(value) => {
              updateFilter("query", value);
            }}
            onSortChange={(value) => {
              updateFilter("sort", value);
            }}
            query={filters.query}
            sort={filters.sort}
          />
          <p className="sr-only" aria-live="polite">
            {shownCount} {pluralizeMoments(shownCount)} shown
          </p>
        </>
      ) : null}

      <div className="mt-8 grid min-w-0 gap-8">
        {months.length ? (
          <>
            {filters.sort === "oldest" ? start : null}
            {months.map((month) => (
              <TeamHistoryMonthSection key={month.key} month={month} />
            ))}
            {filters.sort === "newest" ? start : null}
          </>
        ) : hasFilters ? (
          <EmptyState
            title="No matching moments"
            description="Nothing in this Team history matches the search and filter."
            action={
              <ClearFiltersButton variant="outline" onClick={clearFilters} />
            }
          />
        ) : (
          <EmptyState
            title={
              hasRecordedTeam
                ? "No Team moments recorded"
                : "No Team moments yet"
            }
            description={
              hasRecordedTeam
                ? "Additions, evolutions, form changes, replacements and retirements you record will appear here."
                : "Add Pokémon to your team and every change to it will be kept here."
            }
            action={
              data.play.play_id ? (
                <Button
                  render={
                    <Link
                      href={appRoutes.mainlinePlayTeam(data.play.play_id)}
                    />
                  }
                  nativeButton={false}
                  variant="outline"
                >
                  Open your team
                </Button>
              ) : undefined
            }
          />
        )}
      </div>
    </section>
  );
};
