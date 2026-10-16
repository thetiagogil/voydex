import {
  buildPokemonMenuSpeciesRows,
  comparePokemonSpeciesByNationalNumber,
  matchesPokemonMenuQuery,
  type PokemonMenuSpeciesRow,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import { isNumber } from "@/modules/reference/reference-data";
import type {
  Pokedex,
  PokedexEntry,
  PokemonSpecies,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/reference/types";

type PagedPokemonMenuSpeciesRowsParams = {
  limit: number;
  offset: number;
  pokedexEntries: PokedexEntry[];
  pokedexes: Pokedex[];
  query: string;
  species: PokemonSpecies[];
  versionGroups: VersionGroup[];
};

/* Every species found anywhere in the group, in any of its games. */
export const getSpeciesIdsForVersionGroups = (
  availabilityRows: ResolvedPokemonAvailability[],
) => {
  return [
    ...new Set(availabilityRows.map((row) => row.species_id).filter(isNumber)),
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
