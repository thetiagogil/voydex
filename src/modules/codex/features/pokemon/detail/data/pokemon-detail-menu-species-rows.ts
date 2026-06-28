import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  buildPokemonMenuSpeciesRows,
  comparePokemonSpeciesByNationalNumber,
  matchesPokemonMenuQuery,
  type PokemonMenuSpeciesRow,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { loadChunkedReferenceRows } from "@/modules/codex/features/pokemon/detail/data/reference-row-loaders";
import { isNumber } from "@/modules/codex/shared/data/query-utils";
import type {
  Game,
  Pokedex,
  PokedexEntry,
  PokemonSpecies,
  ResolvedPokemonAvailability,
} from "@/modules/codex/shared/types";

export type { PokemonMenuSpeciesRow } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";

type PagedPokemonMenuSpeciesRowsParams = {
  limit: number;
  offset: number;
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  query: string;
  speciesIds: number[];
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>;
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
