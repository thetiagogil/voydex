import {
  buildPokemonMenuSpeciesRows,
  comparePokemonSpeciesByNationalNumber,
  matchesPokemonMenuQuery,
  type PokemonMenuSpeciesRow,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { isNumber } from "@/modules/codex/shared/data/reference-data-utils";
import type {
  Game,
  Pokedex,
  PokedexEntry,
  PokemonSpecies,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/codex/shared/types";

type PagedPokemonMenuSpeciesRowsParams = {
  limit: number;
  offset: number;
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  query: string;
  species: PokemonSpecies[];
  versionGroups: VersionGroup[];
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

export const getPagedPokemonMenuSpeciesRows = ({
  limit,
  offset,
  pokedexEntries,
  pokedexes,
  query,
  species,
  versionGroups,
}: PagedPokemonMenuSpeciesRowsParams) => {
  const rows = buildPokemonMenuSpeciesRows({
    pokedexEntries,
    pokedexes,
    species: species.sort(comparePokemonSpeciesByNationalNumber),
    versionGroups,
  });
  const filteredRows = rows.filter((row) => {
    return matchesPokemonMenuQuery(row.species, query, row.pokedexNumber);
  });

  const page: PokemonMenuSpeciesRow[] = filteredRows.slice(
    offset,
    offset + limit,
  );

  return {
    page,
    total: filteredRows.length,
  };
};
