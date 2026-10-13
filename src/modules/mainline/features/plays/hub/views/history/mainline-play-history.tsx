"use client";

import { useMemo, useState } from "react";

import { AddNoteDialog } from "@/modules/mainline/features/plays/hub/components/add-note-dialog";
import { PlayStartRow } from "@/modules/mainline/features/plays/hub/components/play-start-row";
import { toPlayMomentContext } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayHistoryData } from "@/modules/mainline/features/plays/hub/types";
import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { useViewerClock } from "@/modules/mainline/features/plays/shared/utils/use-viewer-clock";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

import {
  getPlayHistoryFilterOptions,
  getShownPlayHistoryEvents,
  groupPlayHistoryEventsByMonth,
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
 */
export const MainlinePlayHistory = ({
  data,
  playId,
}: {
  data: MainlinePlayHistoryData;
  playId: string;
}) => {
  const [filter, setFilter] = useState<PlayHistoryFilter>("all");
  const [sort, setSort] = useState<PlayHistorySort>("newest");
  const clock = useViewerClock();
  const context = useMemo(
    () => toPlayMomentContext(data.context),
    [data.context],
  );
  const filterOptions = useMemo(
    () => getPlayHistoryFilterOptions(data.events),
    [data.events],
  );
  const months = useMemo(
    () =>
      groupPlayHistoryEventsByMonth(
        getShownPlayHistoryEvents(data.events, { filter, sort }),
        clock,
      ),
    [data.events, filter, sort, clock],
  );
  const shownCount = months.reduce(
    (count, month) => count + month.entries.length,
    0,
  );
  const totalCount = data.events.length;
  const startedOnLabel = formatPlayDate(data.play.started_on, "");
  /* Where the Play began belongs to the whole story, not to one filter. */
  const start =
    filter === "all" ? (
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
            onSortChange={setSort}
            sort={sort}
          />
          <p className="sr-only" aria-live="polite">
            {shownCount} {pluralizeMoments(shownCount)} shown
          </p>
        </>
      ) : null}

      <div className="mt-8 grid min-w-0 gap-8">
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
        ) : totalCount ? (
          <EmptyState
            title={emptyFilterTitles[filter]}
            description="Moments of this kind show here once you record them."
            action={
              <Button
                type="button"
                variant="outline"
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
