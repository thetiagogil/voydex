"use client";

import { useMemo, useRef, useState } from "react";

import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

import type {
  CollectibleProgressFilter,
  CollectibleSort,
  MainlinePlayCollectibleEntry,
  MainlinePlayCollectibleGroup,
} from "../../types";
import {
  filterCollectibleEntries,
  getCollectibleEntryState,
  groupCollectibleEntriesByArea,
  type CollectibleArea,
  type CollectibleAreaLevel,
  type CollectibleAreaSummary,
} from "../../utils/collectibles-progress-model";
import {
  CollectibleAreaSection,
  getCollectibleAreaHeadingId,
} from "./collectible-area-section";

const sortOptions = [
  { label: "Game order", value: "canonical" },
  { label: "Area A to Z", value: "location" },
] as const;

const focusAreaHeading = (areaId: string) => {
  document
    .getElementById(getCollectibleAreaHeadingId(areaId))
    ?.focus({ preventScroll: true });
};

/*
 * The checklist, as Pokédex's: a quiet toolbar (search, an area to show,
 * found or missing, the order), then the areas at full width, each with its
 * count. The area summaries and the sort come from the view, which shares
 * them with the page head.
 */
export const CollectibleEntriesSection = ({
  areaLevel,
  areaSummaries,
  group,
  isEntryPending,
  onAreaStateChange,
  onEntryToggle,
  onSortChange,
  sort,
  stateByEntryId,
}: {
  areaLevel: CollectibleAreaLevel;
  /* Every area of the group, in the chosen order. */
  areaSummaries: CollectibleAreaSummary[];
  group: MainlinePlayCollectibleGroup;
  isEntryPending: (entryId: number) => boolean;
  onAreaStateChange: (
    label: string,
    entries: MainlinePlayCollectibleEntry[],
    isCollected: boolean,
  ) => void;
  onEntryToggle: (entry: MainlinePlayCollectibleEntry) => void;
  onSortChange: (sort: CollectibleSort) => void;
  sort: CollectibleSort;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const [query, setQuery] = useState("");
  const [progressFilter, setProgressFilter] =
    useState<CollectibleProgressFilter>("all");
  /* The area to show, by id, or every area. */
  const [areaId, setAreaId] = useState("all");
  const checklistRef = useRef<HTMLElement>(null);

  const areaEntries = useMemo(
    () =>
      areaSummaries.find((summary) => summary.id === areaId)?.entries ??
      group.entries,
    [areaId, areaSummaries, group.entries],
  );
  const areaOptions = [
    { label: "All areas", value: "all" },
    ...areaSummaries.map((summary) => ({
      description: `${summary.foundCount} of ${summary.entries.length} found`,
      label: summary.label,
      value: summary.id,
    })),
  ];
  /* Each progress pill counts what the area and the search leave. */
  const progressCounts = useMemo(() => {
    const entries = filterCollectibleEntries({
      entries: areaEntries,
      progressFilter: "all",
      query,
      stateByEntryId,
    });
    const foundCount = entries.filter((entry) =>
      getCollectibleEntryState(entry, stateByEntryId),
    ).length;

    return {
      all: entries.length,
      collected: foundCount,
      missing: entries.length - foundCount,
    };
  }, [areaEntries, query, stateByEntryId]);
  const filteredEntries = useMemo(
    () =>
      filterCollectibleEntries({
        entries: areaEntries,
        progressFilter,
        query,
        stateByEntryId,
      }),
    [areaEntries, progressFilter, query, stateByEntryId],
  );
  const areas = useMemo(
    () =>
      groupCollectibleEntriesByArea({
        areaLevel,
        entries: filteredEntries,
        sort,
      }),
    [areaLevel, filteredEntries, sort],
  );
  const summaryByAreaId = new Map(
    areaSummaries.map((summary) => [summary.id, summary]),
  );
  const hasAreas = areaSummaries.length > 1;
  /* The sort only orders; it filters nothing, so Clear filters keeps it. */
  const hasFilters =
    Boolean(query.trim()) || progressFilter !== "all" || areaId !== "all";

  const resetFilters = () => {
    setQuery("");
    setProgressFilter("all");
    setAreaId("all");
  };

  /*
   * A bulk change can remove its own button, or, under Found or Missing,
   * the whole area. Focus moves first: to the area's heading, to the next
   * area still shown, or to the checklist.
   */
  const changeAreaState = (
    shownArea: CollectibleArea,
    isCollected: boolean,
  ) => {
    const leavesFilter =
      progressFilter === (isCollected ? "missing" : "collected");
    const areaIndex = areas.indexOf(shownArea);
    const focusArea = leavesFilter
      ? (areas[areaIndex + 1] ?? areas[areaIndex - 1])
      : shownArea;

    if (focusArea) {
      focusAreaHeading(focusArea.id);
    } else {
      checklistRef.current?.focus({ preventScroll: true });
    }

    onAreaStateChange(shownArea.label, shownArea.entries, isCollected);
  };

  return (
    <section
      ref={checklistRef}
      aria-label={`${group.name} checklist`}
      tabIndex={-1}
      className="grid min-w-0 grid-cols-1 gap-4 rounded-xs"
    >
      <FilterToolbar
        ariaLabel={`Filter ${group.name}`}
        activeCount={
          (progressFilter === "all" ? 0 : 1) + (areaId === "all" ? 0 : 1)
        }
        resultLabel={`Show ${group.name}`}
        render={
          <form
            onSubmit={(event) => {
              event.preventDefault();
            }}
          />
        }
        search={
          <SearchControl
            ariaLabel={`Search ${group.name}`}
            onValueChange={setQuery}
            placeholder="Search number or place"
            value={query}
          />
        }
        controls={(placement) => {
          const sortControl = (
            <SelectControl
              id={
                placement === "line"
                  ? "collectibles-sort"
                  : "collectibles-sheet-sort"
              }
              ariaLabel="Sort collectibles"
              onValueChange={(value) => onSortChange(value as CollectibleSort)}
              options={sortOptions}
              placeholder="Game order"
              prefix={placement === "line" ? "Sort" : undefined}
              value={sort}
              variant="ghost"
            />
          );

          return placement === "line" ? (
            sortControl
          ) : (
            <FilterSheetRow htmlFor="collectibles-sheet-sort" label="Sort">
              {sortControl}
            </FilterSheetRow>
          );
        }}
        filters={(placement) => {
          const area = hasAreas ? (
            <SelectControl
              id={
                placement === "line"
                  ? "collectibles-area"
                  : "collectibles-sheet-area"
              }
              ariaLabel="Show one area"
              className="w-48 min-w-0"
              onValueChange={setAreaId}
              options={areaOptions}
              placeholder="All areas"
              value={areaId}
              variant="ghost"
            />
          ) : null;
          const show = (
            <SegmentedControl
              variant="segment"
              selectedTone="soft"
              ariaLabel="Show"
              onValueChange={setProgressFilter}
              options={[
                { count: progressCounts.all, label: "All", value: "all" },
                {
                  count: progressCounts.collected,
                  label: "Found",
                  value: "collected",
                },
                {
                  count: progressCounts.missing,
                  label: "Missing",
                  value: "missing",
                },
              ]}
              value={progressFilter}
            />
          );

          return placement === "line" ? (
            <>
              {show}
              {area}
            </>
          ) : (
            <>
              <FilterSheetRow label="Show">{show}</FilterSheetRow>
              {area ? (
                <FilterSheetRow htmlFor="collectibles-sheet-area" label="Area">
                  {area}
                </FilterSheetRow>
              ) : null}
            </>
          );
        }}
      />

      <FilterResultsLine
        className="-mt-2"
        hasActiveFilters={hasFilters}
        noun={group.name}
        onClearFilters={resetFilters}
        shownCount={filteredEntries.length}
        totalCount={group.entries.length}
      />

      <div className="mt-2 min-w-0">
        {areas.length ? (
          <div className="grid min-w-0 gap-7.5">
            {areas.map((shownArea) => {
              const summary = summaryByAreaId.get(shownArea.id);

              return summary ? (
                <CollectibleAreaSection
                  key={shownArea.id}
                  area={shownArea}
                  areaLevel={areaLevel}
                  isEntryPending={isEntryPending}
                  onEntryToggle={onEntryToggle}
                  onStateChange={(isCollected) =>
                    changeAreaState(shownArea, isCollected)
                  }
                  stateByEntryId={stateByEntryId}
                  summary={summary}
                />
              ) : null;
            })}
          </div>
        ) : (
          <EmptyState
            title="Nothing to show"
            description={`No ${group.name} match these filters.`}
            action={
              hasFilters ? (
                <ClearFiltersButton onClick={resetFilters} />
              ) : undefined
            }
          />
        )}
      </div>
    </section>
  );
};
