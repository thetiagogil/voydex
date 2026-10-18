"use client";

import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type {
  PlayBrowseFilters,
  PlayBrowseOption,
  PlayBrowseSort,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BandDrawer } from "@/shared/components/band-drawer";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";

type PlaysToolbarProps = {
  filters: PlayBrowseFilters;
  games: PlayBrowseOption[];
  generations: PlayBrowseOption[];
  /* How many Plays the current choices show, for the phone sheet's button. */
  matchingCount: number;
  onGameChange: (game: string) => void;
  onGenerationChange: (generation: string) => void;
  onQueryChange: (query: string) => void;
  onSortChange: (sort: PlayBrowseSort) => void;
};

type FilterSelectsProps = Omit<
  PlaysToolbarProps,
  "matchingCount" | "onQueryChange"
>;

const sortOptions = [
  { label: "Recent activity", value: "recent" },
  { label: "Recently created", value: "created" },
  { label: "Play name", value: "name" },
  { label: "Game", value: "game" },
  { label: "Started date", value: "started" },
] satisfies PlayBrowseOption[];

/*
 * The same three selects serve the toolbar and the phone sheet. Only the
 * toolbar's carry names: they sit in the form, so a search sent before the
 * page hydrates keeps the game, generation and order. The sheet is portalled
 * outside the form.
 */
const getFilterSelects = (
  {
    filters,
    games,
    generations,
    onGameChange,
    onGenerationChange,
    onSortChange,
  }: FilterSelectsProps,
  {
    idPrefix,
    isInForm = false,
    sortPrefix,
  }: { idPrefix: string; isInForm?: boolean; sortPrefix?: string },
) => {
  const getName = (name: string) => (isInForm ? name : undefined);

  return {
    game: (
      <SelectControl
        id={`${idPrefix}-game`}
        name={getName("game")}
        ariaLabel="Filter Plays by game"
        value={filters.game}
        onValueChange={onGameChange}
        options={[
          {
            icon: <AppIcon icon={appIcons.product.game} size="md" />,
            label: "All games",
            value: "",
          },
          ...games.map((game) => ({
            ...game,
            icon: (
              <GameOptionCover gameName={game.label} gameSlug={game.value} />
            ),
          })),
        ]}
        searchPlaceholder="Search games"
        placeholder="All games"
        variant="ghost"
      />
    ),
    generation: (
      <SelectControl
        id={`${idPrefix}-generation`}
        name={getName("generation")}
        ariaLabel="Filter Plays by generation"
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={[{ label: "All generations", value: "" }, ...generations]}
        placeholder="All generations"
        variant="ghost"
      />
    ),
    sort: (
      <SelectControl
        id={`${idPrefix}-sort`}
        name={getName("sort")}
        ariaLabel="Sort Plays"
        value={filters.sort}
        onValueChange={(value) => {
          onSortChange(value as PlayBrowseSort);
        }}
        options={sortOptions}
        placeholder="Recent activity"
        prefix={sortPrefix}
        variant="ghost"
      />
    ),
  };
};

/*
 * The toolbar (v3's Plays toolbar) on the one list toolbar: search, the order
 * on the line, and the game and generation behind Filters (a row under the
 * line from 640px, a sheet on phones).
 */
export const PlaysToolbar = ({
  matchingCount,
  onQueryChange,
  ...selectProps
}: PlaysToolbarProps) => {
  const activeCount =
    (selectProps.filters.game ? 1 : 0) +
    (selectProps.filters.generation ? 1 : 0);

  return (
    <BandDrawer
      activeCount={activeCount}
      defaultOpen={Boolean(selectProps.filters.query.trim()) || activeCount > 0}
    >
      <FilterToolbar
        ariaLabel="Filter Plays"
        className="mt-5"
        activeCount={activeCount}
        resultLabel={`Show ${formatPlayCount(matchingCount)}`}
        render={
          <form
            onSubmit={(event) => {
              event.preventDefault();
            }}
          />
        }
        search={
          <SearchControl
            id="plays-search"
            name="q"
            ariaLabel="Search Plays"
            value={selectProps.filters.query}
            onValueChange={onQueryChange}
            placeholder="Search Plays"
          />
        }
        controls={(placement) =>
          placement === "line" ? (
            getFilterSelects(selectProps, {
              idPrefix: "plays",
              isInForm: true,
              sortPrefix: "Sort",
            }).sort
          ) : (
            <FilterSheetRow htmlFor="plays-sheet-sort" label="Sort">
              {getFilterSelects(selectProps, { idPrefix: "plays-sheet" }).sort}
            </FilterSheetRow>
          )
        }
        filters={(placement) => {
          const selects = getFilterSelects(selectProps, {
            idPrefix: placement === "line" ? "plays" : "plays-sheet",
            isInForm: placement === "line",
          });

          return placement === "line" ? (
            <>
              {selects.game}
              {selects.generation}
            </>
          ) : (
            <>
              <FilterSheetRow htmlFor="plays-sheet-game" label="Game">
                {selects.game}
              </FilterSheetRow>
              <FilterSheetRow
                htmlFor="plays-sheet-generation"
                label="Generation"
              >
                {selects.generation}
              </FilterSheetRow>
            </>
          );
        }}
      />
    </BandDrawer>
  );
};
