"use client";

import { useState } from "react";

import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type {
  PlayBrowseFilters,
  PlayBrowseOption,
  PlayBrowseSort,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PlaysToolbarProps = {
  filters: PlayBrowseFilters;
  games: PlayBrowseOption[];
  /* How many Plays the current choices show, for the phone sheet's button. */
  matchingCount: number;
  onGameChange: (game: string) => void;
  onQueryChange: (query: string) => void;
  onSortChange: (sort: PlayBrowseSort) => void;
  onStatusChange: (status: string) => void;
  statuses: PlayBrowseOption[];
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
 * page hydrates keeps the status, game and order. The sheet is portalled
 * outside the form.
 */
const getFilterSelects = (
  {
    filters,
    games,
    onGameChange,
    onSortChange,
    onStatusChange,
    statuses,
  }: FilterSelectsProps,
  {
    idPrefix,
    isInForm = false,
    sortPrefix,
  }: { idPrefix: string; isInForm?: boolean; sortPrefix?: string },
) => {
  const getName = (name: keyof PlayBrowseFilters) => {
    return isInForm ? name : undefined;
  };

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
    status: (
      <SelectControl
        id={`${idPrefix}-status`}
        name={getName("status")}
        ariaLabel="Filter Plays by status"
        value={filters.status}
        onValueChange={onStatusChange}
        options={[{ label: "All statuses", value: "" }, ...statuses]}
        placeholder="All statuses"
        variant="ghost"
      />
    ),
  };
};

const ToolbarSeparator = () => {
  return <span aria-hidden className="bg-line my-2 w-px self-stretch" />;
};

/*
 * On phones the status, game and order move into a bottom sheet. Only its
 * trigger hides on wider screens, so a sheet left open across a resize stays
 * visible and can still be closed.
 */
const PlaysFiltersSheet = ({
  matchingCount,
  ...selectProps
}: Omit<PlaysToolbarProps, "onQueryChange">) => {
  const [isOpen, setIsOpen] = useState(false);
  const selects = getFilterSelects(selectProps, { idPrefix: "plays-sheet" });
  const rows = [
    { control: selects.status, key: "status", label: "Status" },
    { control: selects.game, key: "game", label: "Game" },
    { control: selects.sort, key: "sort", label: "Sort" },
  ];

  return (
    <Sheet open={isOpen} onOpenChange={setIsOpen}>
      <SheetTrigger
        render={
          <Button type="button" variant="outline" className="md:hidden" />
        }
      >
        Filters
      </SheetTrigger>
      <SheetContent
        side="bottom"
        className="mx-auto max-h-[88dvh] w-full max-w-140 gap-0"
      >
        <span
          aria-hidden
          className="bg-line mx-auto mt-2.5 mb-0.5 h-1.25 w-11 shrink-0 rounded-full"
        />
        <div className="min-h-0 flex-1 overflow-y-auto px-5 pt-2 pb-4">
          <SheetTitle className="text-24 mt-2 mb-2 pr-12">Filters</SheetTitle>
          <SheetDescription className="sr-only">
            Choose which Plays the list shows and their order.
          </SheetDescription>
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
        </div>
        <SheetFooter className="border-line border-t px-5 py-3 pb-[calc(0.75rem+env(safe-area-inset-bottom,0px))]">
          <SheetClose render={<Button type="button" className="w-full" />}>
            Show {formatPlayCount(matchingCount)}
          </SheetClose>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
};

/*
 * The toolbar card (v3's Plays toolbar): search, then the status and game
 * filters and the order as quiet selects. Phones keep the search and one
 * Filters button; the switch happens at `md`, where the full row fits.
 */
export const PlaysToolbar = ({
  filters,
  games,
  matchingCount,
  onGameChange,
  onQueryChange,
  onSortChange,
  onStatusChange,
  statuses,
}: PlaysToolbarProps) => {
  const selectProps = {
    filters,
    games,
    onGameChange,
    onSortChange,
    onStatusChange,
    statuses,
  };
  const selects = getFilterSelects(selectProps, {
    idPrefix: "plays",
    isInForm: true,
    sortPrefix: "Sort",
  });

  return (
    <BrowseFilterPanel
      aria-label="Filter Plays"
      className="flex flex-nowrap items-center gap-2 p-2.5 md:flex-wrap md:gap-x-3.5 md:gap-y-2.5"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <SearchControl
        id="plays-search"
        name="q"
        ariaLabel="Search Plays"
        value={filters.query}
        onValueChange={onQueryChange}
        placeholder="Search Plays"
        className="min-w-0 flex-1 md:min-w-55 md:flex-[1_1_220px]"
      />

      <div className="hidden md:contents">
        <ToolbarSeparator />
        {selects.status}
        {selects.game}
        <ToolbarSeparator />
        {selects.sort}
      </div>

      <PlaysFiltersSheet {...selectProps} matchingCount={matchingCount} />
    </BrowseFilterPanel>
  );
};
