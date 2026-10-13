"use client";

import { useEffect, useMemo, useRef, useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

import type {
  CollectibleProgressFilter,
  CollectibleSort,
  MainlinePlayCollectibleEntry,
  MainlinePlayCollectibleGroup,
} from "../../types";
import {
  filterCollectibleEntries,
  getCollectibleAreaOptions,
  getCollectibleEntryState,
  groupCollectibleEntriesByArea,
  type CollectibleArea,
  type CollectibleAreaLevel,
  type CollectibleAreaSummary,
} from "../../utils/collectibles-progress-model";
import { CollectibleAreaIndex } from "./collectible-area-index";
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

/* Scroll an area to the top and move focus to its heading. */
const jumpToArea = (areaId: string) => {
  document.getElementById(areaId)?.scrollIntoView({ block: "start" });
  focusAreaHeading(areaId);
};

/*
 * The checklist: a quiet toolbar, then the areas. On wide screens an Areas
 * index sticks beside them; on phones and tablets it opens as a sheet. The
 * area summaries and the sort come from the view, which shares them with
 * the hero.
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
  const [area, setArea] = useState("all");
  const [isAreaSheetOpen, setIsAreaSheetOpen] = useState(false);
  const checklistRef = useRef<HTMLElement>(null);
  const sheetJumpTargetRef = useRef<string | null>(null);

  /* The sheet is for narrow screens; widening past lg closes it. */
  useEffect(() => {
    const wideQuery = window.matchMedia("(min-width: 64rem)");
    const closeOnWide = (event: MediaQueryListEvent) => {
      if (event.matches) {
        setIsAreaSheetOpen(false);
      }
    };

    wideQuery.addEventListener("change", closeOnWide);

    return () => wideQuery.removeEventListener("change", closeOnWide);
  }, []);
  const areaOptions = useMemo(
    () => getCollectibleAreaOptions({ areaLevel, entries: group.entries }),
    [areaLevel, group.entries],
  );
  /* Each progress pill counts what the area filter and the search leave. */
  const progressCounts = useMemo(() => {
    const entries = filterCollectibleEntries({
      area,
      areaLevel,
      entries: group.entries,
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
  }, [area, areaLevel, group.entries, query, stateByEntryId]);
  const filteredEntries = useMemo(
    () =>
      filterCollectibleEntries({
        area,
        areaLevel,
        entries: group.entries,
        progressFilter,
        query,
        stateByEntryId,
      }),
    [area, areaLevel, group.entries, progressFilter, query, stateByEntryId],
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
  const shownAreaIds = new Set(areas.map((shownArea) => shownArea.id));
  const hasAreaIndex = areaSummaries.length > 1;
  /* The sort only orders; it filters nothing, so Clear filters keeps it. */
  const hasFilters =
    Boolean(query.trim()) || progressFilter !== "all" || area !== "all";

  const showingLabel = `Showing ${filteredEntries.length} of ${group.entries.length}`;

  const resetFilters = () => {
    setQuery("");
    setProgressFilter("all");
    setArea("all");
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
      <Card
        size="sm"
        className="flex-row flex-wrap items-center gap-x-3 gap-y-2.5 p-2.5 sm:gap-x-3.5"
      >
        <BrowseFilterPanel
          variant="bare"
          className="contents"
          onSubmit={(event) => {
            event.preventDefault();
          }}
        >
          <SearchControl
            ariaLabel={`Search ${group.name}`}
            className="min-w-55 flex-[1_1_220px]"
            onValueChange={setQuery}
            placeholder="Search number or place"
            value={query}
          />
          <SegmentedControl
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
          <span
            aria-hidden
            className="bg-line my-2 hidden w-px self-stretch md:block"
          />
          <SelectControl
            ariaLabel="Filter by area"
            onValueChange={setArea}
            options={areaOptions}
            placeholder="All areas"
            value={area}
            variant="ghost"
          />
          <SelectControl
            ariaLabel="Sort collectibles"
            onValueChange={(value) => onSortChange(value as CollectibleSort)}
            options={sortOptions}
            placeholder="Game order"
            prefix="Sort"
            value={sort}
            variant="ghost"
          />
        </BrowseFilterPanel>
        <p className="text-ink-2 text-13 px-1 font-semibold">
          Tap one to mark it found
        </p>
        {hasAreaIndex ? (
          <Button
            type="button"
            size="sm"
            variant="outline"
            className="ml-auto lg:hidden"
            onClick={() => setIsAreaSheetOpen(true)}
          >
            <AppIcon icon={appIcons.product.location} inline="start" />
            Areas
          </Button>
        ) : null}
      </Card>

      <p className="sr-only" aria-live="polite">
        {hasFilters ? showingLabel : ""}
      </p>
      {hasFilters ? (
        <div className="flex min-h-8 flex-wrap items-center justify-between gap-x-3 gap-y-1">
          <p
            aria-hidden
            className="text-ink-2 text-14 font-semibold tabular-nums"
          >
            {showingLabel}
          </p>
          <ClearFiltersButton onClick={resetFilters} />
        </div>
      ) : null}

      <div
        className={cn(
          "mt-6 grid min-w-0 items-start gap-8",
          hasAreaIndex && "lg:grid-cols-[250px_minmax(0,1fr)]",
        )}
      >
        {hasAreaIndex ? (
          <nav
            aria-labelledby="collectible-area-index-label"
            className="bg-surface shadow-card sticky top-[calc(var(--play-dock-offset,0px)+12px)] hidden max-h-[calc(100dvh-var(--play-dock-offset,0px)-24px)] flex-col overflow-y-auto rounded-xl p-4 lg:flex"
          >
            <p
              id="collectible-area-index-label"
              className="text-ink-2 text-13 mb-2 px-2.5 font-bold"
            >
              Areas
            </p>
            <CollectibleAreaIndex
              areas={areaSummaries}
              onJump={jumpToArea}
              shownAreaIds={shownAreaIds}
            />
          </nav>
        ) : null}

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
                <ClearFiltersButton variant="outline" onClick={resetFilters} />
              ) : undefined
            }
          />
        )}
      </div>

      {hasAreaIndex ? (
        <Sheet
          open={isAreaSheetOpen}
          onOpenChange={setIsAreaSheetOpen}
          onOpenChangeComplete={(open) => {
            const areaId = sheetJumpTargetRef.current;

            if (!open && areaId) {
              sheetJumpTargetRef.current = null;
              jumpToArea(areaId);
            }
          }}
        >
          <SheetContent
            side="bottom"
            className="mx-auto max-h-[82dvh] max-w-140 gap-0 rounded-t-xl p-0 lg:hidden"
            finalFocus={() => !sheetJumpTargetRef.current}
          >
            <SheetHeader className="px-5 pt-6 pr-16 pb-2">
              <SheetTitle>Areas</SheetTitle>
              <SheetDescription className="sr-only">
                Jump to an area of {group.name}.
              </SheetDescription>
            </SheetHeader>
            <div className="min-h-0 flex-1 overflow-y-auto px-2.5 pb-6">
              <CollectibleAreaIndex
                areas={areaSummaries}
                onJump={(areaId) => {
                  sheetJumpTargetRef.current = areaId;
                  setIsAreaSheetOpen(false);
                }}
                shownAreaIds={shownAreaIds}
              />
            </div>
          </SheetContent>
        </Sheet>
      ) : null}
    </section>
  );
};
