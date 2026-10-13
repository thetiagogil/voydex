import type { Pokedex, PokedexEntry } from "@/modules/reference/types";

/*
 * How many entries a Pokédex tile shows: one Pokédex fills its row with a
 * long strip, two or three share the row with five each, four or more are
 * compact tiles with three.
 */
const getPokedexPreviewSize = (pokedexCount: number) => {
  if (pokedexCount <= 1) {
    return 16;
  }

  return pokedexCount <= 3 ? 5 : 3;
};

/* The first entries of each Pokédex, in its own numbering. */
export const selectPokedexPreviewEntries = (
  pokedexes: Pokedex[],
  entries: PokedexEntry[],
) => {
  const previewSize = getPokedexPreviewSize(pokedexes.length);
  const entriesByPokedexId = new Map<number, PokedexEntry[]>();

  for (const entry of entries) {
    const pokedexEntries = entriesByPokedexId.get(entry.pokedex_id) ?? [];

    pokedexEntries.push(entry);
    entriesByPokedexId.set(entry.pokedex_id, pokedexEntries);
  }

  return new Map(
    pokedexes.map((pokedex) => [
      pokedex.id,
      (entriesByPokedexId.get(pokedex.id) ?? [])
        .toSorted(
          (first, second) => first.pokedex_number - second.pokedex_number,
        )
        .slice(0, previewSize),
    ]),
  );
};
