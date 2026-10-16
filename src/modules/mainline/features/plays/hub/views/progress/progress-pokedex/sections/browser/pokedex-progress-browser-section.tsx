"use client";

import { useCallback, useMemo, useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Toolbar } from "@/shared/components/toolbar";

import {
  filterPokedexEntries,
  getPokedexEntriesForBrowseScope,
  getPokedexEntryState,
  groupPokedexEntriesByNumberRange,
} from "../../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexScope,
  PokedexProgressFilter,
  PokedexProgressState,
  PokedexUpdateMode,
} from "../../types";
import { PokedexEntryScopeFilter } from "./pokedex-entry-scope-filter";
import { PokedexProgressEntrySection } from "./pokedex-progress-entry-section";

const INITIAL_VISIBLE_SECTION_COUNT = 1;

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

export const PokedexProgressBrowserSection = ({
  browseScopes,
  isSpeciesPending,
  onSpeciesBulkStateChange,
  onSpeciesStateChange,
  scope,
  stateBySpeciesId,
}: {
  browseScopes: MainlinePlayPokedexScope[];
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
  const [query, setQuery] = useState("");
  const [progressFilter, setProgressFilter] =
    useState<PokedexProgressFilter>("all");
  const [browseScopeId, setBrowseScopeId] = useState("all");
  const [updateMode, setUpdateMode] = useState<PokedexUpdateMode>("caught");
  const [visibleSectionCount, setVisibleSectionCount] = useState(
    INITIAL_VISIBLE_SECTION_COUNT,
  );
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
      progressFilter: "all",
      query,
      stateBySpeciesId,
    });
    const counts = { all: entries.length, caught: 0, missing: 0, seen: 0 };

    for (const entry of entries) {
      counts[getPokedexEntryState(entry, stateBySpeciesId)] += 1;
    }

    return counts;
  }, [query, scopedEntries, stateBySpeciesId]);
  const filteredEntries = useMemo(
    () =>
      filterPokedexEntries({
        entries: scopedEntries,
        progressFilter,
        query,
        stateBySpeciesId,
      }),
    [progressFilter, query, scopedEntries, stateBySpeciesId],
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
  const hasMoreSections = visibleSections.length < filteredSections.length;
  const hasFilters =
    Boolean(query.trim()) ||
    browseScopeId !== "all" ||
    progressFilter !== "all";

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
            {/* v3: one row, the marking mode at its end. */}
            <div className="flex items-center gap-2.5">
              <span className="text-ink-2 text-13 font-bold whitespace-nowrap">
                Tap marks as
              </span>
              <SegmentedControl
                ariaLabel="Marking mode"
                onValueChange={setUpdateMode}
                options={updateModeOptions}
                value={updateMode}
                variant="segment"
              />
            </div>
          </>
        }
      />

      <FilterResultsLine
        className="-mt-2"
        hasActiveFilters={hasFilters}
        noun="Pokémon"
        onClearFilters={resetFilters}
        shownCount={filteredEntries.length}
        totalCount={scope.entries.length}
      />

      {visibleSections.length ? (
        <>
          <div className="grid min-w-0 gap-8">
            {visibleSections.map((section) => (
              <PokedexProgressEntrySection
                key={section.id}
                isSpeciesPending={isSpeciesPending}
                onBulkStateChange={onSpeciesBulkStateChange}
                onSpeciesStateChange={onSpeciesStateChange}
                section={section}
                stateBySpeciesId={stateBySpeciesId}
                updateMode={updateMode}
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
