"use client";

import { PageBand } from "@/shared/components/page-band";
import { useCallback, useDeferredValue, useMemo, useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  filterPokedexPokemon,
  getSearchablePokedexPokemon,
  isPokedexSortKey,
  pokedexSortOptions,
  sortPokedexPokemon,
  type PokedexSortKey,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-browse";
import {
  defaultPokedexPageFilters,
  hasActivePokedexFilters,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import {
  groupPokemonByGeneration,
  groupPokemonByType,
  takePokemonFromGroups,
  ungroupPokemon,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import {
  CodexPokemonCardLink,
  CodexPokemonGrid,
} from "@/modules/codex/shared/components/codex-pokemon-card-link";
import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type {
  PokedexPageData,
  PokedexPageFilters,
} from "@/modules/reference/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import { LoadMoreTrigger } from "@/shared/components/load-more-trigger";
import { PageHeader } from "@/shared/components/page-header";
import { RangeHeading } from "@/shared/components/range-heading";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { BandDrawer } from "@/shared/components/band-drawer";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 48;

const countFormat = new Intl.NumberFormat("en-US");

/* The Generation menu's "every generation", as a select value. */
const ALL = "all";

type PokedexGroupBy = "none" | "generation" | "type";

const isPokedexGroupBy = (value: string): value is PokedexGroupBy =>
  value === "none" || value === "generation" || value === "type";

const groupByOptions = [
  { label: "None", value: "none" },
  { label: "Generation", value: "generation" },
  { label: "Type", value: "type" },
] satisfies { label: string; value: PokedexGroupBy }[];

/*
 * The Codex's Pokémon: the title and count, the one list toolbar (search,
 * Sort, and Filters holding Generation, Group and the type dots), the results line,
 * and the cards, loaded in batches: one plain grid by default, or in ranges
 * (each generation with its region, or each type) when grouped.
 */
export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [sortKey, setSortKey] = useState<PokedexSortKey>("national");
  const [groupBy, setGroupBy] = useState<PokedexGroupBy>("none");
  const [visibleCount, setVisibleCount] = useState(INITIAL_VISIBLE_POKEMON);

  const deferredFilters = useDeferredValue(filters);

  const searchablePokemon = useMemo(
    () => getSearchablePokedexPokemon(data.pokemon),
    [data.pokemon],
  );

  const filteredPokemon = useMemo(
    () =>
      sortPokedexPokemon(
        filterPokedexPokemon(searchablePokemon, deferredFilters),
        sortKey,
      ),
    [searchablePokemon, deferredFilters, sortKey],
  );

  const groupPokemon = useCallback(
    (pokemon: typeof filteredPokemon) =>
      groupBy === "type"
        ? groupPokemonByType(pokemon, data.types)
        : groupBy === "generation"
          ? groupPokemonByGeneration(pokemon, data.generations)
          : ungroupPokemon(pokemon),
    [data.generations, data.types, groupBy],
  );

  /* Every match in its range; each heading counts the whole range. */
  const filteredPokemonGroups = useMemo(
    () => groupPokemon(filteredPokemon),
    [filteredPokemon, groupPokemon],
  );

  /* Batches load range by range, so no range shows half its cards early. */
  const visiblePokemonGroups = useMemo(
    () => takePokemonFromGroups(filteredPokemonGroups, visibleCount),
    [filteredPokemonGroups, visibleCount],
  );

  const hasActiveFilters = hasActivePokedexFilters(filters);
  const canLoadMore = visibleCount < filteredPokemon.length;

  const loadMorePokemon = useCallback(() => {
    setVisibleCount((currentCount) =>
      Math.min(
        currentCount + VISIBLE_POKEMON_INCREMENT,
        filteredPokemon.length,
      ),
    );
  }, [filteredPokemon.length]);

  const updateFilter = <FilterKey extends keyof PokedexPageFilters>(
    key: FilterKey,
    value: PokedexPageFilters[FilterKey],
  ) => {
    setVisibleCount(INITIAL_VISIBLE_POKEMON);
    setFilters((currentFilters) => ({
      ...currentFilters,
      [key]: value,
    }));
  };

  const clearFilters = () => {
    setVisibleCount(INITIAL_VISIBLE_POKEMON);
    setFilters(defaultPokedexPageFilters);
  };

  /* The generation filter, a toolbar menu. */
  const generationOptions = [
    { description: "Every region", label: "All generations", value: ALL },
    ...data.generations.map((generation) => ({
      description: data.regionNameByGenerationSlug[generation.slug],
      label: generation.name,
      value: generation.slug,
    })),
  ];

  return (
    <>
      <PageBand>
        <PageHeader
          title="Pokémon"
          description={`Every species in the National Pokédex, ${countFormat.format(data.pokemon.length)} in all.`}
        />

        <BandDrawer
          activeCount={(filters.generation ? 1 : 0) + (filters.type ? 1 : 0)}
          defaultOpen={
            Boolean(filters.query.trim()) ||
            (filters.generation ? 1 : 0) + (filters.type ? 1 : 0) > 0
          }
        >
          <FilterToolbar
            ariaLabel="Filter Pokémon"
            className="mt-5.5"
            activeCount={(filters.generation ? 1 : 0) + (filters.type ? 1 : 0)}
            resultLabel={`Show ${countFormat.format(filteredPokemon.length)} Pokémon`}
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
                ariaLabel="Search Pokémon"
                value={filters.query}
                onValueChange={(query) => {
                  updateFilter("query", query);
                }}
                placeholder="Search name or number"
              />
            }
            controls={(placement) => {
              const sort = (
                <SelectControl
                  id={
                    placement === "line" ? "pokemon-sort" : "pokemon-sheet-sort"
                  }
                  ariaLabel="Sort Pokémon"
                  variant="ghost"
                  prefix={placement === "line" ? "Sort" : undefined}
                  value={sortKey}
                  onValueChange={(value) => {
                    if (isPokedexSortKey(value)) {
                      setVisibleCount(INITIAL_VISIBLE_POKEMON);
                      setSortKey(value);
                    }
                  }}
                  options={pokedexSortOptions}
                  placeholder="National number"
                />
              );

              return placement === "line" ? (
                sort
              ) : (
                <FilterSheetRow htmlFor="pokemon-sheet-sort" label="Sort">
                  {sort}
                </FilterSheetRow>
              );
            }}
            filters={(placement) => {
              const id = (name: string) =>
                placement === "line"
                  ? `pokemon-${name}`
                  : `pokemon-sheet-${name}`;
              const generation = (
                <SelectControl
                  id={id("generation")}
                  ariaLabel="Filter by generation"
                  variant="ghost"
                  value={filters.generation || ALL}
                  onValueChange={(value) => {
                    updateFilter("generation", value === ALL ? "" : value);
                  }}
                  options={generationOptions}
                  placeholder="All generations"
                />
              );
              const group = (
                <SelectControl
                  id={id("group")}
                  ariaLabel="Group Pokémon by"
                  variant="ghost"
                  prefix={placement === "line" ? "Group" : undefined}
                  value={groupBy}
                  onValueChange={(value) => {
                    if (isPokedexGroupBy(value)) {
                      setVisibleCount(INITIAL_VISIBLE_POKEMON);
                      setGroupBy(value);
                    }
                  }}
                  options={groupByOptions}
                  placeholder="None"
                />
              );

              return placement === "line" ? (
                <>
                  {generation}
                  {group}
                </>
              ) : (
                <>
                  <FilterSheetRow htmlFor={id("generation")} label="Generation">
                    {generation}
                  </FilterSheetRow>
                  <FilterSheetRow htmlFor={id("group")} label="Group">
                    {group}
                  </FilterSheetRow>
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
        </BandDrawer>
      </PageBand>

      {/* Counts every match, not just the ones loaded so far. */}
      <FilterResultsLine
        className="mt-5"
        hasActiveFilters={hasActiveFilters}
        noun="Pokémon"
        onClearFilters={clearFilters}
        shownCount={filteredPokemon.length}
        totalCount={data.pokemon.length}
      />

      {filteredPokemon.length ? (
        <div className="mt-7.5 flex min-w-0 flex-col gap-7.5">
          {visiblePokemonGroups.map((group, index) => {
            const matchCount =
              filteredPokemonGroups[index]?.pokemon.length ?? 0;
            const regionName = data.regionNameByGenerationSlug[group.key];
            const titleId = `pokemon-${group.key}`;

            return (
              <section
                key={group.key}
                aria-labelledby={group.label ? titleId : undefined}
                aria-label={group.label ? undefined : "Pokémon"}
                className="min-w-0"
              >
                {group.label ? (
                  <RangeHeading
                    title={group.label}
                    titleId={titleId}
                    count={[
                      regionName,
                      `${countFormat.format(matchCount)} Pokémon`,
                    ]
                      .filter(Boolean)
                      .join(" · ")}
                  />
                ) : null}
                <CodexPokemonGrid
                  className={group.label ? "mt-4.5" : undefined}
                >
                  {group.pokemon.map((pokemon) => (
                    <CodexPokemonCardLink
                      key={pokemon.id}
                      href={appRoutes.codexPokemonEntry(
                        pokemon.detailVersionGroupSlug,
                        pokemon.slug,
                      )}
                      imageUrl={pokemon.imageUrl}
                      name={pokemon.name}
                      number={formatPokemonNationalNumber(
                        pokemon.nationalNumber,
                      )}
                      types={[pokemon.primaryType, pokemon.secondaryType]}
                    />
                  ))}
                </CodexPokemonGrid>
              </section>
            );
          })}
          {canLoadMore ? (
            <LoadMoreTrigger
              label="Show more Pokémon"
              onLoadMore={loadMorePokemon}
            />
          ) : null}
        </div>
      ) : (
        <EmptyState
          variant="bare"
          className="mt-7.5"
          title="Nothing matches."
          action={
            hasActiveFilters ? (
              <ClearFiltersButton onClick={clearFilters} />
            ) : null
          }
        />
      )}
    </>
  );
};
