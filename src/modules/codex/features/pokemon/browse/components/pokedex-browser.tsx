"use client";

import {
  useCallback,
  useDeferredValue,
  useEffect,
  useMemo,
  useRef,
  useState,
} from "react";

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
import { groupPokemonByGeneration } from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import { BrowseResultSummary } from "@/modules/codex/shared/components/browse-result-summary";
import { CodexGenerationPills } from "@/modules/codex/shared/components/codex-generation-pills";
import {
  CodexPokemonCardLink,
  CodexPokemonGrid,
} from "@/modules/codex/shared/components/codex-pokemon-card-link";
import { CodexTypeFilter } from "@/modules/codex/shared/components/codex-type-filter";
import { getGenerationNumeral } from "@/modules/codex/shared/utils/game-names";
import { formatPokemonNationalNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type {
  PokedexPageData,
  PokedexPageFilters,
} from "@/modules/reference/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { RangeHeading } from "@/shared/components/range-heading";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { Toolbar } from "@/shared/components/toolbar";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 48;

const countFormat = new Intl.NumberFormat("en-US");

export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [sortKey, setSortKey] = useState<PokedexSortKey>("national");
  const [visibleCount, setVisibleCount] = useState(INITIAL_VISIBLE_POKEMON);
  const [supportsAutomaticLoading, setSupportsAutomaticLoading] =
    useState(true);
  const automaticLoadTriggerRef = useRef<HTMLDivElement | null>(null);

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

  const visiblePokemon = useMemo(
    () => filteredPokemon.slice(0, visibleCount),
    [filteredPokemon, visibleCount],
  );

  const visiblePokemonGenerationGroups = useMemo(
    () => groupPokemonByGeneration(visiblePokemon, data.generations),
    [data.generations, visiblePokemon],
  );

  /* Each generation's heading counts every match, loaded or not. */
  const filteredCountByGroupKey = useMemo(
    () =>
      new Map(
        groupPokemonByGeneration(filteredPokemon, data.generations).map(
          (group) => [group.key, group.pokemon.length] as const,
        ),
      ),
    [data.generations, filteredPokemon],
  );

  const hasActiveFilters = hasActivePokedexFilters(filters);
  const canLoadMore = visiblePokemon.length < filteredPokemon.length;

  const loadMorePokemon = useCallback(() => {
    setVisibleCount((currentCount) =>
      Math.min(
        currentCount + VISIBLE_POKEMON_INCREMENT,
        filteredPokemon.length,
      ),
    );
  }, [filteredPokemon.length]);

  useEffect(() => {
    if (!canLoadMore || typeof window === "undefined") {
      return;
    }

    if (!("IntersectionObserver" in window)) {
      const fallbackTimer = setTimeout(() => {
        setSupportsAutomaticLoading(false);
      }, 0);

      return () => {
        clearTimeout(fallbackTimer);
      };
    }

    const automaticLoadTrigger = automaticLoadTriggerRef.current;

    if (!automaticLoadTrigger) {
      return;
    }

    const observer = new IntersectionObserver(
      (entries) => {
        if (entries.some((entry) => entry.isIntersecting)) {
          loadMorePokemon();
        }
      },
      {
        rootMargin: "900px 0px",
        threshold: 0,
      },
    );

    observer.observe(automaticLoadTrigger);

    return () => {
      observer.disconnect();
    };
  }, [canLoadMore, loadMorePokemon]);

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

  const generationOptions = [
    { label: "All", value: "" },
    ...data.generations.map((generation) => ({
      label: getGenerationNumeral(generation.name),
      value: generation.slug,
    })),
  ];

  return (
    <>
      <PageHeader
        title="Pokémon"
        description={`Every species in the National Pokédex, ${countFormat.format(data.pokemon.length)} in all.`}
        className="pt-5.5 sm:flex-wrap sm:pt-5.5"
        action={
          <CodexGenerationPills
            options={generationOptions}
            onValueChange={(generation) => {
              updateFilter("generation", generation);
            }}
            value={filters.generation}
          />
        }
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
          <SelectControl
            ariaLabel="Sort Pokémon"
            variant="ghost"
            size="sm"
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
        }
      />

      <div className="mt-3.5">
        <CodexTypeFilter
          onValueChange={(type) => {
            updateFilter("type", type);
          }}
          types={data.types}
          value={filters.type}
        />
      </div>

      {/* Counts every match, not just the ones loaded so far. */}
      <BrowseResultSummary
        hasActiveFilters={hasActiveFilters}
        noun="Pokémon"
        onClearFilters={clearFilters}
        shownCount={filteredPokemon.length}
        totalCount={data.pokemon.length}
      />

      {filteredPokemon.length ? (
        <div className="mt-7.5 flex min-w-0 flex-col gap-7.5">
          {visiblePokemonGenerationGroups.map((group) => {
            const matchCount = filteredCountByGroupKey.get(group.key) ?? 0;
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
            supportsAutomaticLoading ? (
              <div ref={automaticLoadTriggerRef} className="h-px" aria-hidden />
            ) : (
              <div className="flex justify-center">
                <Button
                  type="button"
                  variant="outline"
                  onClick={loadMorePokemon}
                >
                  Show more Pokémon
                </Button>
              </div>
            )
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
