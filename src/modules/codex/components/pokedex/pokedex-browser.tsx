"use client";

import {
  useCallback,
  useDeferredValue,
  useEffect,
  useMemo,
  useRef,
  useState,
} from "react";

import {
  CodexBrowseMeta,
  CodexEmptyState,
  CodexResourceGrid,
} from "@/modules/codex/components/codex-browse";
import { PokedexFilterForm } from "@/modules/codex/components/pokedex/pokedex-filter-form";
import { PokedexPokemonCard } from "@/modules/codex/components/pokedex/pokedex-pokemon-card";
import type {
  PokedexPageData,
  PokedexPageFilters,
} from "@/modules/codex/types";
import {
  filterPokedexPokemon,
  getSearchablePokedexPokemon,
} from "@/modules/codex/utils/pokedex-browse";
import {
  defaultPokedexPageFilters,
  hasActivePokedexFilters,
} from "@/modules/codex/utils/pokedex-filters";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 96;
const PRELOAD_REMAINING_POKEMON = 48;

export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [visibleCount, setVisibleCount] = useState(INITIAL_VISIBLE_POKEMON);
  const preloadTriggerRef = useRef<HTMLDivElement | null>(null);

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

  const hasActiveFilters = hasActivePokedexFilters(filters);
  const canLoadMore = visiblePokemon.length < filteredPokemon.length;
  const preloadTriggerIndex = canLoadMore
    ? Math.max(0, visiblePokemon.length - PRELOAD_REMAINING_POKEMON - 1)
    : -1;

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

    const preloadTriggerElement = preloadTriggerRef.current;

    if (!preloadTriggerElement || !("IntersectionObserver" in window)) {
      return;
    }

    const observer = new IntersectionObserver(
      (entries) => {
        if (entries.some((entry) => entry.isIntersecting)) {
          loadMorePokemon();
        }
      },
      {
        threshold: 0,
      },
    );

    observer.observe(preloadTriggerElement);

    return () => {
      observer.disconnect();
    };
  }, [canLoadMore, loadMorePokemon, preloadTriggerIndex]);

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
      <PokedexFilterForm
        filters={filters}
        generations={data.generations}
        onCategoryChange={(category) => {
          updateFilter("category", category);
        }}
        onGenerationChange={(generation) => {
          updateFilter("generation", generation);
        }}
        onQueryChange={(query) => {
          updateFilter("query", query);
        }}
        onTypeChange={(type) => {
          updateFilter("type", type);
        }}
        types={data.types}
      />

      <div className="flex min-h-8 flex-row items-center justify-between gap-3">
        <CodexBrowseMeta>
          <span>
            Showing {visiblePokemon.length} of {filteredPokemon.length} Pokémon
          </span>
        </CodexBrowseMeta>
        {hasActiveFilters ? (
          <Button
            type="button"
            variant="ghost"
            className="self-start sm:self-auto"
            onClick={clearFilters}
          >
            Clear
          </Button>
        ) : null}
      </div>

      {filteredPokemon.length ? (
        <>
          <CodexResourceGrid columns="four">
            {visiblePokemon.map((pokemon, index) => (
              <div
                key={pokemon.id}
                ref={
                  index === preloadTriggerIndex ? preloadTriggerRef : undefined
                }
                className="h-full"
              >
                <PokedexPokemonCard pokemon={pokemon} priority={index < 4} />
              </div>
            ))}
          </CodexResourceGrid>
        </>
      ) : (
        <CodexEmptyState
          title="No Pokémon found"
          description="Try a different name or National Pokédex number."
        />
      )}
    </>
  );
};
