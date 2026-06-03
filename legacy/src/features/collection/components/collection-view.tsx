"use client";

import type { CollectionPokemon } from "@/features/collection/types";
import { ResultsInfo } from "@/shared/components/results-info";
import { useGenerations, useTypes } from "@/shared/hooks/useReference";
import { useMemo, useState } from "react";
import { CollectionEmpty } from "./collection-empty";
import { CollectionFilters } from "./collection-filters";
import { CollectionGrid } from "./collection-grid";
import { CollectionHeader } from "./collection-header";

type CollectionViewProps = {
  initialCollection: CollectionPokemon[];
};

export const CollectionView = ({ initialCollection }: CollectionViewProps) => {
  const collection = initialCollection;
  const { data: generations } = useGenerations();
  const { data: types } = useTypes();

  const [search, setSearch] = useState("");
  const [generationFilter, setGenerationFilter] = useState<string>("all");
  const [typeFilter, setTypeFilter] = useState<string>("all");
  const [shinyFilter, setShinyFilter] = useState<string>("all");

  const filteredPokemon = useMemo(() => {
    if (!collection) return [];

    return collection.filter((pokemon) => {
      const matchesSearch =
        search === "" ||
        (pokemon.nickname?.toLowerCase().includes(search.toLowerCase()) ??
          false) ||
        pokemon.species.name.toLowerCase().includes(search.toLowerCase()) ||
        pokemon.species.id.toString().includes(search);

      const matchesGeneration =
        generationFilter === "all" ||
        pokemon.game?.generation.id.toString() === generationFilter;

      const matchesType =
        typeFilter === "all" ||
        pokemon.types.some((type) => type.id.toString() === typeFilter);

      const matchesShiny =
        shinyFilter === "all" ||
        (shinyFilter === "shiny" && pokemon.isShiny) ||
        (shinyFilter === "normal" && !pokemon.isShiny);

      return matchesSearch && matchesGeneration && matchesType && matchesShiny;
    });
  }, [collection, search, generationFilter, typeFilter, shinyFilter]);

  const sortedPokemon = useMemo(() => {
    return [...filteredPokemon].sort((a, b) => a.species.id - b.species.id);
  }, [filteredPokemon]);

  const uniqueSpecies = useMemo(() => {
    if (!collection) return 0;
    return new Set(collection.map((pokemon) => pokemon.species.id)).size;
  }, [collection]);

  const shinyCount = useMemo(() => {
    if (!collection) return 0;
    return collection.filter((pokemon) => pokemon.isShiny).length;
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

  return (
    <div className="flex flex-col gap-4">
      <CollectionHeader
        totalCount={collection?.length ?? 0}
        uniqueSpecies={uniqueSpecies}
        shinyCount={shinyCount}
      />

      <CollectionFilters
        search={search}
        generationFilter={generationFilter}
        typeFilter={typeFilter}
        shinyFilter={shinyFilter}
        generations={generations ?? []}
        types={types ?? []}
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
  );
};
