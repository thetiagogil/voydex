"use client";

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
  onSortChange: (value: PlayHistorySort) => void;
  sort: PlayHistorySort;
};

const sortOptions = [
  { label: "Newest first", value: "newest" },
  { label: "Oldest first", value: "oldest" },
] as const;

/*
 * v3's History toolbar: the five filters with their counts, the hairline,
 * then the order. On phones the filters scroll sideways in one row.
 */
export const PlayHistoryToolbar = ({
  filter,
  filterOptions,
  onFilterChange,
  onSortChange,
  sort,
}: PlayHistoryToolbarProps) => {
  return (
    <Toolbar
      aria-label="Filter History"
      className="mt-5"
      search={
        <SegmentedControl
          ariaLabel="Show"
          className="no-scrollbar max-w-none flex-nowrap overflow-x-auto p-0.5 sm:flex-wrap sm:overflow-visible"
          onValueChange={onFilterChange}
          options={filterOptions}
          value={filter}
        />
      }
      trailing={
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
      }
    />
  );
};
