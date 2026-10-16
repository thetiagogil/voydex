"use client";

import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";

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
 * v3's History toolbar with a search in front: the search, the hairline, the
 * five filters with their counts, then the order. On phones the search takes
 * its own row and the filters scroll sideways in one row.
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
    <Toolbar
      aria-label="Filter History"
      className="mt-5"
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
      trailing={
        <>
          <SegmentedControl
            ariaLabel="Show"
            className="no-scrollbar max-w-full flex-nowrap overflow-x-auto p-0.5 sm:flex-wrap sm:overflow-visible"
            onValueChange={onFilterChange}
            options={filterOptions}
            value={filter}
          />
          <SelectControl
            id="play-history-sort"
            name="sort"
            ariaLabel="Sort History"
            value={sort}
            onValueChange={(value) => {
              onSortChange(value as PlayHistorySort);
            }}
            options={sortOptions}
            placeholder="Newest first"
            prefix="Sort"
            variant="ghost"
          />
        </>
      }
    />
  );
};
