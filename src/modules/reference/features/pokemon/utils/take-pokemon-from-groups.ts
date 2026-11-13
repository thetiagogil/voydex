/*
 * The first `count` Pokémon in range order, still in their ranges: how a
 * long list of ranges (generations, types, Pokédexes) draws in batches as
 * you scroll. A range fills before the next one starts, so none shows
 * half-filled while a later one already has cards.
 */
export const takePokemonFromGroups = <
  Group extends { pokemon: readonly unknown[] },
>(
  groups: readonly Group[],
  count: number,
): Group[] => {
  const taken: Group[] = [];
  let remaining = count;

  for (const group of groups) {
    if (remaining <= 0) {
      break;
    }

    const pokemon = group.pokemon.slice(0, remaining);

    taken.push({ ...group, pokemon });
    remaining -= pokemon.length;
  }

  return taken;
};
