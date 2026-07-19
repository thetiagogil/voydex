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
      variant="journal"
      className="pb-1"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <div className="grid grid-cols-2 gap-2.5 md:grid-cols-3 md:gap-3 lg:grid-cols-[minmax(14rem,1.25fr)_minmax(8rem,0.7fr)_minmax(10rem,0.9fr)_minmax(10rem,0.9fr)] xl:grid-cols-[minmax(18rem,1.25fr)_minmax(9rem,0.7fr)_minmax(12rem,0.9fr)_minmax(12rem,0.9fr)] xl:gap-4">
        <div className="col-span-2 md:col-span-3 lg:col-span-1">
          <InputGroup className="h-10!">
            <InputGroupAddon className="pl-2.5">
              <AppIcon icon={appIcons.actions.search} aria-hidden />
            </InputGroupAddon>
            <InputGroupInput
              id="plays-search"
              name="q"
              aria-label="Search plays"
              value={filters.query}
              onChange={(event) => {
                onQueryChange(event.currentTarget.value);
              }}
              placeholder="Play, game, or trainer"
            />
          </InputGroup>
        </div>

        <div>
          <SelectControl
            id="plays-status"
            name="status"
            ariaLabel="Filter plays by status"
            value={filters.status}
            onValueChange={onStatusChange}
            options={statusOptions}
            placeholder="All statuses"
            className="h-10! w-full px-3"
          />
        </div>

        <div>
          <SelectControl
            id="plays-game"
            name="game"
            ariaLabel="Filter plays by game"
            value={filters.game}
            onValueChange={onGameChange}
            options={gameOptions}
            placeholder="All games"
            className="h-10! w-full px-3"
          />
        </div>

        <div className="col-span-2 md:col-span-1">
          <SelectControl
            id="plays-sort"
            name="sort"
            ariaLabel="Sort plays"
            value={filters.sort}
            onValueChange={(value) => {
              onSortChange(value as PlayBrowseSort);
            }}
            options={sortOptions}
            placeholder="Recent activity"
            className="h-10! w-full px-3"
          />
        </div>
      </div>
    </BrowseFilterPanel>
  );
};
