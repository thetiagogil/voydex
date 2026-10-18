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
import { ResetListButton } from "@/shared/components/reset-list-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
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
 * toolbar (search, Kind, Group, Sort), then the shelf of covers: one plain
 * grid by default, or grouped by generation or region. A reference list: it never says which games you've
 * played.
 */
export const GamesBrowser = ({ data }: GamesBrowserProps) => {
  const [filters, setFilters] = useState<GamesBrowseFilters>(data.filters);
  const [groupBy, setGroupBy] = useState<GamesGroupBy>("none");
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
  const fold = useFold({ defaultOpen: hasActiveFilters });

  const updateFilter = <FilterKey extends keyof GamesBrowseFilters>(
    key: FilterKey,
    value: GamesBrowseFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const isReordered = groupBy !== "none" || sortOrder !== "oldest";

  const resetList = () => {
    setFilters(emptyGamesPageFilters);
    setGroupBy("none");
    setSortOrder("oldest");
  };

  return (
    <>
      <PageBand>
        <FoldHead
          toggle={
            <FoldToggle
              controls={fold.panelId}
              open={fold.open}
              onOpenChange={fold.setOpen}
            />
          }
        >
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
        </FoldHead>

        <FoldPanel id={fold.panelId} open={fold.open}>
          <GamesToolbar
            filters={filters}
            games={data.games}
            groupBy={groupBy}
            matchingCount={filteredGames.length}
            onFilterChange={updateFilter}
            onGroupByChange={setGroupBy}
            onSortOrderChange={setSortOrder}
            sortOrder={sortOrder}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={hasActiveFilters}
            isReordered={isReordered}
            noun="games"
            onReset={resetList}
            shownCount={filteredGames.length}
            totalCount={data.games.length}
          />
        </FoldPanel>
      </PageBand>

      {sections.length ? (
        <GamesShelf sections={sections} />
      ) : (
        <EmptyState
          variant="bare"
          className="mt-6"
          title="No games match that search or filter."
          action={<ResetListButton onClick={resetList} />}
        />
      )}
    </>
  );
};
