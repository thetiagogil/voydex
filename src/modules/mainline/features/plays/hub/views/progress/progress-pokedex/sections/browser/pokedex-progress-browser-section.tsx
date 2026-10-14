"use client";

import { useCallback, useMemo, useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Toolbar } from "@/shared/components/toolbar";
import { useIsMobile } from "@/shared/hooks/use-mobile";

import {
  filterPokedexEntries,
  getPokedexEntriesForBrowseScope,
  getPokedexEntryState,
  groupPokedexEntriesByNumberRange,
} from "../../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexScope,
  PokedexInclusionFilter,
  PokedexProgressFilter,
  PokedexProgressState,
  PokedexUpdateMode,
  PokedexViewMode,
} from "../../types";
import { PokedexEntryScopeFilter } from "./pokedex-entry-scope-filter";
import { PokedexProgressEntrySection } from "./pokedex-progress-entry-section";

const INITIAL_VISIBLE_SECTION_COUNT = 1;

const inclusionOptions = [
  { label: "All entries", value: "all" },
  { label: "Required", value: "required" },
  { label: "Optional", value: "optional" },
] as const;

const updateModeOptions = [
  {
    icon: <AppIcon icon={appIcons.product.caught} aria-hidden />,
    label: "Caught",
    value: "caught",
  },
  {
    icon: <AppIcon icon={appIcons.product.seen} aria-hidden />,
    label: "Seen",
    value: "seen",
  },
] as const;

const viewModeOptions = [
  {
    icon: <AppIcon icon={appIcons.views.display.grid} aria-hidden />,
    label: "Grid",
    value: "grid",
  },
  {
    icon: <AppIcon icon={appIcons.views.display.list} aria-hidden />,
    label: "List",
    value: "list",
  },
] as const;

export const PokedexProgressBrowserSection = ({
  browseScopes,
  versionGroupSlug,
  isSpeciesPending,
  onSpeciesBulkStateChange,
  onSpeciesStateChange,
  scope,
  stateBySpeciesId,
}: {
  browseScopes: MainlinePlayPokedexScope[];
  versionGroupSlug: string;
  isSpeciesPending: (speciesId: number) => boolean;
  onSpeciesBulkStateChange: (
    speciesIds: number[],
    state: PokedexProgressState,
  ) => void;
  onSpeciesStateChange: (
    speciesId: number,
    state: PokedexProgressState,
  ) => void;
  scope: MainlinePlayPokedexScope;
  stateBySpeciesId: ReadonlyMap<number, PokedexProgressState>;
}) => {
  const isMobile = useIsMobile();
  const [query, setQuery] = useState("");
  const [progressFilter, setProgressFilter] =
    useState<PokedexProgressFilter>("all");
  const [inclusionFilter, setInclusionFilter] =
    useState<PokedexInclusionFilter>("all");
  const [browseScopeId, setBrowseScopeId] = useState("all");
  const [updateMode, setUpdateMode] = useState<PokedexUpdateMode>("caught");
  const [preferredView, setPreferredView] = useState<PokedexViewMode | null>(
    null,
  );
  const [visibleSectionCount, setVisibleSectionCount] = useState(
    INITIAL_VISIBLE_SECTION_COUNT,
  );
  const viewMode = preferredView ?? (isMobile ? "list" : "grid");
  const browseScope =
    browseScopes.find((candidate) => String(candidate.id) === browseScopeId) ??
    null;
  const scopedEntries = useMemo(
    () =>
      getPokedexEntriesForBrowseScope({
        browseScope,
        entries: scope.entries,
      }),
    [browseScope, scope.entries],
  );
  /* Each progress pill counts what the other filters and the search leave. */
  const progressCounts = useMemo(() => {
    const entries = filterPokedexEntries({
      entries: scopedEntries,
      inclusionFilter,
      progressFilter: "all",
      query,
      stateBySpeciesId,
    });
    const counts = { all: entries.length, caught: 0, missing: 0, seen: 0 };

    for (const entry of entries) {
      counts[getPokedexEntryState(entry, stateBySpeciesId)] += 1;
    }

    return counts;
  }, [inclusionFilter, query, scopedEntries, stateBySpeciesId]);
  const filteredEntries = useMemo(
    () =>
      filterPokedexEntries({
        entries: scopedEntries,
        inclusionFilter,
        progressFilter,
        query,
        stateBySpeciesId,
      }),
    [inclusionFilter, progressFilter, query, scopedEntries, stateBySpeciesId],
  );
  const maxPokedexNumber = useMemo(
    () =>
      scope.entries.reduce(
        (currentMaximum, entry) =>
          Math.max(currentMaximum, entry.pokedexNumber),
        0,
      ),
    [scope.entries],
  );
  const filteredSections = useMemo(
    () =>
      groupPokedexEntriesByNumberRange({
        entries: filteredEntries,
        maxPokedexNumber,
      }),
    [filteredEntries, maxPokedexNumber],
  );
  const visibleSections = filteredSections.slice(0, visibleSectionCount);
  const visibleEntryCount = visibleSections.reduce(
    (count, section) => count + section.entries.length,
    0,
  );
  const hasMoreSections = visibleSections.length < filteredSections.length;
  const hasFilters =
    Boolean(query.trim()) ||
    browseScopeId !== "all" ||
    progressFilter !== "all" ||
    inclusionFilter !== "all";

  const resetVisibleSections = () => {
    setVisibleSectionCount(INITIAL_VISIBLE_SECTION_COUNT);
  };

  const loadNextSection = useCallback(() => {
    setVisibleSectionCount((currentCount) =>
      Math.min(currentCount + 1, filteredSections.length),
    );
  }, [filteredSections.length]);

  const resetFilters = () => {
    setQuery("");
    setBrowseScopeId("all");
    setProgressFilter("all");
    setInclusionFilter("all");
    resetVisibleSections();
  };

  return (
    <section
      aria-label="Pokédex entries"
      className="grid min-w-0 grid-cols-1 gap-4"
    >
      <Toolbar
        aria-label={`Filter ${scope.name}`}
        render={
          <form
            onSubmit={(event) => {
              event.preventDefault();
            }}
          />
        }
        search={
          <SearchControl
            ariaLabel={`Search ${scope.name}`}
            value={query}
            onValueChange={(value) => {
              setQuery(value);
              resetVisibleSections();
            }}
            placeholder="Search name or number"
          />
        }
        trailing={
          <>
            <SegmentedControl
              ariaLabel="Filter by progress"
              onValueChange={(value) => {
                setProgressFilter(value);
                resetVisibleSections();
              }}
              options={[
                { count: progressCounts.all, label: "All", value: "all" },
                {
                  count: progressCounts.caught,
                  label: "Caught",
                  value: "caught",
                },
                { count: progressCounts.seen, label: "Seen", value: "seen" },
                {
                  count: progressCounts.missing,
                  label: "Missing",
                  value: "missing",
                },
              ]}
              value={progressFilter}
            />
            {browseScopes.length > 0 ? (
              <PokedexEntryScopeFilter
                completionScopeName={scope.name}
                onValueChange={(value) => {
                  setBrowseScopeId(value);
                  resetVisibleSections();
                }}
                scopes={browseScopes}
                value={browseScopeId}
              />
            ) : null}
            <SelectControl
              ariaLabel="Filter Pokédex completion requirement"
              className="w-40"
              onValueChange={(value) => {
                setInclusionFilter(value as PokedexInclusionFilter);
                resetVisibleSections();
              }}
              options={inclusionOptions}
              placeholder="All entries"
              value={inclusionFilter}
            />
          </>
        }
      >
        <div className="flex flex-wrap items-center gap-2.5">
          <span className="text-ink-2 text-13 font-bold">Tap marks as</span>
          <SegmentedControl
            ariaLabel="Marking mode"
            onValueChange={setUpdateMode}
            options={updateModeOptions}
            value={updateMode}
            variant="segment"
          />
          <SegmentedControl
            ariaLabel="Pokédex display"
            onValueChange={setPreferredView}
            options={viewModeOptions}
            value={viewMode}
            variant="segment"
          />
        </div>
      </Toolbar>

      <div className="flex min-h-8 items-center justify-between gap-3">
        <p className="text-ink-2 text-14 font-semibold" aria-live="polite">
          Showing {visibleEntryCount} of {filteredEntries.length} entries
        </p>

        {hasFilters ? <ClearFiltersButton onClick={resetFilters} /> : null}
      </div>

      {visibleSections.length ? (
        <>
          <div className="grid min-w-0 gap-8">
            {visibleSections.map((section) => (
              <PokedexProgressEntrySection
                key={section.id}
                versionGroupSlug={versionGroupSlug}
                isSpeciesPending={isSpeciesPending}
                onBulkStateChange={onSpeciesBulkStateChange}
                onSpeciesStateChange={onSpeciesStateChange}
                section={section}
                stateBySpeciesId={stateBySpeciesId}
                updateMode={updateMode}
                viewMode={viewMode}
              />
            ))}
          </div>

          {hasMoreSections ? (
            <LoadMoreTrigger
              label="Show next 60 Pokémon"
              onLoadMore={loadNextSection}
            />
          ) : null}
        </>
      ) : (
        <EmptyState
          title="No matching Pokémon"
          description={`No entries in ${scope.name} match the current filters.`}
          action={
            hasFilters ? (
              <ClearFiltersButton variant="outline" onClick={resetFilters} />
            ) : undefined
          }
        />
      )}
    </section>
  );
};
