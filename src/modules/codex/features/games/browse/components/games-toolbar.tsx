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
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

type GamesToolbarProps = {
  filters: GamesBrowseFilters;
  games: GameCard[];
  groupBy: GamesGroupBy;
  /* How many games the current choices show, for the phone sheet's button. */
  matchingCount: number;
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
  { label: "None", value: "none" },
  { label: "Generation", value: "generation" },
  { label: "Region", value: "region" },
] satisfies { label: string; value: GamesGroupBy }[];

const sortOptions = [
  { label: "Oldest first", value: "oldest" },
  { label: "Newest first", value: "newest" },
] satisfies { label: string; value: GamesSortOrder }[];

const isGamesGroupBy = (value: string): value is GamesGroupBy =>
  value === "none" || value === "generation" || value === "region";

const isGameKind = (value: string): value is GameKind => {
  return (gameKinds as readonly string[]).includes(value);
};

/*
 * The games toolbar on the one list toolbar: the search and the order on the
 * line, and the kind of game and how the shelf is grouped behind Filters.
 */
export const GamesToolbar = ({
  filters,
  games,
  groupBy,
  matchingCount,
  onFilterChange,
  onGroupByChange,
  onSortOrderChange,
  sortOrder,
}: GamesToolbarProps) => {
  const kindCounts = countGamesByKind(games);
  const kindOptions = [
    {
      description: `${games.length} games`,
      label: "All games",
      value: ALL_KINDS,
    },
    ...gameKinds.flatMap((kind) => {
      const count = kindCounts.get(kind) ?? 0;

      return count
        ? [
            {
              description: `${count} ${count === 1 ? "game" : "games"}`,
              label: gameKindLabels[kind],
              value: kind,
            },
          ]
        : [];
    }),
  ];

  const activeCount = filters.kind ? 1 : 0;

  return (
    <FilterToolbar
      query={filters.query}
      ariaLabel="Filter games"
      className="mt-5"
      activeCount={activeCount}
      resultLabel={`Show ${matchingCount} ${matchingCount === 1 ? "game" : "games"}`}
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
      controls={(placement) => {
        const sort = (
          <SelectControl
            id={placement === "panel" ? "games-sort" : "games-sheet-sort"}
            ariaLabel="Sort games"
            variant="ghost"
            prefix={placement === "panel" ? "Sort" : undefined}
            value={sortOrder}
            onValueChange={(value) => {
              onSortOrderChange(value === "newest" ? "newest" : "oldest");
            }}
            options={sortOptions}
            placeholder="Oldest first"
          />
        );

        return placement === "panel" ? (
          sort
        ) : (
          <FilterSheetRow htmlFor="games-sheet-sort" label="Sort">
            {sort}
          </FilterSheetRow>
        );
      }}
      filters={(placement) => {
        const id = (name: string) =>
          placement === "panel" ? `games-${name}` : `games-sheet-${name}`;
        const kind = (
          <SelectControl
            id={id("kind")}
            ariaLabel="Kind of game"
            variant="ghost"
            prefix={placement === "panel" ? "Kind" : undefined}
            value={filters.kind || ALL_KINDS}
            onValueChange={(value) => {
              onFilterChange("kind", isGameKind(value) ? value : "");
            }}
            options={kindOptions}
            placeholder="All games"
          />
        );
        const group = (
          <SelectControl
            id={id("group")}
            ariaLabel="Group games by"
            variant="ghost"
            prefix={placement === "panel" ? "Group" : undefined}
            value={groupBy}
            onValueChange={(value) => {
              if (isGamesGroupBy(value)) {
                onGroupByChange(value);
              }
            }}
            options={groupByOptions}
            placeholder="None"
          />
        );

        return placement === "panel" ? (
          <div className="flex flex-wrap items-center gap-2">
            {kind}
            {group}
          </div>
        ) : (
          <>
            <FilterSheetRow htmlFor={id("kind")} label="Kind">
              {kind}
            </FilterSheetRow>
            <FilterSheetRow htmlFor={id("group")} label="Group">
              {group}
            </FilterSheetRow>
          </>
        );
      }}
    />
  );
};
