"use client";

import {
  pokemonCategoryOptions,
  toPokemonCategoryFilterValue,
  type PokemonCategoryFilterValue,
} from "@/modules/reference/features/pokemon/domain/pokemon-categories";
import { BrowseFilterPanel } from "@/shared/components/browse-filter-panel";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";

type PokedexFilterFormProps = {
  category: PokemonCategoryFilterValue;
  onCategoryChange: (category: PokemonCategoryFilterValue) => void;
  onQueryChange: (query: string) => void;
  query: string;
};

const categoryFilterOptions = [
  { label: "All categories", value: "" },
  ...pokemonCategoryOptions,
];

/* v3's toolbar card: the search, a hairline, then the quiet category select. */
export const PokedexFilterForm = ({
  category,
  onCategoryChange,
  onQueryChange,
  query,
}: PokedexFilterFormProps) => {
  return (
    <BrowseFilterPanel
      className="flex flex-wrap items-center gap-x-3.5 gap-y-2 rounded-lg p-2.5"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <SearchControl
        name="q"
        ariaLabel="Search Pokémon"
        value={query}
        onValueChange={onQueryChange}
        placeholder="Search name or number"
        className="min-w-0 basis-full sm:flex-[1_1_220px]"
      />
      <span
        aria-hidden
        className="bg-line mx-0.5 my-2 hidden w-px self-stretch sm:block"
      />
      <SelectControl
        name="category"
        ariaLabel="Filter by category"
        value={category === "all" ? "" : category}
        onValueChange={(value) => {
          onCategoryChange(toPokemonCategoryFilterValue(value));
        }}
        options={categoryFilterOptions}
        placeholder="All categories"
        variant="ghost"
      />
    </BrowseFilterPanel>
  );
};
