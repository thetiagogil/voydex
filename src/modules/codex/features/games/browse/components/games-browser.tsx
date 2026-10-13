"use client";

import { useMemo, useState } from "react";

import { GamesShelf } from "@/modules/codex/features/games/browse/components/games-shelf";
import { GamesToolbar } from "@/modules/codex/features/games/browse/components/games-toolbar";
import {
  countGenerations,
  emptyGamesPageFilters,
  filterGames,
  groupGamesIntoSections,
  hasActiveGamesFilters,
  type GamesGroupBy,
  type GamesSortOrder,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import { BrowseResultSummary } from "@/modules/codex/features/games/shared/components/browse-result-summary";
import type {
  GamesPageData,
  GamesPageFilters,
} from "@/modules/reference/types";
import { EmptyState } from "@/shared/components/empty-state";
import { SegmentedControl } from "@/shared/components/segmented-control";

const countWords = [
  "zero",
  "one",
  "two",
  "three",
  "four",
  "five",
  "six",
  "seven",
  "eight",
  "nine",
  "ten",
  "eleven",
  "twelve",
];

/* Small counts read as words in a sentence, as v3 writes "nine generations". */
const spellCount = (count: number) => countWords[count] ?? String(count);

const groupByOptions = [
  { label: "Generation", value: "generation" },
  { label: "Region", value: "region" },
] as const;

type GamesBrowserProps = {
  data: GamesPageData;
};

export const GamesBrowser = ({ data }: GamesBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [groupBy, setGroupBy] = useState<GamesGroupBy>("generation");
  const [sortOrder, setSortOrder] = useState<GamesSortOrder>("oldest");
  const filteredGames = useMemo(
    () => filterGames(data.games, filters),
    [data.games, filters],
  );
  const sections = useMemo(
    () =>
      groupGamesIntoSections({
        games: filteredGames,
        groupBy,
        regions: data.regions,
        sortOrder,
      }),
    [data.regions, filteredGames, groupBy, sortOrder],
  );
  const hasActiveFilters = hasActiveGamesFilters(filters);

  const updateFilter = <FilterKey extends keyof GamesPageFilters>(
    key: FilterKey,
    value: GamesPageFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const clearFilters = () => {
    setFilters(emptyGamesPageFilters);
  };

  return (
    <>
      <div className="flex flex-col gap-4 pt-5.5 sm:flex-row sm:items-end sm:justify-between">
        <div className="min-w-0">
          <h1 className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]">
            Games
          </h1>
          <p className="text-ink-2 text-15 mt-1.5 max-w-3xl font-semibold">
            <b className="text-ink font-extrabold">{data.games.length} games</b>{" "}
            across {spellCount(countGenerations(data.games))} generations.
          </p>
        </div>
        <div className="flex shrink-0 items-center gap-2.5">
          <span className="text-ink-2 text-13 font-bold">Group by</span>
          <SegmentedControl
            ariaLabel="Group by"
            onValueChange={setGroupBy}
            options={groupByOptions}
            value={groupBy}
            variant="segment"
          />
        </div>
      </div>

      <GamesToolbar
        filters={filters}
        gameTypes={data.gameTypes}
        generations={data.generations}
        onFilterChange={updateFilter}
        onSortOrderChange={setSortOrder}
        regions={data.regions}
        sortOrder={sortOrder}
      />

      <BrowseResultSummary
        hasActiveFilters={hasActiveFilters}
        noun="games"
        onClearFilters={clearFilters}
        shownCount={filteredGames.length}
        totalCount={data.games.length}
      />

      {sections.length ? (
        <GamesShelf sections={sections} />
      ) : (
        <EmptyState
          className="mt-6"
          title="No games match"
          description="Try a different search or filter."
        />
      )}
    </>
  );
};
