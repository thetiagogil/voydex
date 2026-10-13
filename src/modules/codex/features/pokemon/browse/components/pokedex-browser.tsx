"use client";

import {
  useCallback,
  useDeferredValue,
  useEffect,
  useMemo,
  useRef,
  useState,
} from "react";

import { PokedexFilterForm } from "@/modules/codex/features/pokemon/browse/components/pokedex-filter-form";
import { PokedexGenerationFilter } from "@/modules/codex/features/pokemon/browse/components/pokedex-generation-filter";
import { PokedexPokemonCard } from "@/modules/codex/features/pokemon/browse/components/pokedex-pokemon-card";
import {
  filterPokedexPokemon,
  getSearchablePokedexPokemon,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-browse";
import {
  defaultPokedexPageFilters,
  hasActivePokedexFilters,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import { groupPokemonByGeneration } from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import { BrowseResultSummary } from "@/modules/codex/shared/components/browse-result-summary";
import { CodexGenerationSection } from "@/modules/codex/shared/components/codex-generation-section";
import { CodexTypeFilter } from "@/modules/codex/shared/components/codex-type-filter";
import type {
  PokedexPageData,
  PokedexPageFilters,
} from "@/modules/reference/types";
import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { EmptyState } from "@/shared/components/empty-state";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 48;

const countFormat = new Intl.NumberFormat("en-US");

export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
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
    () => filterPokedexPokemon(searchablePokemon, deferredFilters),
    [searchablePokemon, deferredFilters],
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

  return (
    <>
      <PageHeader
        title="Pokémon"
        description={`Every species in the National Pokédex, ${countFormat.format(data.pokemon.length)} in all.`}
        className="pt-5.5 sm:flex-wrap sm:pt-5.5"
        action={
          <PokedexGenerationFilter
            generations={data.generations}
            onValueChange={(generation) => {
              updateFilter("generation", generation);
            }}
            value={filters.generation}
          />
        }
      />

      <div className="mt-5.5">
        <PokedexFilterForm
          category={filters.category}
          onCategoryChange={(category) => {
            updateFilter("category", category);
          }}
          onQueryChange={(query) => {
            updateFilter("query", query);
          }}
          query={filters.query}
        />
      </div>

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

            return (
              <CodexGenerationSection
                key={group.key}
                title={group.label}
                meta={`${countFormat.format(matchCount)} Pokémon`}
              >
                <div className="grid min-w-0 grid-cols-3 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3">
                  {group.pokemon.map((pokemon) => (
                    <PokedexPokemonCard key={pokemon.id} pokemon={pokemon} />
                  ))}
                </div>
              </CodexGenerationSection>
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
