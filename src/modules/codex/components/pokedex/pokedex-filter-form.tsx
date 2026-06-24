import { SearchIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { CodexFilterPanel } from "@/modules/codex/components/codex-browse";
import type {
  Generation,
  PokedexPageFilters,
  PokedexRarityFilter,
  Type,
} from "@/modules/codex/types";
import { SelectControl } from "@/shared/components/app/select-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { cn } from "@/lib/utils";

type PokedexFilterFormProps = {
  filters: PokedexPageFilters;
  generations: Generation[];
  hasActiveFilters: boolean;
  searchQuery: string;
  types: Type[];
};

const rarityOptions: Array<{
  label: string;
  value: PokedexRarityFilter;
}> = [
  { label: "All rarity", value: "all" },
  { label: "Standard", value: "standard" },
  { label: "Legendary", value: "legendary" },
  { label: "Mythical", value: "mythical" },
];

export const PokedexFilterForm = ({
  filters,
  generations,
  hasActiveFilters,
  searchQuery,
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
      label: type.name,
      value: type.slug,
    })),
  ];

  return (
    <CodexFilterPanel
      className="lg:grid-cols-[minmax(18rem,1fr)_auto_auto_auto_auto]"
      action={appRoutes.codexPokemon}
    >
      <InputGroup className="h-10 flex-1">
        <InputGroupAddon>
          <SearchIcon aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          defaultValue={searchQuery}
          placeholder="Search by name or National number"
        />
      </InputGroup>
      <SelectControl
        name="generation"
        ariaLabel="Filter by generation"
        defaultValue={filters.generation}
        options={generationOptions}
        placeholder="All generations"
        className="w-full lg:w-44"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        defaultValue={filters.type}
        options={typeOptions}
        placeholder="All types"
        className="w-full lg:w-40"
      />
      <SelectControl
        name="rarity"
        ariaLabel="Filter by rarity"
        defaultValue={filters.rarity}
        options={rarityOptions}
        placeholder="All rarity"
        className="w-full lg:w-40"
      />
      <div className="flex gap-2">
        <Button type="submit" className="flex-1 sm:flex-none">
          Search
        </Button>
        {hasActiveFilters ? (
          <Link
            href={appRoutes.codexPokemon}
            className={cn(
              buttonVariants({ variant: "outline" }),
              "flex-1 sm:flex-none",
            )}
          >
            Clear
          </Link>
        ) : null}
      </div>
    </CodexFilterPanel>
  );
};
