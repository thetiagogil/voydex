"use client";

import { CodexFilterPanel } from "@/modules/codex/components/codex-browse";
import type {
  Generation,
  PokedexCategoryFilter,
  PokedexPageFilters,
  Type,
} from "@/modules/codex/types";
import { cn } from "@/lib/utils";
import { PokemonTypeIcon } from "@/shared/components/pokemon/pokemon-type-icon";
import { pokemonTypeClassNames } from "@/shared/components/pokemon/type-styles";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokedexFilterFormProps = {
  filters: PokedexPageFilters;
  generations: Generation[];
  onCategoryChange: (category: PokedexCategoryFilter) => void;
  onGenerationChange: (generation: string) => void;
  onQueryChange: (query: string) => void;
  onTypeChange: (type: string) => void;
  types: Type[];
};

const categoryOptions: Array<{
  label: string;
  value: string;
}> = [
  { label: "All categories", value: "" },
  { label: "Standard", value: "standard" },
  { label: "Baby", value: "baby" },
  { label: "Legendary", value: "legendary" },
  { label: "Mythical", value: "mythical" },
];

const getTypeOptionIcon = (type: Type) => {
  if (!isPokemonTypeSlug(type.slug)) {
    return null;
  }

  const typeClassNames = pokemonTypeClassNames[type.slug];

  return (
    <span
      className={cn(
        "flex size-5 items-center justify-center rounded-full",
        typeClassNames.solidBackground,
      )}
    >
      <PokemonTypeIcon type={type.slug} className="size-3" />
    </span>
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
      <InputGroup className="h-10 flex-1">
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
        size="lg"
        className="w-full lg:w-44"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        value={filters.type}
        onValueChange={onTypeChange}
        options={typeOptions}
        placeholder="All types"
        size="lg"
        className="w-full lg:w-40"
      />
      <SelectControl
        name="category"
        ariaLabel="Filter by category"
        value={filters.category === "all" ? "" : filters.category}
        onValueChange={(value) => {
          onCategoryChange(value ? (value as PokedexCategoryFilter) : "all");
        }}
        options={categoryOptions}
        placeholder="All categories"
        size="lg"
        className="w-full lg:w-40"
      />
    </CodexFilterPanel>
  );
};
