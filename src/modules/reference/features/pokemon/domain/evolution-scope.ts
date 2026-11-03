/*
 * The evolution edges a game has, out of every edge seeded for a family.
 *
 * An edge carries the generation that introduced its rule and, when the rule
 * holds only in some games, a version group. For one Pokémon evolving into one
 * species, a game reads:
 *
 *   1. the rows scoped to its version group (an expansion of it included),
 *      when there are any: Mt. Coronet in Brilliant Diamond, Galarian Weezing
 *      for Koffing in Sword;
 *   2. otherwise the unscoped rows of the newest generation at or before its
 *      own, so a method a later generation replaced stays behind: the Thunder
 *      Stone, not Mt. Coronet, follows Magneton into Sword.
 *
 * An edge into a form the game never hands out is dropped when the caller
 * says which forms the game has (Espeon in Let's Go).
 */

export type EvolutionEdgeScopeFields = {
  from_form_id: number;
  introduced_generation_id: number;
  to_form_id: number;
  to_species_id: number;
  version_group_id: number | null;
};

export const selectEvolutionEdgesInForce = <
  T extends EvolutionEdgeScopeFields,
>({
  availableFormIds,
  edges,
  generationOrder,
  getGenerationOrder = (edge) => edge.introduced_generation_id,
  versionGroupIds,
}: {
  /* The forms the game hands out; omit to keep every target. */
  availableFormIds?: ReadonlySet<number>;
  edges: readonly T[];
  /* The game's generation, in generation order. */
  generationOrder: number;
  /* An edge's introduced generation, in the same order (ids by default). */
  getGenerationOrder?: (edge: T) => number;
  /* The game's version group and its expansions. */
  versionGroupIds: readonly number[];
}): T[] => {
  const groupIds = new Set(versionGroupIds);
  const byPair = new Map<string, T[]>();

  for (const edge of edges) {
    if (getGenerationOrder(edge) > generationOrder) continue;
    if (edge.version_group_id !== null && !groupIds.has(edge.version_group_id))
      continue;
    if (availableFormIds && !availableFormIds.has(edge.to_form_id)) continue;

    const key = `${edge.from_form_id}:${edge.to_species_id}`;
    const pair = byPair.get(key);
    if (pair) pair.push(edge);
    else byPair.set(key, [edge]);
  }

  const inForce = new Set<T>();

  for (const pair of byPair.values()) {
    const scoped = pair.filter((edge) => edge.version_group_id !== null);
    if (scoped.length) {
      for (const edge of scoped) inForce.add(edge);
      continue;
    }

    const newest = Math.max(...pair.map(getGenerationOrder));
    for (const edge of pair) {
      if (getGenerationOrder(edge) === newest) inForce.add(edge);
    }
  }

  return edges.filter((edge) => inForce.has(edge));
};
