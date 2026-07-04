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
import {
  filterPokedexPokemon,
  getSearchablePokedexPokemon,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-browse";
import {
  defaultPokedexPageFilters,
  hasActivePokedexFilters,
} from "@/modules/codex/features/pokemon/browse/utils/pokedex-filters";
import {
  CodexBrowseMeta,
  CodexEmptyState,
  CodexGenerationSection,
  CodexResourceGrid,
} from "@/modules/codex/shared/components/codex-browse";
import type {
  Generation,
  PokedexPageData,
  PokedexPageFilters,
  PokedexPokemonBrowseCard,
} from "@/modules/codex/shared/types";
import { Button } from "@/shared/components/ui/button";

type PokedexBrowserProps = {
  data: PokedexPageData;
};

const INITIAL_VISIBLE_POKEMON = 96;
const VISIBLE_POKEMON_INCREMENT = 96;

type PokedexPokemonGenerationGroup = {
  key: string;
  label: string;
  pokemon: PokedexPokemonBrowseCard[];
};

const groupPokemonByGeneration = (
  pokemon: PokedexPokemonBrowseCard[],
  generations: Generation[],
) => {
  const generationSlugSet = new Set(
    generations.map((generation) => generation.slug),
  );
  const pokemonByGenerationSlug = new Map<string, PokedexPokemonBrowseCard[]>();
  const unknownGenerationPokemon: PokedexPokemonBrowseCard[] = [];

  for (const entry of pokemon) {
    const generationSlug = entry.introducedGeneration?.slug;

    if (!generationSlug) {
      unknownGenerationPokemon.push(entry);
      continue;
    }

    const generationPokemon = pokemonByGenerationSlug.get(generationSlug) ?? [];
    generationPokemon.push(entry);
    pokemonByGenerationSlug.set(generationSlug, generationPokemon);
  }

  const groups: PokedexPokemonGenerationGroup[] = generations.flatMap(
    (generation) => {
      const generationPokemon = pokemonByGenerationSlug.get(generation.slug);

      return generationPokemon?.length
        ? [
            {
              key: generation.slug,
              label: generation.name,
              pokemon: generationPokemon,
            },
          ]
        : [];
    },
  );

  for (const [generationSlug, generationPokemon] of pokemonByGenerationSlug) {
    if (generationSlugSet.has(generationSlug)) {
      continue;
    }

    groups.push({
      key: generationSlug,
      label:
        generationPokemon[0]?.introducedGeneration?.name ??
        "Unknown generation",
      pokemon: generationPokemon,
    });
  }

  if (unknownGenerationPokemon.length) {
    groups.push({
      key: "unknown",
      label: "Unknown generation",
      pokemon: unknownGenerationPokemon,
    });
  }

  return groups;
};

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
        rootMargin: "720px 0px",
        threshold: 0,
      },
    );

    observer.observe(preloadTriggerElement);

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
          <div className="space-y-10">
            {visiblePokemonGenerationGroups.map((group) => (
              <CodexGenerationSection key={group.key} title={group.label}>
                <CodexResourceGrid columns="five">
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
              <div ref={preloadTriggerRef} className="h-px" aria-hidden />
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
