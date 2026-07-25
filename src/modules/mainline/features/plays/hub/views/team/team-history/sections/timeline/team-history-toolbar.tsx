"use client";

import type { TeamHistorySort } from "../../data/team-history-model";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";

type TeamHistoryToolbarProps = {
  eventCount: number;
  eventType: string;
  eventTypeOptions: Array<{ label: string; value: string }>;
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

export const TeamHistoryToolbar = ({
  eventCount,
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
      variant="journal"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <div className="grid gap-2.5 sm:grid-cols-2 lg:grid-cols-[minmax(16rem,1fr)_minmax(10rem,0.55fr)_minmax(9rem,0.45fr)] lg:items-center">
        <InputGroup className="h-10! sm:col-span-2 lg:col-span-1">
          <InputGroupAddon className="pl-2.5">
            <AppIcon icon={appIcons.actions.search} aria-hidden />
          </InputGroupAddon>
          <InputGroupInput
            id="team-history-search"
            name="q"
            aria-label="Search Team history"
            value={query}
            onChange={(event) => {
              onQueryChange(event.currentTarget.value);
            }}
            placeholder="Search Pokémon or event"
          />
        </InputGroup>

        <SelectControl
          id="team-history-type"
          name="eventType"
          ariaLabel="Filter Team history by event type"
          value={eventType}
          onValueChange={onEventTypeChange}
          options={eventTypeOptions}
          placeholder="All event types"
          className="h-10! w-full px-3"
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
          className="h-10! w-full px-3"
        />

        <p className="sr-only" aria-live="polite">
          {eventCount} {eventCount === 1 ? "event" : "events"}
        </p>
      </div>
    </BrowseFilterPanel>
  );
};
