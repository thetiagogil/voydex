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
import { PokedexPokemonCard } from "@/modules/codex/features/pokemon/browse/components/pokedex-pokemon-card";
import { groupPokemonByGeneration } from "@/modules/codex/features/pokemon/browse/utils/pokedex-generation-groups";
import {
  filterPokedexPokemon,
  getSearchablePokedexPokemon,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-browse";
import {
  defaultPokedexPageFilters,
  hasActivePokedexFilters,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import { CodexBrowseMeta } from "@/modules/codex/shared/components/codex-browse-meta";
import { CodexEmptyState } from "@/modules/codex/shared/components/codex-empty-state";
import { CodexGenerationSection } from "@/modules/codex/shared/components/codex-generation-section";
import { CodexResourceGrid } from "@/modules/codex/shared/components/codex-resource-grid";
import type {
  PokedexPageData,
  PokedexPageFilters,
} from "@/modules/reference/types";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 48;

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

  const visiblePokemonIndexById = useMemo(
    () =>
      new Map(
        visiblePokemon.map((pokemon, index) => [pokemon.id, index] as const),
      ),
    [visiblePokemon],
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
          <div className="space-y-9">
            {visiblePokemonGenerationGroups.map((group) => (
              <CodexGenerationSection key={group.key} title={group.label}>
                <CodexResourceGrid columns="pokemon">
                  {group.pokemon.map((pokemon) => {
                    const index = visiblePokemonIndexById.get(pokemon.id) ?? -1;

                    return (
                      <div key={pokemon.id} className="h-full">
                        <PokedexPokemonCard
                          pokemon={pokemon}
                          priority={index > -1 && index < 4}
                        />
                      </div>
                    );
                  })}
                </CodexResourceGrid>
              </CodexGenerationSection>
            ))}
            {canLoadMore ? (
              supportsAutomaticLoading ? (
                <div
                  ref={automaticLoadTriggerRef}
                  className="h-px"
                  aria-hidden
                />
              ) : (
                <div className="flex justify-center pt-1">
                  <Button
                    type="button"
                    variant="outline"
                    size="lg"
                    onClick={loadMorePokemon}
                  >
                    Show more Pokémon
                  </Button>
                </div>
              )
            ) : null}
          </div>
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
