import type {
  Pokedex,
  PokedexEntry,
  VersionGroup,
} from "@/modules/reference/types";

const fallbackSortOrder = Number.MAX_SAFE_INTEGER;

/*
 * A version group's Pokédexes in reading order: the group's own before its
 * expansions', each in its own order, and the National Pokédex last, after
 * the regional ones a player works through.
 */
export const sortVersionGroupPokedexes = (
  pokedexes: Pokedex[],
  versionGroupById: Map<number, VersionGroup>,
) => {
  const isNational = (pokedex: Pokedex) => pokedex.pokedex_kind === "national";
  const getVersionGroupOrder = (pokedex: Pokedex) =>
    versionGroupById.get(pokedex.version_group_id)?.sort_order ??
    fallbackSortOrder;

  return pokedexes.toSorted(
    (first, second) =>
      Number(isNational(first)) - Number(isNational(second)) ||
      getVersionGroupOrder(first) - getVersionGroupOrder(second) ||
      first.sort_order - second.sort_order,
  );
};

/*
 * How many Pokémon each Pokédex lists, by Pokédex id: its species, so a
 * species listed with more than one form counts once.
 */
export const getPokedexPokemonCounts = (
  entries: Pick<PokedexEntry, "pokedex_id" | "species_id">[],
) => {
  const speciesIdsByPokedexId = new Map<number, Set<number>>();

  for (const entry of entries) {
    const speciesIds =
      speciesIdsByPokedexId.get(entry.pokedex_id) ?? new Set<number>();

    speciesIds.add(entry.species_id);
    speciesIdsByPokedexId.set(entry.pokedex_id, speciesIds);
  }

  return new Map(
    Array.from(speciesIdsByPokedexId, ([pokedexId, speciesIds]) => [
      pokedexId,
      speciesIds.size,
    ]),
  );
};
