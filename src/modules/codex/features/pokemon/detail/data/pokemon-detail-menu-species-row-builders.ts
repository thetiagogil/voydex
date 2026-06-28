import { byId } from "@/modules/codex/shared/data/query-utils";
import type {
  Pokedex,
  PokedexEntry,
  PokemonDetailMenuGroup,
  PokemonSpecies,
} from "@/modules/codex/shared/types";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

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

const comparePokedexes = (firstPokedex: Pokedex, secondPokedex: Pokedex) => {
  return (
    firstPokedex.sort_order - secondPokedex.sort_order ||
    firstPokedex.name.localeCompare(secondPokedex.name)
  );
};

const comparePokedexEntries = (
  firstEntry: PokedexEntry,
  secondEntry: PokedexEntry,
) => {
  return (
    firstEntry.pokedex_number - secondEntry.pokedex_number ||
    firstEntry.species_id - secondEntry.species_id
  );
};

const getPokedexGroup = (pokedex: Pokedex): PokemonDetailMenuGroup => {
  return {
    key: `pokedex:${pokedex.id}`,
    kind: pokedex.pokedex_kind,
    name: formatPokedexName(pokedex.name),
  };
};

const getOtherAvailablePokemonGroup = (): PokemonDetailMenuGroup => {
  return {
    key: "other-available",
    kind: "availability",
    name: "Other available Pokémon",
  };
};

const getPrimaryMenuPokedexes = (pokedexes: Pokedex[]) => {
  const completionRelevantLocalPokedexes = pokedexes.filter((pokedex) => {
    return (
      pokedex.is_completion_relevant && pokedex.pokedex_kind !== "national"
    );
  });

  if (completionRelevantLocalPokedexes.length) {
    return completionRelevantLocalPokedexes.sort(comparePokedexes);
  }

  return pokedexes
    .filter((pokedex) => {
      return pokedex.pokedex_kind !== "national";
    })
    .sort(comparePokedexes);
};

const getNationalMenuPokedex = (pokedexes: Pokedex[]) => {
  return (
    pokedexes
      .filter((pokedex) => {
        return pokedex.pokedex_kind === "national";
      })
      .sort(comparePokedexes)[0] ?? null
  );
};

const getPokedexEntriesByPokedexId = (entries: PokedexEntry[]) => {
  const entriesByPokedexId = new Map<number, PokedexEntry[]>();

  for (const entry of entries) {
    const currentEntries = entriesByPokedexId.get(entry.pokedex_id) ?? [];

    currentEntries.push(entry);
    entriesByPokedexId.set(entry.pokedex_id, currentEntries);
  }

  for (const [pokedexId, pokedexEntries] of entriesByPokedexId) {
    entriesByPokedexId.set(
      pokedexId,
      pokedexEntries.sort(comparePokedexEntries),
    );
  }

  return entriesByPokedexId;
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
}: {
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  species: PokemonSpecies[];
}) => {
  const rows: PokemonMenuSpeciesRow[] = [];
  const seenSpeciesIds = new Set<number>();
  const speciesById = byId(species);
  const entriesByPokedexId = getPokedexEntriesByPokedexId(pokedexEntries);
  const primaryPokedexes = getPrimaryMenuPokedexes(pokedexes);
  const nationalPokedex = getNationalMenuPokedex(pokedexes);
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
