import type { Pokedex, VersionGroup } from "@/modules/reference/types";

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
