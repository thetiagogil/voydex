"use client";

import { CollectionEmpty } from "@/components/features/collection/collection-empty";
import { CollectionFilters } from "@/components/features/collection/collection-filters";
import { CollectionGrid } from "@/components/features/collection/collection-grid";
import { CollectionHeader } from "@/components/features/collection/collection-header";
import { ResultsInfo } from "@/components/features/shared/results-info";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { useCollection } from "@/hooks/gameplay/useCollection";
import { useTypes } from "@/hooks/meta/useTypes";
import { useGenerations } from "@/hooks/useGenerations";
import { useMemo, useState } from "react";

export default function CollectionPage() {
  const { data: collection, isLoading } = useCollection();
  const { data: generations } = useGenerations();
  const { data: types } = useTypes();

  const [search, setSearch] = useState("");
  const [generationFilter, setGenerationFilter] = useState<string>("all");
  const [typeFilter, setTypeFilter] = useState<string>("all");
  const [shinyFilter, setShinyFilter] = useState<string>("all");

  // Filter pokemon
  const filteredPokemon = useMemo(() => {
    if (!collection) return [];

    return collection.filter((pokemon) => {
      // Search filter
      const matchesSearch =
        search === "" ||
        (pokemon.nickname?.toLowerCase().includes(search.toLowerCase()) ??
          false) ||
        pokemon.species.name.toLowerCase().includes(search.toLowerCase()) ||
        pokemon.species.nationalNumber.toString().includes(search);

      // Generation filter
      const matchesGeneration =
        generationFilter === "all" ||
        pokemon.game.generation.id.toString() === generationFilter;

      // Type filter
      const matchesType =
        typeFilter === "all" ||
        pokemon.types.some(
          (type: { id: number; slug: string; name: string }) =>
            type.id.toString() === typeFilter,
        );

      // Shiny filter
      const matchesShiny =
        shinyFilter === "all" ||
        (shinyFilter === "shiny" && pokemon.isShiny) ||
        (shinyFilter === "normal" && !pokemon.isShiny);

      return matchesSearch && matchesGeneration && matchesType && matchesShiny;
    });
  }, [collection, search, generationFilter, typeFilter, shinyFilter]);

  // Sort by national dex number
  const sortedPokemon = useMemo(() => {
    return [...filteredPokemon].sort((a, b) => {
      return a.species.nationalNumber - b.species.nationalNumber;
    });
  }, [filteredPokemon]);

  // Calculate stats
  const uniqueSpecies = useMemo(() => {
    if (!collection) return 0;
    return new Set(collection.map((p) => p.species.id)).size;
  }, [collection]);

  const shinyCount = useMemo(() => {
    if (!collection) return 0;
    return collection.filter((p) => p.isShiny).length;
  }, [collection]);

  const hasFilters =
    search !== "" ||
    generationFilter !== "all" ||
    typeFilter !== "all" ||
    shinyFilter !== "all";

  const handleClearFilters = () => {
    setSearch("");
    setGenerationFilter("all");
    setTypeFilter("all");
    setShinyFilter("all");
  };

  if (isLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  return (
    <PageLayout>
      <div className="flex flex-col gap-4">
        <CollectionHeader
          totalCount={collection?.length || 0}
          uniqueSpecies={uniqueSpecies}
          shinyCount={shinyCount}
        />

        <CollectionFilters
          search={search}
          generationFilter={generationFilter}
          typeFilter={typeFilter}
          shinyFilter={shinyFilter}
          generations={generations || []}
          types={types || []}
          onSearchChange={setSearch}
          onGenerationFilterChange={setGenerationFilter}
          onTypeFilterChange={setTypeFilter}
          onShinyFilterChange={setShinyFilter}
        />

        <ResultsInfo
          count={sortedPokemon.length}
          hasFilters={hasFilters}
          onClearFilters={handleClearFilters}
        />

        {sortedPokemon.length > 0 ? (
          <CollectionGrid pokemon={sortedPokemon} />
        ) : (
          <CollectionEmpty
            hasFilters={hasFilters}
            onClearFilters={handleClearFilters}
          />
        )}
      </div>
    </PageLayout>
  );
}
