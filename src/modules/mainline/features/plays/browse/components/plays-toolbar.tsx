"use client";

import { formatPlayCount } from "@/modules/mainline/features/plays/browse/play-browse-display";
import {
  defaultPlayBrowseFilters,
  type PlayBrowseDisplay,
  type PlayBrowseFilters,
  type PlayBrowseOption,
  type PlayBrowseSort,
} from "@/modules/mainline/features/plays/browse/play-browse-model";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { ToolbarGroup } from "@/shared/components/toolbar";

type PlaysToolbarProps = {
  filters: PlayBrowseFilters;
  games: PlayBrowseOption[];
  generations: PlayBrowseOption[];
  /* How many Plays the current choices show, for the phone sheet's button. */
  matchingCount: number;
  onDisplayChange: (display: PlayBrowseDisplay) => void;
  onGameChange: (game: string) => void;
  onGenerationChange: (generation: string) => void;
  onQueryChange: (query: string) => void;
  onSortChange: (sort: PlayBrowseSort) => void;
  onStatusChange: (status: string) => void;
  onTagChange: (tag: string) => void;
  statuses: PlayBrowseOption[];
  /* The tags your Plays carry; the Tag filter is left out when there are none. */
  tags: PlayBrowseOption[];
};

type FilterSelectsProps = Omit<
  PlaysToolbarProps,
  "matchingCount" | "onDisplayChange" | "onQueryChange"
>;

const displayOptions = [
  {
    icon: <AppIcon icon={appIcons.views.display.list} aria-hidden />,
    label: "List",
    value: "list",
  },
  {
    icon: <AppIcon icon={appIcons.views.display.grid} aria-hidden />,
    label: "Grid",
    value: "grid",
  },
] as const;

const sortOptions = [
  { label: "Recent activity", value: "recent" },
  { label: "Recently created", value: "created" },
  { label: "Play name", value: "name" },
  { label: "Game", value: "game" },
  { label: "Started date", value: "started" },
] satisfies PlayBrowseOption[];

/*
 * The same five selects serve the toolbar and the phone sheet. Only the
 * toolbar's carry names: they sit in the form, so a search sent before the
 * page hydrates keeps the game, generation, status and order. The sheet is portalled
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
    onStatusChange,
    onTagChange,
    statuses,
    tags,
  }: FilterSelectsProps,
  {
    idPrefix,
    isInForm = false,
    sortPrefix,
  }: { idPrefix: string; isInForm?: boolean; sortPrefix?: string },
) => {
  const getName = (name: string) => (isInForm ? name : undefined);
  /* On the line a field gives way when the row is full, cutting its value short. */
  const fieldClassName = isInForm ? "min-w-0" : undefined;

  return {
    game: (
      <SelectControl
        id={`${idPrefix}-game`}
        name={getName("game")}
        ariaLabel="Filter Plays by game"
        resetValue={defaultPlayBrowseFilters.game}
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
        className={fieldClassName}
        variant="ghost"
      />
    ),
    generation: (
      <SelectControl
        id={`${idPrefix}-generation`}
        name={getName("generation")}
        ariaLabel="Filter Plays by generation"
        resetValue={defaultPlayBrowseFilters.generation}
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={[{ label: "All generations", value: "" }, ...generations]}
        placeholder="All generations"
        className={fieldClassName}
        variant="ghost"
      />
    ),
    status: (
      <SelectControl
        id={`${idPrefix}-status`}
        name={getName("status")}
        ariaLabel="Filter Plays by status"
        resetValue={defaultPlayBrowseFilters.status}
        value={filters.status}
        onValueChange={onStatusChange}
        options={[{ label: "All statuses", value: "" }, ...statuses]}
        placeholder="All statuses"
        className={fieldClassName}
        variant="ghost"
      />
    ),
    tag: (
      <SelectControl
        id={`${idPrefix}-tag`}
        name={getName("tag")}
        ariaLabel="Filter Plays by tag"
        resetValue={defaultPlayBrowseFilters.tag}
        value={filters.tag}
        onValueChange={onTagChange}
        options={[{ label: "All tags", value: "" }, ...tags]}
        searchPlaceholder="Search tags"
        placeholder="All tags"
        /* Tags are named by you, so on the line a long one is cut short. */
        className={isInForm ? "max-w-48 min-w-0" : undefined}
        variant="ghost"
      />
    ),
    sort: (
      <SelectControl
        id={`${idPrefix}-sort`}
        name={getName("sort")}
        ariaLabel="Sort Plays"
        resetValue={defaultPlayBrowseFilters.sort}
        value={filters.sort}
        onValueChange={(value) => {
          onSortChange(value as PlayBrowseSort);
        }}
        options={sortOptions}
        placeholder="Recent activity"
        prefix={sortPrefix}
        className={fieldClassName}
        variant="ghost"
      />
    ),
  };
};

/*
 * The toolbar (v3's Plays toolbar) on the one list toolbar: search, the order
 * on the line, and the game, generation, status and tag behind Filters (a row under the
 * line from 640px, a sheet on phones).
 */
export const PlaysToolbar = ({
  matchingCount,
  onDisplayChange,
  onQueryChange,
  ...selectProps
}: PlaysToolbarProps) => {
  const activeCount =
    (selectProps.filters.game ? 1 : 0) +
    (selectProps.filters.generation ? 1 : 0) +
    (selectProps.filters.status ? 1 : 0) +
    (selectProps.filters.tag ? 1 : 0);
  const display = (
    <SegmentedControl
      ariaLabel="Plays display"
      iconOnly
      onValueChange={onDisplayChange}
      options={displayOptions}
      value={selectProps.filters.display}
      variant="segment"
    />
  );

  return (
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
          <>
            {
              getFilterSelects(selectProps, {
                idPrefix: "plays",
                isInForm: true,
                sortPrefix: "Sort",
              }).sort
            }
            {/* The switch never shrinks; the fields give way. */}
            <ToolbarGroup className="shrink-0">{display}</ToolbarGroup>
          </>
        ) : (
          <>
            <FilterSheetRow htmlFor="plays-sheet-sort" label="Sort">
              {getFilterSelects(selectProps, { idPrefix: "plays-sheet" }).sort}
            </FilterSheetRow>
            <FilterSheetRow label="Display">{display}</FilterSheetRow>
          </>
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
            {selects.status}
            {selectProps.tags.length ? selects.tag : null}
          </>
        ) : (
          <>
            <FilterSheetRow htmlFor="plays-sheet-game" label="Game">
              {selects.game}
            </FilterSheetRow>
            <FilterSheetRow htmlFor="plays-sheet-generation" label="Generation">
              {selects.generation}
            </FilterSheetRow>
            <FilterSheetRow htmlFor="plays-sheet-status" label="Status">
              {selects.status}
            </FilterSheetRow>
            {selectProps.tags.length ? (
              <FilterSheetRow htmlFor="plays-sheet-tag" label="Tag">
                {selects.tag}
              </FilterSheetRow>
            ) : null}
          </>
        );
      }}
    />
  );
};
