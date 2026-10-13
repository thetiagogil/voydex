"use client";

import { useState } from "react";

import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type {
  PlayBrowseFilters,
  PlayBrowseOption,
  PlayBrowseSort,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar, ToolbarDivider } from "@/shared/components/toolbar";
import { Button } from "@/shared/components/ui/button";

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
        options={[{ label: "All games", value: "" }, ...games]}
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
 * On phones the game, generation and order move into a bottom sheet. Only
 * its trigger hides on wider screens, so a sheet left open across a resize
 * stays visible and can still be closed.
 */
const PlaysFiltersSheet = ({
  matchingCount,
  ...selectProps
}: Omit<PlaysToolbarProps, "onQueryChange">) => {
  const [isOpen, setIsOpen] = useState(false);
  const selects = getFilterSelects(selectProps, { idPrefix: "plays-sheet" });
  const rows = [
    { control: selects.game, key: "game", label: "Game" },
    { control: selects.generation, key: "generation", label: "Generation" },
    { control: selects.sort, key: "sort", label: "Sort" },
  ];

  return (
    <BottomSheet
      open={isOpen}
      onOpenChange={setIsOpen}
      title="Filters"
      description="Choose which Plays the list shows and their order."
      descriptionHidden
      trigger={
        <Button type="button" variant="outline" className="sm:hidden">
          Filters
        </Button>
      }
      footer={
        <Button type="button" onClick={() => setIsOpen(false)}>
          Show {formatPlayCount(matchingCount)}
        </Button>
      }
    >
      <div className="divide-line grid divide-y">
        {rows.map((row) => (
          <div
            key={row.key}
            className="flex min-h-13 items-center justify-between gap-4 py-1"
          >
            <label
              htmlFor={`plays-sheet-${row.key}`}
              className="text-ink-2 text-13 font-bold"
            >
              {row.label}
            </label>
            {row.control}
          </div>
        ))}
      </div>
    </BottomSheet>
  );
};

/*
 * The toolbar (v3's Plays toolbar): search, then the game and generation
 * filters and the order as quiet selects. Phones keep the search and one
 * Filters button.
 */
export const PlaysToolbar = ({
  matchingCount,
  onQueryChange,
  ...selectProps
}: PlaysToolbarProps) => {
  const selects = getFilterSelects(selectProps, {
    idPrefix: "plays",
    isInForm: true,
    sortPrefix: "Sort",
  });

  return (
    <Toolbar
      aria-label="Filter Plays"
      render={
        <form
          onSubmit={(event) => {
            event.preventDefault();
          }}
        />
      }
      search={
        <div className="flex gap-2">
          <SearchControl
            id="plays-search"
            name="q"
            ariaLabel="Search Plays"
            value={selectProps.filters.query}
            onValueChange={onQueryChange}
            placeholder="Search Plays"
            className="min-w-0 flex-1"
          />
          <PlaysFiltersSheet {...selectProps} matchingCount={matchingCount} />
        </div>
      }
    >
      <div className="hidden sm:contents">
        <ToolbarDivider />
        {selects.game}
        {selects.generation}
        <ToolbarDivider />
        {selects.sort}
      </div>
    </Toolbar>
  );
};
