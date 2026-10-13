"use client";

import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";

import type {
  TeamHistoryEventTypeOption,
  TeamHistorySort,
} from "../../data/team-history-model";

type TeamHistoryToolbarProps = {
  eventType: string;
  eventTypeOptions: TeamHistoryEventTypeOption[];
  onEventTypeChange: (value: string) => void;
  onQueryChange: (value: string) => void;
  onSortChange: (value: TeamHistorySort) => void;
  query: string;
  sort: TeamHistorySort;
};

const sortOptions = [
  { label: "Newest first", value: "newest" },
  { label: "Oldest first", value: "oldest" },
] as const;

/*
 * The toolbar: search, the order after the hairline, then one pill per event
 * type. On phones the pills scroll sideways in one row.
 */
export const TeamHistoryToolbar = ({
  eventType,
  eventTypeOptions,
  onEventTypeChange,
  onQueryChange,
  onSortChange,
  query,
  sort,
}: TeamHistoryToolbarProps) => {
  return (
    <Toolbar
      aria-label="Filter Team history"
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
          id="team-history-search"
          name="q"
          ariaLabel="Search Team history"
          value={query}
          onValueChange={onQueryChange}
          placeholder="Search Pokémon or moment"
        />
      }
      trailing={
        <SelectControl
          id="team-history-sort"
          name="sort"
          ariaLabel="Sort Team history"
          value={sort}
          onValueChange={(value) => {
            onSortChange(value as TeamHistorySort);
          }}
          options={sortOptions}
          placeholder="Newest first"
          prefix="Sort"
          variant="ghost"
        />
      }
    >
      <SegmentedControl
        ariaLabel="Show"
        className="no-scrollbar w-full max-w-none flex-nowrap overflow-x-auto p-0.5 sm:flex-wrap sm:overflow-visible"
        onValueChange={onEventTypeChange}
        options={eventTypeOptions}
        value={eventType}
      />
    </Toolbar>
  );
};
