"use client";

import { useMemo, useState } from "react";

import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import { PlayStartRow } from "@/modules/mainline/features/plays/hub/components/play-start-row";
import { toPlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayHistoryData } from "@/modules/mainline/features/plays/hub/types";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/client/use-viewer-clock";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

import {
  getPlayHistoryFilterOptions,
  getShownPlayHistoryEvents,
  groupPlayHistoryEventsByMonth,
  searchPlayHistoryEvents,
  type PlayHistoryFilter,
  type PlayHistorySort,
} from "./data/play-history-model";
import { PlayHistoryMonthSection } from "./sections/timeline/play-history-month";
import { PlayHistoryToolbar } from "./sections/timeline/play-history-toolbar";

const pluralizeMoments = (count: number) =>
  count === 1 ? "moment" : "moments";

const emptyFilterTitles: Record<PlayHistoryFilter, string> = {
  all: "Nothing recorded yet",
  note: "No notes yet",
  play: "No Play moments yet",
  story: "No Story moments yet",
  team: "No Team moments yet",
};

/*
 * A Play's History (v3 `history`): every moment it kept, newest first, under
 * month headings, with where the Play began closing the list. Filters split
 * it into Story, Team, Notes and Play; Team is what Team history used to be.
 * The search narrows every filter, so their counts follow it.
 */
export const MainlinePlayHistory = ({
  data,
  playId,
}: {
  data: MainlinePlayHistoryData;
  playId: string;
}) => {
  const [query, setQuery] = useState("");
  const [filter, setFilter] = useState<PlayHistoryFilter>("all");
  const [sort, setSort] = useState<PlayHistorySort>("newest");
  const clock = useViewerClock();
  const context = useMemo(
    () => toPlayMomentContext(data.context),
    [data.context],
  );
  const searchedEvents = useMemo(
    () => searchPlayHistoryEvents(data.events, query),
    [data.events, query],
  );
  const filterOptions = useMemo(
    () => getPlayHistoryFilterOptions(searchedEvents),
    [searchedEvents],
  );
  const months = useMemo(
    () =>
      groupPlayHistoryEventsByMonth(
        getShownPlayHistoryEvents(searchedEvents, { filter, sort }),
        clock,
      ),
    [searchedEvents, filter, sort, clock],
  );
  const isSearching = Boolean(query.trim());
  /* The order alone filters nothing, so clearing keeps it. */
  const clearFilters = () => {
    setQuery("");
    setFilter("all");
  };
  const shownCount = months.reduce(
    (count, month) => count + month.entries.length,
    0,
  );
  const totalCount = data.events.length;
  const startedOnLabel = formatPlayDate(data.play.started_on, "");
  /* Where the Play began belongs to the whole story, not to one filter. */
  const start =
    filter === "all" && !isSearching ? (
      <PlayStartRow className="px-5 sm:px-7" startedOn={data.play.started_on} />
    ) : null;

  return (
    <section
      aria-labelledby="play-history-heading"
      className="grid min-w-0 grid-cols-1"
    >
      <PageHeader
        headingLevel="h2"
        headingId="play-history-heading"
        title="History"
        className="pt-0 sm:pt-0"
        description={
          totalCount ? (
            <>
              <b className="text-ink font-extrabold tabular-nums">
                {totalCount}
              </b>{" "}
              {pluralizeMoments(totalCount)}
              {startedOnLabel ? ` since ${startedOnLabel}` : null}
            </>
          ) : (
            "Nothing recorded yet"
          )
        }
        action={<AddNoteDialog playId={playId} size="sm" />}
      />

      {totalCount ? (
        <>
          <PlayHistoryToolbar
            filter={filter}
            filterOptions={filterOptions}
            onFilterChange={setFilter}
            onQueryChange={setQuery}
            onSortChange={setSort}
            query={query}
            sort={sort}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={isSearching || filter !== "all"}
            noun="moments"
            nounOne="moment"
            onClearFilters={clearFilters}
            shownCount={shownCount}
            totalCount={totalCount}
          />
        </>
      ) : null}

      <div className="mt-5 grid min-w-0 gap-8">
        {months.length ? (
          <>
            {sort === "oldest" ? start : null}
            {months.map((month) => (
              <PlayHistoryMonthSection
                key={month.key}
                context={context}
                month={month}
              />
            ))}
            {sort === "newest" ? start : null}
          </>
        ) : isSearching ? (
          <EmptyState
            title="No moments match"
            description="Try another word, or clear the search and filters."
            action={<ClearFiltersButton onClick={clearFilters} />}
          />
        ) : totalCount ? (
          <EmptyState
            title={emptyFilterTitles[filter]}
            description="Moments of this kind show here once you record them."
            action={
              <Button
                type="button"
                variant="secondary"
                onClick={() => setFilter("all")}
              >
                Show everything
              </Button>
            }
          />
        ) : (
          <>
            <EmptyState
              title="Nothing recorded yet"
              description="Milestones, team changes and notes you record are kept here, newest first."
              action={<AddNoteDialog playId={playId} />}
            />
            <PlayStartRow
              className="px-5 sm:px-7"
              startedOn={data.play.started_on}
            />
          </>
        )}
      </div>
    </section>
  );
};
