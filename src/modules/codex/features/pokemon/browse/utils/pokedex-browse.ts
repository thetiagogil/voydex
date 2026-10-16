import type {
  PokedexPageFilters,
  PokedexPokemonBrowseCard,
} from "@/modules/reference/types";
import { formatPokemonNationalNumberDigits } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

export type SearchablePokedexPokemon = PokedexPokemonBrowseCard & {
  searchText: string;
};

export const getPokemonSearchText = (pokemon: PokedexPokemonBrowseCard) => {
  const paddedNationalNumber = formatPokemonNationalNumberDigits(
    pokemon.nationalNumber,
  );

  return [
    pokemon.name,
    String(pokemon.nationalNumber),
    paddedNationalNumber,
    `#${paddedNationalNumber}`,
  ]
    .join(" ")
    .toLowerCase();
};

export const getSearchablePokedexPokemon = (
  pokemon: PokedexPokemonBrowseCard[],
) => {
  return pokemon.map((entry) => ({
    ...entry,
    searchText: getPokemonSearchText(entry),
  }));
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

export const filterPokedexPokemon = (
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

    filteredPokemon.push(entry);
  }

  return filteredPokemon;
};

export type PokedexSortKey = "name" | "national";

export const pokedexSortOptions = [
  { label: "National number", value: "national" },
  { label: "Name", value: "name" },
] satisfies { label: string; value: PokedexSortKey }[];

export const isPokedexSortKey = (value: string): value is PokedexSortKey => {
  return pokedexSortOptions.some((option) => option.value === value);
};

/*
 * Species arrive in national order; by name they are re-sorted, and still
 * grouped by the generation they were introduced in.
 */
export const sortPokedexPokemon = <TPokemon extends PokedexPokemonBrowseCard>(
  pokemon: TPokemon[],
  sortKey: PokedexSortKey,
) => {
  if (sortKey === "name") {
    return pokemon.toSorted(
      (first, second) =>
        first.name.localeCompare(second.name) ||
        first.nationalNumber - second.nationalNumber,
    );
  }

  return pokemon;
};
