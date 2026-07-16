"use client";

import type {
  PlayBrowseFilters,
  PlayBrowseOption,
  PlayBrowseSort,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";

type PlaysFilterFormProps = {
  filters: PlayBrowseFilters;
  games: PlayBrowseOption[];
  onGameChange: (game: string) => void;
  onQueryChange: (query: string) => void;
  onSortChange: (sort: PlayBrowseSort) => void;
  onStatusChange: (status: string) => void;
  statuses: PlayBrowseOption[];
};

const sortOptions = [
  { label: "Recent activity", value: "recent" },
  { label: "Recently created", value: "created" },
  { label: "Play name", value: "name" },
  { label: "Game", value: "game" },
  { label: "Started date", value: "started" },
] satisfies PlayBrowseOption[];

export const PlaysFilterForm = ({
  filters,
  games,
  onGameChange,
  onQueryChange,
  onSortChange,
  onStatusChange,
  statuses,
}: PlaysFilterFormProps) => {
  const statusOptions = [{ label: "All statuses", value: "" }, ...statuses];
  const gameOptions = [{ label: "All games", value: "" }, ...games];

  return (
    <BrowseFilterPanel
      className="lg:grid-cols-[minmax(18rem,1fr)_auto_auto_auto]"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <InputGroup className="flex-1">
        <InputGroupAddon>
          <AppIcon icon={appIcons.actions.search} aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          value={filters.query}
          onChange={(event) => {
            onQueryChange(event.currentTarget.value);
          }}
          placeholder="Search plays, games, or trainers"
          aria-label="Search plays"
        />
      </InputGroup>
      <SelectControl
        name="status"
        ariaLabel="Filter plays by status"
        value={filters.status}
        onValueChange={onStatusChange}
        options={statusOptions}
        placeholder="All statuses"
        className="w-full lg:w-40"
      />
      <SelectControl
        name="game"
        ariaLabel="Filter plays by game"
        value={filters.game}
        onValueChange={onGameChange}
        options={gameOptions}
        placeholder="All games"
        className="w-full lg:w-52"
      />
      <SelectControl
        name="sort"
        ariaLabel="Sort plays"
        value={filters.sort}
        onValueChange={(value) => {
          onSortChange(value as PlayBrowseSort);
        }}
        options={sortOptions}
        placeholder="Recent activity"
        className="w-full lg:w-44"
      />
    </BrowseFilterPanel>
  );
};
