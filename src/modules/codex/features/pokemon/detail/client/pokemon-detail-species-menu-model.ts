import { appRoutes } from "@/config/routes";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

export type PokemonMenuLoadState = "idle" | "loading" | "loaded" | "error";

export type PokemonMenuLoadMode = "append" | "replace";

export type PokemonMenuState = {
  gameSlug: string | null;
  items: PokemonDetailMenuPokemon[];
  loadState: PokemonMenuLoadState;
  loadingMore: boolean;
  nextOffset: number | null;
  query: string;
  total: number;
};

export const PRELOAD_REMAINING_POKEMON = 48;

export const createPokemonMenuState = (
  gameSlug: string | null,
  query = "",
): PokemonMenuState => {
  return {
    gameSlug,
    items: [],
    loadState: gameSlug ? "idle" : "loaded",
    loadingMore: false,
    nextOffset: null,
    query,
    total: 0,
  };
};

export const normalizePokemonMenuQuery = (query: string) => {
  return query.trim();
};

export const mergePokemonMenuItems = (
  currentItems: PokemonDetailMenuPokemon[],
  nextItems: PokemonDetailMenuPokemon[],
) => {
  const pokemonBySlug = new Map<string, PokemonDetailMenuPokemon>();

  for (const pokemonItem of currentItems) {
    pokemonBySlug.set(pokemonItem.slug, pokemonItem);
  }

  for (const pokemonItem of nextItems) {
    pokemonBySlug.set(pokemonItem.slug, pokemonItem);
  }

  return [...pokemonBySlug.values()];
};

export const getPokemonMenuEmptyLabel = (
  loadState: PokemonMenuLoadState,
  activeGameSlug: string | null,
) => {
  if (!activeGameSlug) {
    return "No game selected.";
  }

  if (loadState === "error") {
    return "Could not load Pokémon.";
  }

  return "No Pokémon found.";
};

export const getPokemonPortraitType = (pokemon: PokemonDetailMenuPokemon) => {
  const primaryTypeSlug = pokemon.primaryType?.slug;

  return primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
    ? primaryTypeSlug
    : null;
};

export const getPokemonHref = (
  gameSlug: string | null,
  pokemon: PokemonDetailMenuPokemon,
) => {
  return gameSlug
    ? appRoutes.codexPokemonGameSpecies(gameSlug, pokemon.slug)
    : appRoutes.codexPokemonSpecies(pokemon.slug);
};

export const getPokemonSearchValue = (pokemon: PokemonDetailMenuPokemon) => {
  const formattedNumber = formatPokemonNationalNumber(pokemon.nationalNumber);
  const formattedPokedexNumber = pokemon.pokedexNumber
    ? formatPokemonNationalNumber(pokemon.pokedexNumber)
    : "";

  return [
    formattedNumber,
    pokemon.nationalNumber,
    formattedPokedexNumber,
    pokemon.pokedexNumber,
    pokemon.name,
    pokemon.pokedexGroup?.name,
  ]
    .filter(Boolean)
    .join(" ");
};

export const isPokemonItemEqual = (
  item: PokemonDetailMenuPokemon,
  value: PokemonDetailMenuPokemon,
) => {
  return item.slug === value.slug;
};

export const getPokemonMenuGroupHeaderBySlug = (
  pokemonItems: PokemonDetailMenuPokemon[],
) => {
  const groupHeaderBySlug = new Map<string, string>();
  let previousGroupKey: string | null = null;

  for (const pokemonItem of pokemonItems) {
    const group = pokemonItem.pokedexGroup;
    const groupKey = group?.key ?? "ungrouped";

    if (group && groupKey !== previousGroupKey) {
      groupHeaderBySlug.set(pokemonItem.slug, group.name);
    }

    previousGroupKey = groupKey;
  }

  return groupHeaderBySlug;
};
