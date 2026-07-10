"use client";

import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-filter-panel";
import type {
  Generation,
  PokedexPageFilters,
  Type,
} from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
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
      className="lg:grid-cols-[minmax(18rem,1fr)_auto_auto_auto]"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <InputGroup className="flex-1">
        <InputGroupAddon>
          <AppIcon icon={appIcons.actions.search} aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          value={filters.query}
          onChange={(event) => {
            onQueryChange(event.currentTarget.value);
          }}
          placeholder="Search by name or National number"
        />
      </InputGroup>
      <SelectControl
        name="generation"
        ariaLabel="Filter by generation"
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={generationOptions}
        placeholder="All generations"
        className="w-full lg:w-44"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        value={filters.type}
        onValueChange={onTypeChange}
        options={typeOptions}
        placeholder="All types"
        className="w-full lg:w-40"
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
        className="w-full lg:w-40"
      />
    </CodexFilterPanel>
  );
};
