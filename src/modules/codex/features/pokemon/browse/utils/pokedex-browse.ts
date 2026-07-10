import type {
  PokedexPageFilters,
  PokedexPokemonBrowseCard,
} from "@/modules/reference/types";
import { matchesPokemonCategory } from "@/modules/reference/features/pokemon/domain/pokemon-categories";
import { formatPokemonNationalNumberDigits } from "@/modules/reference/features/pokemon/display/pokemon-formatters";

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

    if (!matchesPokemonCategory(entry, filters.category)) {
      continue;
    }

    filteredPokemon.push(entry);
  }

  return filteredPokemon;
};
