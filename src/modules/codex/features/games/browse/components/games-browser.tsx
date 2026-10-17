"use client";

import { PageBand } from "@/shared/components/page-band";
import { useMemo, useState } from "react";

import { GamesShelf } from "@/modules/codex/features/games/browse/components/games-shelf";
import { GamesToolbar } from "@/modules/codex/features/games/browse/components/games-toolbar";
import {
  countGenerations,
  emptyGamesPageFilters,
  filterGames,
  groupGamesIntoSections,
  hasActiveGamesFilters,
  type GamesBrowseFilters,
  type GamesGroupBy,
  type GamesSortOrder,
} from "@/modules/codex/features/games/browse/data/games-browse-model";
import type { GamesPageData } from "@/modules/reference/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { PageHeader } from "@/shared/components/page-header";

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

type GamesBrowserProps = {
  data: GamesPageData;
};

/*
 * The Codex's games: the band with the title, how many there are and the
 * toolbar (search, Kind, Group, Sort), then the shelf of covers, grouped by
 * generation or region. A reference list: it never says which games you've
 * played.
 */
export const GamesBrowser = ({ data }: GamesBrowserProps) => {
  const [filters, setFilters] = useState<GamesBrowseFilters>(data.filters);
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
      <PageBand>
        <PageHeader
          title="Games"
          description={
            <>
              <b className="text-ink font-extrabold">
                {data.games.length} games
              </b>{" "}
              across {spellCount(countGenerations(data.games))} generations.
            </>
          }
        />

        <GamesToolbar
          filters={filters}
          games={data.games}
          groupBy={groupBy}
          onFilterChange={updateFilter}
          onGroupByChange={setGroupBy}
          onSortOrderChange={setSortOrder}
          sortOrder={sortOrder}
        />
      </PageBand>

      <FilterResultsLine
        className="mt-5"
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
          variant="bare"
          className="mt-6"
          title="No games match that search or filter."
          action={<ClearFiltersButton onClick={clearFilters} />}
        />
      )}
    </>
  );
};
