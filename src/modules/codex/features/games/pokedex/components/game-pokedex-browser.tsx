"use client";

import { useDeferredValue, useMemo, useState } from "react";

import { GamePokedexGrid } from "@/modules/codex/features/games/pokedex/components/game-pokedex-grid";
import { GamePokedexTable } from "@/modules/codex/features/games/pokedex/components/game-pokedex-table";
import {
  defaultGamePokedexFilters,
  filterGamePokedexPokemon,
  getSearchableGamePokedexPokemon,
  hasActiveGamePokedexFilters,
  sortGamePokedexPokemon,
  type GamePokedexFilters,
  type GamePokedexSortKey,
  type GamePokedexView,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-browser-model";
import { BrowseResultSummary } from "@/modules/codex/shared/components/browse-result-summary";
import { CodexTypeFilter } from "@/modules/codex/shared/components/codex-type-filter";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { EmptyState } from "@/shared/components/empty-state";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Card } from "@/shared/components/ui/card";

const sortOptions = [
  { label: "Regional number", value: "regional" },
  { label: "National number", value: "national" },
  { label: "Name", value: "name" },
] satisfies { label: string; value: GamePokedexSortKey }[];

const viewOptions = [
  {
    icon: <AppIcon icon={appIcons.views.display.grid} aria-hidden />,
    label: "Cards",
    value: "grid",
  },
  {
    icon: <AppIcon icon={appIcons.views.display.list} aria-hidden />,
    label: "Table",
    value: "table",
  },
] as const;

const isGamePokedexSortKey = (value: string): value is GamePokedexSortKey => {
  return sortOptions.some((option) => option.value === value);
};

type GamePokedexBrowserProps = {
  data: GamePokedexData;
};

export const GamePokedexBrowser = ({ data }: GamePokedexBrowserProps) => {
  const [filters, setFilters] = useState(defaultGamePokedexFilters);
  const [sortKey, setSortKey] = useState<GamePokedexSortKey>("regional");
  const [view, setView] = useState<GamePokedexView>("grid");
  const deferredFilters = useDeferredValue(filters);
  const hasAbilities = useMemo(
    () =>
      supportsGameMechanic(data.mechanics, gameMechanics.abilities) &&
      data.entries.some((entry) => entry.abilities.length > 0),
    [data.entries, data.mechanics],
  );
  const searchablePokemon = useMemo(
    () => getSearchableGamePokedexPokemon(data.entries),
    [data.entries],
  );
  const visiblePokemon = useMemo(
    () =>
      sortGamePokedexPokemon(
        filterGamePokedexPokemon(searchablePokemon, deferredFilters),
        sortKey,
      ),
    [deferredFilters, searchablePokemon, sortKey],
  );
  const activeFilters = hasActiveGamePokedexFilters(filters);
  const pokedexName = formatPokedexName(data.pokedex.name);

  const updateFilter = <FilterKey extends keyof GamePokedexFilters>(
    key: FilterKey,
    value: GamePokedexFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const clearFilters = () => {
    setFilters(defaultGamePokedexFilters);
  };

  return (
    <section aria-label={`${pokedexName} entries`} className="mt-5">
      <Card
        size="sm"
        className="flex-row flex-wrap items-center gap-x-3.5 gap-y-2.5 p-2.5"
      >
        <BrowseFilterPanel
          variant="bare"
          className="contents"
          onSubmit={(event) => {
            event.preventDefault();
          }}
        >
          <SearchControl
            name="q"
            ariaLabel={`Search the ${pokedexName}`}
            value={filters.query}
            onValueChange={(query) => {
              updateFilter("query", query);
            }}
            placeholder={
              hasAbilities
                ? "Search by name, number or ability"
                : "Search by name or number"
            }
            className="min-w-55 flex-[1_1_220px]"
          />
        </BrowseFilterPanel>
        <div className="flex min-w-0 flex-wrap items-center gap-x-2 gap-y-2">
          <span
            aria-hidden
            className="bg-line my-2 hidden w-px self-stretch sm:block"
          />
          <SelectControl
            ariaLabel="Sort Pokémon"
            variant="ghost"
            size="sm"
            prefix="Sort"
            value={sortKey}
            onValueChange={(value) => {
              if (isGamePokedexSortKey(value)) {
                setSortKey(value);
              }
            }}
            options={sortOptions}
            placeholder="Regional number"
          />
          <SegmentedControl
            ariaLabel="Pokédex display"
            onValueChange={setView}
            options={viewOptions}
            value={view}
            variant="segment"
          />
        </div>
      </Card>

      <div className="mt-3">
        <CodexTypeFilter
          onValueChange={(type) => {
            updateFilter("type", type);
          }}
          types={data.types}
          value={filters.type}
        />
      </div>

      <BrowseResultSummary
        hasActiveFilters={activeFilters}
        noun="Pokémon"
        onClearFilters={clearFilters}
        shownCount={visiblePokemon.length}
        totalCount={data.entries.length}
      />

      <div className="mt-4">
        {visiblePokemon.length ? (
          view === "grid" ? (
            <GamePokedexGrid
              gameName={data.game.name}
              gameSlug={data.game.slug}
              pokemon={visiblePokemon}
            />
          ) : (
            <GamePokedexTable
              data={data}
              hasAbilities={hasAbilities}
              pokemon={visiblePokemon}
            />
          )
        ) : (
          <EmptyState
            variant="bare"
            title={
              hasAbilities
                ? "No Pokémon match that name, number, ability or type."
                : "No Pokémon match that name, number or type."
            }
          />
        )}
      </div>
    </section>
  );
};
