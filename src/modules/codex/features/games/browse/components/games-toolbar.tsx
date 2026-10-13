"use client";

import {
  countGamesByKind,
  countPlayedGames,
  type GamePlayCounts,
  type GamesBrowseFilters,
  type GamesKindFilter,
  type GamesSortOrder,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import {
  gameKindLabels,
  gameKinds,
} from "@/modules/reference/features/games/domain/game-kinds";
import type { GameCard } from "@/modules/reference/types";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";

type GamesToolbarProps = {
  filters: GamesBrowseFilters;
  games: GameCard[];
  onFilterChange: <FilterKey extends keyof GamesBrowseFilters>(
    key: FilterKey,
    value: GamesBrowseFilters[FilterKey],
  ) => void;
  onSortOrderChange: (sortOrder: GamesSortOrder) => void;
  /* Your Plays per game, signed in: adds the Played filter. */
  playCounts?: GamePlayCounts;
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
 * v3's games toolbar: the search and the sort, then the kinds of game as
 * pills on their own row, with Played (your games) after All games when
 * signed in. On phones the pills scroll sideways, fading at the edge to show
 * there is more.
 */
export const GamesToolbar = ({
  filters,
  games,
  onFilterChange,
  onSortOrderChange,
  playCounts,
  sortOrder,
}: GamesToolbarProps) => {
  const kindCounts = countGamesByKind(games);
  const kindOptions = [
    { label: "All games", value: "" as const },
    ...(playCounts
      ? [
          {
            count: countPlayedGames(games, playCounts),
            label: "Played",
            value: "played" as const,
          },
        ]
      : []),
    ...gameKinds.flatMap((kind) => {
      const count = kindCounts.get(kind) ?? 0;

      return count ? [{ count, label: gameKindLabels[kind], value: kind }] : [];
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
      }
    >
      <SegmentedControl<GamesKindFilter>
        ariaLabel="Filter by kind of game"
        className="no-scrollbar -m-1 w-[calc(100%+0.5rem)] basis-full flex-nowrap overflow-x-auto [mask-image:linear-gradient(90deg,black_calc(100%-1.5rem),transparent)] p-1 pr-6 sm:flex-wrap sm:overflow-visible sm:[mask-image:none] sm:p-1"
        onValueChange={(kind) => {
          onFilterChange("kind", kind);
        }}
        options={kindOptions}
        value={filters.kind}
      />
    </Toolbar>
  );
};
