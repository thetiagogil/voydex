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
              placement === "line"
                ? "play-history-sort"
                : "play-history-sheet-sort"
            }
            name={placement === "line" ? "sort" : undefined}
            ariaLabel="Sort History"
            value={sort}
            onValueChange={(value) => {
              onSortChange(value as PlayHistorySort);
            }}
            options={sortOptions}
            placeholder="Newest first"
            prefix={placement === "line" ? "Sort" : undefined}
            variant="ghost"
          />
        );

        return placement === "line" ? (
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

        return placement === "line" ? (
          show
        ) : (
          <FilterSheetRow label="Show">{show}</FilterSheetRow>
        );
      }}
    />
  );
};
