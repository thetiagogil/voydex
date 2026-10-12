"use client";

import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-filter-panel";
import type {
  Generation,
  PokedexPageFilters,
  Type,
} from "@/modules/reference/types";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  pokemonCategoryOptions,
  toPokemonCategoryFilterValue,
  type PokemonCategoryFilterValue,
} from "@/modules/reference/features/pokemon/domain/pokemon-categories";

type PokedexFilterFormProps = {
  filters: PokedexPageFilters;
  generations: Generation[];
  onCategoryChange: (category: PokemonCategoryFilterValue) => void;
  onGenerationChange: (generation: string) => void;
  onQueryChange: (query: string) => void;
  onTypeChange: (type: string) => void;
  types: Type[];
};

const categoryFilterOptions = [
  { label: "All categories", value: "" },
  ...pokemonCategoryOptions,
];

const getTypeOptionIcon = (type: Type) => {
  if (!isPokemonTypeSlug(type.slug)) {
    return null;
  }

  return (
    <PokemonTypeMark
      type={type.slug}
      className="size-5"
      iconClassName="size-3"
    />
  );
};

export const PokedexFilterForm = ({
  filters,
  generations,
  onCategoryChange,
  onGenerationChange,
  onQueryChange,
  onTypeChange,
  types,
}: PokedexFilterFormProps) => {
  const generationOptions = [
    { label: "All generations", value: "" },
    ...generations.map((generation) => ({
      label: generation.name,
      value: generation.slug,
    })),
  ];
  const typeOptions = [
    { label: "All types", value: "" },
    ...types.map((type) => ({
      icon: getTypeOptionIcon(type),
      label: type.name,
      value: type.slug,
    })),
  ];

  return (
    <CodexFilterPanel
      variant="bare"
      className="grid-cols-2 gap-2 lg:grid-cols-[minmax(18rem,1fr)_repeat(3,minmax(0,10.5rem))] lg:gap-3"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <SearchControl
        name="q"
        ariaLabel="Search Pokémon"
        value={filters.query}
        onValueChange={onQueryChange}
        placeholder="Search by name or National number"
        className="bg-card col-span-2 h-10 flex-1 lg:col-span-1"
      />
      <SelectControl
        name="generation"
        ariaLabel="Filter by generation"
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={generationOptions}
        placeholder="All generations"
        size="lg"
        className="w-full"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        value={filters.type}
        onValueChange={onTypeChange}
        options={typeOptions}
        placeholder="All types"
        size="lg"
        className="w-full"
      />
      <SelectControl
        name="category"
        ariaLabel="Filter by category"
        value={filters.category === "all" ? "" : filters.category}
        onValueChange={(value) => {
          onCategoryChange(toPokemonCategoryFilterValue(value));
        }}
        options={categoryFilterOptions}
        placeholder="All categories"
        size="lg"
        className="col-span-2 w-full lg:col-span-1"
      />
    </CodexFilterPanel>
  );
};
