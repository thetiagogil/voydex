"use client";

import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";

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
 * The toolbar card: search, one pill per event type, and the order. On phones
 * the pills scroll sideways in one row. The rule and Sort wrap together, and
 * a wrapped Sort keeps to the right, so the rule never stands alone.
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
    <BrowseFilterPanel
      aria-label="Filter Team history"
      className="mt-5 flex flex-wrap items-center gap-x-3.5 gap-y-2.5 p-2.5"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <SearchControl
        id="team-history-search"
        name="q"
        ariaLabel="Search Team history"
        value={query}
        onValueChange={onQueryChange}
        placeholder="Search Pokémon or moment"
        className="min-w-55 flex-[1_1_220px]"
      />

      <SegmentedControl
        ariaLabel="Show"
        className="no-scrollbar -m-1.5 w-[calc(100%+0.75rem)] max-w-none flex-nowrap overflow-x-auto p-1.5 sm:m-0 sm:w-auto sm:max-w-full sm:flex-wrap sm:overflow-visible sm:p-0"
        onValueChange={onEventTypeChange}
        options={eventTypeOptions}
        value={eventType}
      />

      <div className="flex items-center gap-3.5 self-stretch sm:ml-auto">
        <span
          aria-hidden
          className="bg-line my-2 hidden w-px self-stretch sm:block"
        />
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
      </div>
    </BrowseFilterPanel>
  );
};
