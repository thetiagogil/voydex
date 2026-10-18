"use client";

import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

import type {
  PlayHistoryFilter,
  PlayHistoryFilterOption,
  PlayHistorySort,
} from "../../data/play-history-model";

type PlayHistoryToolbarProps = {
  filter: PlayHistoryFilter;
  filterOptions: PlayHistoryFilterOption[];
  onFilterChange: (value: PlayHistoryFilter) => void;
  onQueryChange: (value: string) => void;
  onSortChange: (value: PlayHistorySort) => void;
  query: string;
  sort: PlayHistorySort;
};

const sortOptions = [
  { label: "Newest first", value: "newest" },
  { label: "Oldest first", value: "oldest" },
] as const;

/*
 * History on the one list toolbar: the search and the order on the line, and
 * the five filters with their counts behind Filters.
 */
export const PlayHistoryToolbar = ({
  filter,
  filterOptions,
  onFilterChange,
  onQueryChange,
  onSortChange,
  query,
  sort,
}: PlayHistoryToolbarProps) => {
  return (
    <FilterToolbar
      query={query}
      ariaLabel="Filter History"
      className="mt-5"
      activeCount={filter === "all" ? 0 : 1}
      resultLabel="Show moments"
      render={
        <form
          onSubmit={(event) => {
            event.preventDefault();
          }}
        />
      }
      search={
        <SearchControl
          ariaLabel="Search History"
          onValueChange={onQueryChange}
          placeholder="Search moments"
          value={query}
        />
      }
      controls={(placement) => {
        const sortControl = (
          <SelectControl
            id={
              placement === "panel"
                ? "play-history-sort"
                : "play-history-sheet-sort"
            }
            name={placement === "panel" ? "sort" : undefined}
            ariaLabel="Sort History"
            value={sort}
            onValueChange={(value) => {
              onSortChange(value as PlayHistorySort);
            }}
            options={sortOptions}
            placeholder="Newest first"
            prefix={placement === "panel" ? "Sort" : undefined}
            variant="ghost"
          />
        );

        return placement === "panel" ? (
          sortControl
        ) : (
          <FilterSheetRow htmlFor="play-history-sheet-sort" label="Sort">
            {sortControl}
          </FilterSheetRow>
        );
      }}
      filters={(placement) => {
        const show = (
          <SegmentedControl
            variant="segment"
            selectedTone="soft"
            ariaLabel="Show"
            className="max-w-full"
            onValueChange={onFilterChange}
            options={filterOptions}
            value={filter}
          />
        );

        return placement === "panel" ? (
          show
        ) : (
          <FilterSheetRow label="Show">{show}</FilterSheetRow>
        );
      }}
    />
  );
};
