"use client";

import { useMemo, useState } from "react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";

import type {
  CollectibleProgressFilter,
  CollectibleSort,
  MainlinePlayCollectibleEntry,
  MainlinePlayCollectibleGroup,
} from "../../types";
import {
  filterCollectibleEntries,
  getCollectibleLocationOptions,
  groupCollectibleEntriesByLocation,
} from "../../utils/collectibles-progress-model";
import { CollectibleLocationSection } from "./collectible-location-section";

const progressOptions = [
  { label: "All progress", value: "all" },
  { label: "Missing", value: "missing" },
  { label: "Collected", value: "collected" },
] as const;

const sortOptions = [
  { label: "Canonical order", value: "canonical" },
  { label: "Location order", value: "location" },
] as const;

export const CollectibleEntriesSection = ({
  group,
  isEntryPending,
  onEntryToggle,
  onSectionStateChange,
  stateByEntryId,
}: {
  group: MainlinePlayCollectibleGroup;
  isEntryPending: (entryId: number) => boolean;
  onEntryToggle: (entry: MainlinePlayCollectibleEntry) => void;
  onSectionStateChange: (
    entries: MainlinePlayCollectibleEntry[],
    isCollected: boolean,
  ) => void;
  stateByEntryId: ReadonlyMap<number, boolean>;
}) => {
  const [query, setQuery] = useState("");
  const [progressFilter, setProgressFilter] =
    useState<CollectibleProgressFilter>("all");
  const [location, setLocation] = useState("all");
  const [sort, setSort] = useState<CollectibleSort>("canonical");
  const locationOptions = useMemo(
    () => getCollectibleLocationOptions(group.entries),
    [group.entries],
  );
  const filteredEntries = useMemo(
    () =>
      filterCollectibleEntries({
        entries: group.entries,
        location,
        progressFilter,
        query,
        stateByEntryId,
      }),
    [group.entries, location, progressFilter, query, stateByEntryId],
  );
  const sections = useMemo(
    () =>
      groupCollectibleEntriesByLocation({
        entries: filteredEntries,
        sort,
      }),
    [filteredEntries, sort],
  );
  const hasFilters =
    Boolean(query.trim()) ||
    progressFilter !== "all" ||
    location !== "all" ||
    sort !== "canonical";

  const resetFilters = () => {
    setQuery("");
    setProgressFilter("all");
    setLocation("all");
    setSort("canonical");
  };

  return (
    <MainlinePlaySectionCard
      title="Collectible entries"
      description={`Browse and update entries in ${group.name}.`}
      contentClassName="grid gap-4 px-0 pt-3 pb-0"
      showSeparator
    >
      <BrowseFilterPanel
        variant="journal"
        className="grid-cols-1 gap-2.5 px-3 sm:grid-cols-2 md:grid-cols-3 xl:grid-cols-[minmax(8rem,1fr)_11rem_13rem_12rem] xl:gap-3"
        onSubmit={(event) => event.preventDefault()}
      >
        <SearchControl
          ariaLabel={`Search ${group.name}`}
          className="sm:col-span-2 md:col-span-3 xl:col-span-1"
          onValueChange={setQuery}
          placeholder="Search collectible or location"
          value={query}
        />
        <SelectControl
          ariaLabel="Filter collectible progress"
          className="w-full"
          onValueChange={(value) =>
            setProgressFilter(value as CollectibleProgressFilter)
          }
          options={progressOptions}
          placeholder="All progress"
          value={progressFilter}
        />
        <SelectControl
          ariaLabel="Filter collectible location"
          className="w-full"
          onValueChange={setLocation}
          options={locationOptions}
          placeholder="All locations"
          value={location}
        />
        <SelectControl
          ariaLabel="Sort collectibles"
          className="w-full"
          onValueChange={(value) => setSort(value as CollectibleSort)}
          options={sortOptions}
          placeholder="Canonical order"
          value={sort}
        />
      </BrowseFilterPanel>

      <div className="flex min-h-8 items-center justify-between gap-3 px-4">
        <p
          className="text-muted-foreground text-sm leading-6"
          aria-live="polite"
        >
          Showing {filteredEntries.length} of {group.entries.length} entries
        </p>
        {hasFilters ? <ClearFiltersButton onClick={resetFilters} /> : null}
      </div>

      {sections.length ? (
        <div className="grid min-w-0">
          {sections.map((section) => (
            <CollectibleLocationSection
              key={section.id}
              entries={section.entries}
              isEntryPending={isEntryPending}
              label={section.label}
              onEntryToggle={onEntryToggle}
              onSectionStateChange={onSectionStateChange}
              stateByEntryId={stateByEntryId}
            />
          ))}
        </div>
      ) : (
        <div className="px-3 pb-3">
          <EmptyState
            title="No matching collectibles"
            description={`No entries in ${group.name} match the current filters.`}
            action={
              hasFilters ? (
                <ClearFiltersButton variant="outline" onClick={resetFilters} />
              ) : undefined
            }
          />
        </div>
      )}
    </MainlinePlaySectionCard>
  );
};
