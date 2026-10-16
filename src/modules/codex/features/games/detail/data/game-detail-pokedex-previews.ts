import type { Pokedex, PokedexEntry } from "@/modules/reference/types";

/* How many Pokémon a Pokédex row shows; the strip fades out at its end. */
const POKEDEX_PREVIEW_SIZE = 20;

/*
 * Entries spread evenly across the Pokédex in its own numbering, so a row
 * shows its variety: the first entries alone would be the starters and
 * their evolutions in nearly every game. The pick is the same on every
 * visit.
 */
export const pickSpreadEntries = <Entry>(entries: Entry[], size: number) => {
  if (entries.length <= size) {
    return entries;
  }

  return Array.from(
    { length: size },
    (_, index) => entries[Math.floor((index * entries.length) / size)]!,
  );
};

/* A spread of each Pokédex's entries, in its own numbering. */
export const selectPokedexPreviewEntries = (
  pokedexes: Pokedex[],
  entries: PokedexEntry[],
) => {
  const entriesByPokedexId = new Map<number, PokedexEntry[]>();

  for (const entry of entries) {
    const pokedexEntries = entriesByPokedexId.get(entry.pokedex_id) ?? [];

    pokedexEntries.push(entry);
    entriesByPokedexId.set(entry.pokedex_id, pokedexEntries);
  }

  return new Map(
    pokedexes.map((pokedex) => [
      pokedex.id,
      pickSpreadEntries(
        (entriesByPokedexId.get(pokedex.id) ?? []).toSorted(
          (first, second) => first.pokedex_number - second.pokedex_number,
        ),
        POKEDEX_PREVIEW_SIZE,
      ),
    ]),
  );
};
