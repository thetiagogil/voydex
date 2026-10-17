"use client";

import {
  countGamesByKind,
  type GamesBrowseFilters,
  type GamesGroupBy,
  type GamesSortOrder,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import {
  gameKindLabels,
  gameKinds,
  type GameKind,
} from "@/modules/reference/features/games/domain/game-kinds";
import type { GameCard } from "@/modules/reference/types";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";

type GamesToolbarProps = {
  filters: GamesBrowseFilters;
  games: GameCard[];
  groupBy: GamesGroupBy;
  onFilterChange: <FilterKey extends keyof GamesBrowseFilters>(
    key: FilterKey,
    value: GamesBrowseFilters[FilterKey],
  ) => void;
  onGroupByChange: (groupBy: GamesGroupBy) => void;
  onSortOrderChange: (sortOrder: GamesSortOrder) => void;
  sortOrder: GamesSortOrder;
};

/* The Kind menu's "every game", as a select value. */
const ALL_KINDS = "all";

const groupByOptions = [
  { label: "Generation", value: "generation" },
  { label: "Region", value: "region" },
] satisfies { label: string; value: GamesGroupBy }[];

const sortOptions = [
  { label: "Oldest first", value: "oldest" },
  { label: "Newest first", value: "newest" },
] satisfies { label: string; value: GamesSortOrder }[];

const isGameKind = (value: string): value is GameKind => {
  return (gameKinds as readonly string[]).includes(value);
};

/*
 * The games toolbar, one line on wide screens: the search, then the kind of
 * game (a filter), how the shelf is grouped, and its order, each a compact
 * menu in its own group: grouping arranges, it doesn't sort. Phones put the menus under the search.
 */
export const GamesToolbar = ({
  filters,
  games,
  groupBy,
  onFilterChange,
  onGroupByChange,
  onSortOrderChange,
  sortOrder,
}: GamesToolbarProps) => {
  const kindCounts = countGamesByKind(games);
  const kindOptions = [
    { label: "All games", value: ALL_KINDS },
    ...gameKinds.flatMap((kind) => {
      const count = kindCounts.get(kind) ?? 0;

      return count
        ? [{ label: `${gameKindLabels[kind]} (${count})`, value: kind }]
        : [];
    }),
  ];

  return (
    <Toolbar
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
          name="q"
          ariaLabel="Search games"
          value={filters.query}
          onValueChange={(query) => {
            onFilterChange("query", query);
          }}
          placeholder="Search a game, region or year"
        />
      }
      trailing={
        <>
          <SelectControl
            ariaLabel="Kind of game"
            variant="ghost"
            size="sm"
            prefix="Kind"
            value={filters.kind || ALL_KINDS}
            onValueChange={(value) => {
              onFilterChange("kind", isGameKind(value) ? value : "");
            }}
            options={kindOptions}
            placeholder="All games"
          />
          <SelectControl
            ariaLabel="Group games by"
            variant="ghost"
            size="sm"
            prefix="Group"
            value={groupBy}
            onValueChange={(value) => {
              onGroupByChange(value === "region" ? "region" : "generation");
            }}
            options={groupByOptions}
            placeholder="Generation"
          />
          <SelectControl
            ariaLabel="Sort games"
            variant="ghost"
            size="sm"
            prefix="Sort"
            value={sortOrder}
            onValueChange={(value) => {
              onSortOrderChange(value === "newest" ? "newest" : "oldest");
            }}
            options={sortOptions}
            placeholder="Oldest first"
          />
        </>
      }
    />
  );
};
