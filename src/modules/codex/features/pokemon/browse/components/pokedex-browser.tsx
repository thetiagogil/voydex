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
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import {
  CodexPokemonCardLink,
  CodexPokemonGrid,
} from "@/modules/codex/shared/components/codex-pokemon-card-link";
import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import { getGenerationNumeral } from "@/modules/reference/features/games/utils/game-display";
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
import { Toolbar, ToolbarGroup } from "@/shared/components/toolbar";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 48;

const countFormat = new Intl.NumberFormat("en-US");

/* The Generation menu's "every generation", as a select value. */
const ALL = "all";

type PokedexGroupBy = "generation" | "type";

const groupByOptions = [
  { label: "Generation", value: "generation" },
  { label: "Type", value: "type" },
] satisfies { label: string; value: PokedexGroupBy }[];

/*
 * The Codex's Pokémon: the title and count, one toolbar row (search, the
 * Generation filter, Group by generation or type, Sort), the type dots under
 * it, the results line, and the cards in ranges (each generation with its
 * region, or each type), loaded in batches.
 */
export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [sortKey, setSortKey] = useState<PokedexSortKey>("national");
  const [groupBy, setGroupBy] = useState<PokedexGroupBy>("generation");
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
        : groupPokemonByGeneration(pokemon, data.generations),
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
    { description: "Every region", label: "All", value: ALL },
    ...data.generations.map((generation) => ({
      description: data.regionNameByGenerationSlug[generation.slug],
      label: getGenerationNumeral(generation.name),
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

        <Toolbar
          className="mt-5.5"
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
          trailing={
            <>
              <ToolbarGroup>
                <SelectControl
                  ariaLabel="Filter by generation"
                  variant="ghost"
                  prefix="Generation"
                  value={filters.generation || ALL}
                  onValueChange={(value) => {
                    updateFilter("generation", value === ALL ? "" : value);
                  }}
                  options={generationOptions}
                  placeholder="All"
                />
              </ToolbarGroup>
              <SelectControl
                ariaLabel="Group Pokémon by"
                variant="ghost"
                prefix="Group"
                value={groupBy}
                onValueChange={(value) => {
                  setVisibleCount(INITIAL_VISIBLE_POKEMON);
                  setGroupBy(value === "type" ? "type" : "generation");
                }}
                options={groupByOptions}
                placeholder="Generation"
              />
              <SelectControl
                ariaLabel="Sort Pokémon"
                variant="ghost"
                prefix="Sort"
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
            </>
          }
        />

        {/* The types under the bar: they give the list its colour. */}
        <div className="mt-3.5 -mb-1">
          <PokemonTypeFilter
            onValueChange={(type) => {
              updateFilter("type", type);
            }}
            types={data.types}
            value={filters.type}
          />
        </div>
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
                aria-labelledby={titleId}
                className="min-w-0"
              >
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
                <CodexPokemonGrid className="mt-4.5">
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
