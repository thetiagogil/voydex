import { byId } from "@/modules/reference/reference-data";
import type {
  Pokedex,
  PokedexEntry,
  PokemonDetailMenuGroup,
  PokemonSpecies,
  VersionGroup,
} from "@/modules/reference/types";
import {
  getNationalMenuPokedex,
  getOtherAvailablePokemonGroup,
  getPokedexEntriesByPokedexId,
  getPokedexGroup,
  getPrimaryMenuPokedexes,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-pokedexes";

export type PokemonMenuSpeciesRow = {
  species: PokemonSpecies;
  pokedexGroup: PokemonDetailMenuGroup | null;
  pokedexNumber: number | null;
};

export const comparePokemonSpeciesByNationalNumber = (
  firstSpecies: PokemonSpecies,
  secondSpecies: PokemonSpecies,
) => {
  return firstSpecies.national_number - secondSpecies.national_number;
};

export const matchesPokemonMenuQuery = (
  pokemonSpecies: PokemonSpecies,
  query: string,
  pokedexNumber?: number | null,
) => {
  if (!query) {
    return true;
  }

  const normalizedQuery = query.replace(/^#+/, "");
  const normalizedNumber = String(pokemonSpecies.national_number);
  const paddedNumber = normalizedNumber.padStart(4, "0");
  const normalizedPokedexNumber = pokedexNumber ? String(pokedexNumber) : null;
  const paddedPokedexNumber = normalizedPokedexNumber?.padStart(4, "0");

  return (
    pokemonSpecies.name.toLowerCase().includes(query) ||
    pokemonSpecies.slug.toLowerCase().includes(query) ||
    normalizedNumber.includes(normalizedQuery) ||
    paddedNumber.includes(normalizedQuery) ||
    Boolean(normalizedPokedexNumber?.includes(normalizedQuery)) ||
    Boolean(paddedPokedexNumber?.includes(normalizedQuery))
  );
};

export const buildPokemonMenuSpeciesRows = ({
  pokedexEntries,
  pokedexes,
  species,
  versionGroups,
}: {
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
  versionGroups: VersionGroup[];
}) => {
  const rows: PokemonMenuSpeciesRow[] = [];
  const seenSpeciesIds = new Set<number>();
  const speciesById = byId(species);
  const entriesByPokedexId = getPokedexEntriesByPokedexId(pokedexEntries);
  const primaryPokedexes = getPrimaryMenuPokedexes({
    pokedexes,
    versionGroups,
  });
  const nationalPokedex = getNationalMenuPokedex({
    pokedexes,
    versionGroups,
  });
  const orderedPokedexes = nationalPokedex
    ? [...primaryPokedexes, nationalPokedex]
    : primaryPokedexes;

  for (const pokedex of orderedPokedexes) {
    const entries = entriesByPokedexId.get(pokedex.id) ?? [];
    const pokedexGroup = getPokedexGroup(pokedex);

    for (const entry of entries) {
      const pokemonSpecies = speciesById.get(entry.species_id);

      if (!pokemonSpecies || seenSpeciesIds.has(pokemonSpecies.id)) {
        continue;
      }

      seenSpeciesIds.add(pokemonSpecies.id);
      rows.push({
        pokedexGroup,
        pokedexNumber: entry.pokedex_number,
        species: pokemonSpecies,
      });
    }
  }

  const remainingSpecies = species
    .filter((pokemonSpecies) => {
      return !seenSpeciesIds.has(pokemonSpecies.id);
    })
    .sort(comparePokemonSpeciesByNationalNumber);

  if (remainingSpecies.length) {
    const pokedexGroup = getOtherAvailablePokemonGroup();

    for (const pokemonSpecies of remainingSpecies) {
      rows.push({
        pokedexGroup,
        pokedexNumber: null,
        species: pokemonSpecies,
      });
    }
  }

  return rows;
};

export const getPokemonMenuRowBySpeciesId = (rows: PokemonMenuSpeciesRow[]) => {
  return new Map(
    rows.map((row) => {
      return [row.species.id, row];
    }),
  );
};
