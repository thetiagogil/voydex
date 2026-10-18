"use client";

import { useDeferredValue, useMemo, useState, type ReactNode } from "react";

import { GamePokedexTable } from "@/modules/codex/features/games/pokedex/components/game-pokedex-table";
import { appRoutes } from "@/config/routes";
import {
  defaultGamePokedexFilters,
  formatLocalPokedexNumber,
  filterGamePokedexPokemon,
  getSearchableGamePokedexPokemon,
  hasActiveGamePokedexFilters,
  sortGamePokedexPokemon,
  type GamePokedexFilters,
  type GamePokedexSortKey,
  type GamePokedexView,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-browser-model";
import {
  CodexPokemonCardLink,
  CodexPokemonGrid,
} from "@/modules/codex/shared/components/codex-pokemon-card-link";
import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import {
  gameMechanics,
  supportsGameMechanic,
} from "@/modules/reference/features/games/domain/game-mechanics";
import {
  formatPokedexName,
  formatPokemonNationalNumber,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResetListButton } from "@/shared/components/reset-list-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { PageBand } from "@/shared/components/page-band";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

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
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
};

/*
 * A game's Pokédex: the band with the page's head, the toolbar and the type
 * dots, then the results line and the entries.
 */
export const GamePokedexBrowser = ({ data, head }: GamePokedexBrowserProps) => {
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
  const fold = useFold({ defaultOpen: activeFilters });
  const pokedexName = formatPokedexName(data.pokedex.name);
  const versionGroupName = getVersionGroupShortName(data.versionGroup.name);

  const updateFilter = <FilterKey extends keyof GamePokedexFilters>(
    key: FilterKey,
    value: GamePokedexFilters[FilterKey],
  ) => {
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const isReordered = sortKey !== "regional";

  const resetList = () => {
    setFilters(defaultGamePokedexFilters);
    setSortKey("regional");
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
          {head}
        </FoldHead>
        <FoldPanel id={fold.panelId} open={fold.open}>
          <FilterToolbar
            ariaLabel={`Filter the ${pokedexName}`}
            className="mt-5"
            activeCount={filters.type ? 1 : 0}
            resultLabel={`Show ${visiblePokemon.length} Pokémon`}
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
              />
            }
            controls={(placement) => {
              const sort = (
                <SelectControl
                  id={
                    placement === "line" ? "pokedex-sort" : "pokedex-sheet-sort"
                  }
                  ariaLabel="Sort Pokémon"
                  variant="ghost"
                  prefix={placement === "line" ? "Sort" : undefined}
                  value={sortKey}
                  onValueChange={(value) => {
                    if (isGamePokedexSortKey(value)) {
                      setSortKey(value);
                    }
                  }}
                  options={sortOptions}
                  placeholder="Regional number"
                />
              );
              const display = (
                <SegmentedControl
                  ariaLabel="Pokédex display"
                  onValueChange={setView}
                  options={viewOptions}
                  value={view}
                  variant="segment"
                />
              );

              return placement === "line" ? (
                <>
                  {sort}
                  {display}
                </>
              ) : (
                <>
                  <FilterSheetRow htmlFor="pokedex-sheet-sort" label="Sort">
                    {sort}
                  </FilterSheetRow>
                  <FilterSheetRow label="Display">{display}</FilterSheetRow>
                </>
              );
            }}
            row={(placement) => {
              const type = (
                <PokemonTypeFilter
                  onValueChange={(type) => {
                    updateFilter("type", type);
                  }}
                  types={data.types}
                  value={filters.type}
                />
              );

              return placement === "line" ? (
                type
              ) : (
                <FilterSheetRow label="Type">{type}</FilterSheetRow>
              );
            }}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={activeFilters}
            isReordered={isReordered}
            noun="Pokémon"
            onReset={resetList}
            shownCount={visiblePokemon.length}
            totalCount={data.entries.length}
          />
        </FoldPanel>
      </PageBand>

      <section aria-label={`${pokedexName} entries`} className="mt-5">
        <div className="mt-4">
          {visiblePokemon.length ? (
            view === "grid" ? (
              <CodexPokemonGrid>
                {visiblePokemon.map((entry) => (
                  <CodexPokemonCardLink
                    key={`${entry.entry.pokedex_id}-${entry.entry.pokedex_number}-${entry.entry.species_id}`}
                    detail={`in ${versionGroupName}`}
                    href={appRoutes.codexPokemonEntry(
                      data.versionGroup.slug,
                      entry.species.slug,
                    )}
                    imageUrl={entry.imageUrl}
                    name={entry.species.name}
                    number={`#${formatLocalPokedexNumber(entry.entry.pokedex_number)}`}
                    title={`National ${formatPokemonNationalNumber(entry.species.national_number)}`}
                    types={[
                      entry.typePair.primaryType,
                      entry.typePair.secondaryType,
                    ]}
                  />
                ))}
              </CodexPokemonGrid>
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
              action={<ResetListButton onClick={resetList} />}
            />
          )}
        </div>
      </section>
    </>
  );
};
