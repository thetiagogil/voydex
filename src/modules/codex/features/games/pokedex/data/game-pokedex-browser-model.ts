import type {
  GamePokedexData,
  GamePokedexPokemon,
} from "@/modules/reference/types";
import { formatPokemonNationalNumberDigits } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

export type GamePokedexFilters = {
  query: string;
  type: string;
};

export type GamePokedexSortKey = "name" | "national" | "regional";

export type GamePokedexView = "grid" | "table";

export type SearchableGamePokedexPokemon = GamePokedexPokemon & {
  searchText: string;
};

export type GamePokedexStatKey =
  | "base_attack"
  | "base_defense"
  | "base_hp"
  | "base_special_attack"
  | "base_special_defense"
  | "base_speed";

export type GamePokedexStatColumn = {
  key: GamePokedexStatKey;
  label: string;
};

export const defaultGamePokedexFilters: GamePokedexFilters = {
  query: "",
  type: "",
};

const modernStatColumns = [
  {
    key: "base_hp",
    label: "HP",
  },
  {
    key: "base_attack",
    label: "Atk",
  },
  {
    key: "base_defense",
    label: "Def",
  },
  {
    key: "base_special_attack",
    label: "SpA",
  },
  {
    key: "base_special_defense",
    label: "SpD",
  },
  {
    key: "base_speed",
    label: "Spe",
  },
] satisfies GamePokedexStatColumn[];

const generationOneStatColumns = [
  {
    key: "base_hp",
    label: "HP",
  },
  {
    key: "base_attack",
    label: "Atk",
  },
  {
    key: "base_defense",
    label: "Def",
  },
  {
    key: "base_special_attack",
    label: "Special",
  },
  {
    key: "base_speed",
    label: "Spe",
  },
] satisfies GamePokedexStatColumn[];

export const getGamePokedexStatColumns = (data: GamePokedexData) => {
  return data.generation.sort_order === 1
    ? generationOneStatColumns
    : modernStatColumns;
};

export const getGamePokedexTableMinWidthClassName = (
  hasAbilities: boolean,
  statColumns: GamePokedexStatColumn[],
) => {
  if (statColumns.length === generationOneStatColumns.length) {
    return hasAbilities ? "xl:min-w-248" : "xl:min-w-196";
  }

  return hasAbilities ? "xl:min-w-260" : "xl:min-w-208";
};

export const formatLocalPokedexNumber = (pokedexNumber: number) => {
  return pokedexNumber.toString().padStart(3, "0");
};

const getPokemonSearchText = (pokemon: GamePokedexPokemon) => {
  const localPokedexNumber = formatLocalPokedexNumber(
    pokemon.entry.pokedex_number,
  );
  const nationalNumber = formatPokemonNationalNumberDigits(
    pokemon.species.national_number,
  );
  const abilityNames = pokemon.abilities.map(({ ability }) => ability.name);

  return [
    pokemon.species.name,
    pokemon.species.national_number,
    nationalNumber,
    `#${nationalNumber}`,
    pokemon.entry.pokedex_number,
    localPokedexNumber,
    `#${localPokedexNumber}`,
    ...abilityNames,
  ]
    .join(" ")
    .toLowerCase();
};

export const getSearchableGamePokedexPokemon = (
  pokemon: GamePokedexPokemon[],
) => {
  return pokemon.map((entry) => ({
    ...entry,
    searchText: getPokemonSearchText(entry),
  }));
};

export const filterGamePokedexPokemon = (
  pokemon: SearchableGamePokedexPokemon[],
  filters: GamePokedexFilters,
) => {
  const normalizedQuery = filters.query.trim().toLowerCase();

  return pokemon.filter((entry) => {
    const matchesQuery =
      !normalizedQuery || entry.searchText.includes(normalizedQuery);
    const matchesType =
      !filters.type ||
      entry.typePair.primaryType?.slug === filters.type ||
      entry.typePair.secondaryType?.slug === filters.type;

    return matchesQuery && matchesType;
  });
};

/* Entries arrive in the game's own numbering; the other orders are re-sorted copies. */
export const sortGamePokedexPokemon = <TPokemon extends GamePokedexPokemon>(
  pokemon: TPokemon[],
  sortKey: GamePokedexSortKey,
) => {
  if (sortKey === "national") {
    return pokemon.toSorted(
      (first, second) =>
        first.species.national_number - second.species.national_number ||
        first.entry.pokedex_number - second.entry.pokedex_number,
    );
  }

  if (sortKey === "name") {
    return pokemon.toSorted(
      (first, second) =>
        first.species.name.localeCompare(second.species.name) ||
        first.entry.pokedex_number - second.entry.pokedex_number,
    );
  }

  return pokemon;
};

export const hasActiveGamePokedexFilters = (filters: GamePokedexFilters) => {
  return filters.query.trim() !== "" || filters.type !== "";
};
