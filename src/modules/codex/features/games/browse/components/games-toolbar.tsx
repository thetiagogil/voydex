"use client";

import type { GamesSortOrder } from "@/modules/codex/features/games/browse/data/games-browse-model";
import type {
  GameType,
  GamesPageFilters,
  Generation,
  Region,
} from "@/modules/reference/types";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Card } from "@/shared/components/ui/card";

type GamesToolbarProps = {
  filters: GamesPageFilters;
  gameTypes: GameType[];
  generations: Generation[];
  onFilterChange: <FilterKey extends keyof GamesPageFilters>(
    key: FilterKey,
    value: GamesPageFilters[FilterKey],
  ) => void;
  onSortOrderChange: (sortOrder: GamesSortOrder) => void;
  regions: Region[];
  sortOrder: GamesSortOrder;
};

const sortOptions = [
  { label: "Oldest first", value: "oldest" },
  { label: "Newest first", value: "newest" },
] satisfies { label: string; value: GamesSortOrder }[];

const isGamesSortOrder = (value: string): value is GamesSortOrder => {
  return sortOptions.some((option) => option.value === value);
};

/*
 * v3's toolbar: the search with the quiet selects beside it, and the game
 * kinds as pills on their own row. On phones the pills come straight after
 * the search and scroll sideways, fading at the edge to show there is more.
 */
export const GamesToolbar = ({
  filters,
  gameTypes,
  generations,
  onFilterChange,
  onSortOrderChange,
  regions,
  sortOrder,
}: GamesToolbarProps) => {
  return (
    <Card
      size="sm"
      className="mt-5 flex-row flex-wrap items-center gap-x-3.5 gap-y-2.5 p-2.5"
    >
      <BrowseFilterPanel
        variant="bare"
        className="contents"
        onSubmit={(event) => {
          event.preventDefault();
        }}
      >
        <SearchControl
          name="q"
          ariaLabel="Search games"
          value={filters.query}
          onValueChange={(query) => {
            onFilterChange("query", query);
          }}
          placeholder="Search a game, region or year"
          className="min-w-55 flex-[1_1_220px]"
        />
        <div className="order-3 flex min-w-0 flex-wrap items-center gap-1 sm:order-none">
          <SelectControl
            name="generation"
            ariaLabel="Filter by generation"
            variant="ghost"
            size="sm"
            value={filters.generation}
            onValueChange={(generation) => {
              onFilterChange("generation", generation);
            }}
            options={[
              { label: "All generations", value: "" },
              ...generations.map((generation) => ({
                label: generation.name,
                value: generation.slug,
              })),
            ]}
            placeholder="All generations"
          />
          <SelectControl
            name="region"
            ariaLabel="Filter by region"
            variant="ghost"
            size="sm"
            value={filters.region}
            onValueChange={(region) => {
              onFilterChange("region", region);
            }}
            options={[
              { label: "All regions", value: "" },
              ...regions.map((region) => ({
                label: region.name,
                value: region.slug,
              })),
            ]}
            placeholder="All regions"
          />
          <span
            aria-hidden
            className="bg-line mx-1 my-2 hidden w-px self-stretch sm:block"
          />
          <SelectControl
            ariaLabel="Sort games"
            variant="ghost"
            size="sm"
            prefix="Sort"
            value={sortOrder}
            onValueChange={(value) => {
              if (isGamesSortOrder(value)) {
                onSortOrderChange(value);
              }
            }}
            options={sortOptions}
            placeholder="Oldest first"
          />
        </div>
        <SegmentedControl
          ariaLabel="Filter by kind of game"
          className="no-scrollbar order-2 -m-1 w-[calc(100%+0.5rem)] flex-nowrap overflow-x-auto [mask-image:linear-gradient(90deg,black_calc(100%-1.5rem),transparent)] p-1 pr-6 sm:order-none sm:flex-wrap sm:overflow-visible sm:[mask-image:none] sm:p-1"
          onValueChange={(gameType) => {
            onFilterChange("gameType", gameType);
          }}
          options={[
            { label: "All games", value: "" },
            ...gameTypes.map((gameType) => ({
              label: gameType.name,
              value: gameType.slug,
            })),
          ]}
          value={filters.gameType}
        />
      </BrowseFilterPanel>
    </Card>
  );
};
