"use client";

import { useMemo, useState } from "react";

import { GamesShelf } from "@/modules/codex/features/games/browse/components/games-shelf";
import { GamesToolbar } from "@/modules/codex/features/games/browse/components/games-toolbar";
import {
  countGenerations,
  countPlayedGames,
  emptyGamesPageFilters,
  filterGames,
  groupGamesIntoSections,
  hasActiveGamesFilters,
  type GamePlayCounts,
  type GamesBrowseFilters,
  type GamesGroupBy,
  type GamesSortOrder,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import { BrowseResultSummary } from "@/modules/codex/shared/components/browse-result-summary";
import type { GamesPageData } from "@/modules/reference/types";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
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
  /* Your Plays per game, by game slug, when signed in. */
  playCounts?: GamePlayCounts;
};

export const GamesBrowser = ({ data, playCounts }: GamesBrowserProps) => {
  const [filters, setFilters] = useState<GamesBrowseFilters>(data.filters);
  const [groupBy, setGroupBy] = useState<GamesGroupBy>("generation");
  const [sortOrder, setSortOrder] = useState<GamesSortOrder>("oldest");
  const filteredGames = useMemo(
    () => filterGames(data.games, filters, playCounts),
    [data.games, filters, playCounts],
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

  const updateFilter = <FilterKey extends keyof GamesBrowseFilters>(
    key: FilterKey,
    value: GamesBrowseFilters[FilterKey],
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
      <PageHeader
        title="Games"
        className="pt-5.5 sm:pt-5.5"
        description={
          <>
            <b className="text-ink font-extrabold">{data.games.length} games</b>{" "}
            across {spellCount(countGenerations(data.games))} generations.
            {playCounts ? (
              <>
                {" "}
                You&apos;ve played{" "}
                <b className="text-ink font-extrabold">
                  {countPlayedGames(data.games, playCounts)}
                </b>{" "}
                of them.
              </>
            ) : null}
          </>
        }
        action={
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
        }
      />

      <GamesToolbar
        filters={filters}
        games={data.games}
        onFilterChange={updateFilter}
        onSortOrderChange={setSortOrder}
        playCounts={playCounts}
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
        <GamesShelf sections={sections} playCounts={playCounts} />
      ) : (
        <EmptyState
          variant="bare"
          className="mt-6"
          title="No games match that search or filter."
        />
      )}
    </>
  );
};
