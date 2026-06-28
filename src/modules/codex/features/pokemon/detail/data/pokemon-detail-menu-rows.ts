import { createServerSupabaseClient } from "@/lib/supabase/server";
import { byId, isNumber } from "@/modules/codex/shared/data/query-utils";
import type {
  Game,
  Pokedex,
  PokedexEntry,
  PokemonDetailMenuGroup,
  PokemonSpecies,
  ResolvedPokemonAvailability,
} from "@/modules/codex/shared/types";
import { loadChunkedReferenceRows } from "@/modules/codex/features/pokemon/detail/data/reference-row-loaders";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

export type PokemonMenuSpeciesRow = {
  species: PokemonSpecies;
  pokedexGroup: PokemonDetailMenuGroup | null;
  pokedexNumber: number | null;
};

type PagedPokemonMenuSpeciesRowsParams = {
  limit: number;
  offset: number;
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  query: string;
  speciesIds: number[];
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>;
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

const comparePokemonSpeciesByNationalNumber = (
  firstSpecies: PokemonSpecies,
  secondSpecies: PokemonSpecies,
) => {
  return firstSpecies.national_number - secondSpecies.national_number;
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

const matchesPokemonMenuQuery = (
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

export const getSpeciesIdsForGame = (
  availabilityRows: ResolvedPokemonAvailability[],
  game: Game,
) => {
  return [
    ...new Set(
      availabilityRows
        .filter((row) => {
          return !row.game_id || row.game_id === game.id;
        })
        .map((row) => row.species_id)
        .filter(isNumber),
    ),
  ];
};

export const loadPokedexRowsForVersionGroup = async (
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>,
  versionGroupId: number,
) => {
  const pokedexResult = await supabase
    .schema("reference")
    .from("pokedex")
    .select("*")
    .eq("version_group_id", versionGroupId)
    .order("sort_order", { ascending: true });

  if (pokedexResult.error) {
    throw new Error("Unable to load game Pokédex definitions.");
  }

  const pokedexes = pokedexResult.data ?? [];
  const pokedexIds = pokedexes.map((pokedex) => pokedex.id);
  const pokedexEntries = pokedexIds.length
    ? await loadChunkedReferenceRows<PokedexEntry>(
        pokedexIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokedex_entries")
            .select("*")
            .in("pokedex_id", ids)
            .order("pokedex_id", { ascending: true })
            .order("pokedex_number", { ascending: true })
            .range(from, to),
        "Unable to load game Pokédex entries.",
      )
    : [];

  return {
    pokedexEntries,
    pokedexes,
  };
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

export const getPagedPokemonMenuSpeciesRows = async ({
  limit,
  offset,
  pokedexEntries,
  pokedexes,
  query,
  speciesIds,
  supabase,
}: PagedPokemonMenuSpeciesRowsParams) => {
  if (!speciesIds.length) {
    return {
      page: [] as PokemonMenuSpeciesRow[],
      total: 0,
    };
  }

  const species = await loadChunkedReferenceRows<PokemonSpecies>(
    speciesIds,
    (ids, from, to) =>
      supabase
        .schema("reference")
        .from("pokemon_species")
        .select("*")
        .in("id", ids)
        .order("national_number", { ascending: true })
        .range(from, to),
    "Unable to load game Pokémon species data.",
  );
  const rows = buildPokemonMenuSpeciesRows({
    pokedexEntries,
    pokedexes,
    species: species.sort(comparePokemonSpeciesByNationalNumber),
  });
  const filteredRows = rows.filter((row) => {
    return matchesPokemonMenuQuery(row.species, query, row.pokedexNumber);
  });

  return {
    page: filteredRows.slice(offset, offset + limit),
    total: filteredRows.length,
  };
};
