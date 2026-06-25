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
  PokedexCategoryFilter,
  PokedexPageData,
  PokedexPageFilters,
  PokedexPokemonBrowseCard,
} from "@/modules/codex/types";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

type SearchablePokedexPokemon = PokedexPokemonBrowseCard & {
  searchText: string;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 96;
const PRELOAD_REMAINING_POKEMON = 48;

const formatNationalNumber = (number: number) => {
  return number.toString().padStart(4, "0");
};

const getPokemonSearchText = (pokemon: PokedexPokemonBrowseCard) => {
  const paddedNationalNumber = formatNationalNumber(pokemon.nationalNumber);

  return [
    pokemon.name,
    String(pokemon.nationalNumber),
    paddedNationalNumber,
    `#${paddedNationalNumber}`,
  ]
    .join(" ")
    .toLowerCase();
};

const matchesSearchQuery = (
  pokemon: SearchablePokedexPokemon,
  normalizedQuery: string,
) => {
  if (!normalizedQuery) {
    return true;
  }

  return pokemon.searchText.includes(normalizedQuery);
};

const matchesCategory = (
  pokemon: PokedexPokemonBrowseCard,
  category: PokedexCategoryFilter,
) => {
  if (category === "baby") {
    return pokemon.isBaby;
  }

  if (category === "legendary") {
    return pokemon.isLegendary;
  }

  if (category === "mythical") {
    return pokemon.isMythical;
  }

  if (category === "standard") {
    return !pokemon.isBaby && !pokemon.isLegendary && !pokemon.isMythical;
  }

  return true;
};

const filterPokemon = (
  pokemon: SearchablePokedexPokemon[],
  filters: PokedexPageFilters,
) => {
  const normalizedQuery = filters.query.trim().toLowerCase();
  const filteredPokemon: SearchablePokedexPokemon[] = [];

  for (const entry of pokemon) {
    const matchesGeneration =
      !filters.generation ||
      entry.introducedGeneration?.slug === filters.generation;

    if (!matchesGeneration) {
      continue;
    }

    const matchesType =
      !filters.type ||
      entry.primaryType?.slug === filters.type ||
      entry.secondaryType?.slug === filters.type;

    if (!matchesType) {
      continue;
    }

    if (!matchesSearchQuery(entry, normalizedQuery)) {
      continue;
    }

    if (!matchesCategory(entry, filters.category)) {
      continue;
    }

    filteredPokemon.push(entry);
  }

  return filteredPokemon;
};

const hasActivePokedexFilters = (filters: PokedexPageFilters) => {
  return Boolean(
    filters.query.trim() ||
    filters.category !== "all" ||
    filters.generation ||
    filters.type,
  );
};

export const PokedexBrowser = ({ data }: PokedexBrowserProps) => {
  const [filters, setFilters] = useState(data.filters);
  const [visibleCount, setVisibleCount] = useState(INITIAL_VISIBLE_POKEMON);
  const preloadTriggerRef = useRef<HTMLDivElement | null>(null);

  const deferredFilters = useDeferredValue(filters);

  const searchablePokemon = useMemo(
    () =>
      data.pokemon.map((pokemon) => ({
        ...pokemon,
        searchText: getPokemonSearchText(pokemon),
      })),
    [data.pokemon],
  );

  const filteredPokemon = useMemo(
    () => filterPokemon(searchablePokemon, deferredFilters),
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
    setFilters({
      category: "all",
      generation: "",
      query: "",
      type: "",
    });
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
