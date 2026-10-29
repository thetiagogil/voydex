/*
 * How a Pokédex write treats what is already recorded. A catch keeps the date
 * you first saw the Pokémon, so un-catching in caught only can tell a Seen you
 * marked yourself (kept) from the one the catch brought (cleared with it).
 */

export type PokedexProgressRecord = {
  caught_at: string | null;
  is_caught: boolean;
  is_seen: boolean;
  seen_at: string | null;
  species_id: number;
};

/* When the Pokémon counts as seen from: the earlier Seen, else now. */
export const getKeptSeenAt = (
  record: PokedexProgressRecord | undefined,
  recordedAt: string,
) => (record?.is_seen && record.seen_at ? record.seen_at : recordedAt);

const wasSeenBeforeCaught = ({ caught_at, seen_at }: PokedexProgressRecord) =>
  seen_at !== null &&
  caught_at !== null &&
  new Date(seen_at).getTime() < new Date(caught_at).getTime();

/*
 * Un-catching in caught only: a Pokémon seen before it was caught (or never
 * caught) stays Seen; one whose Seen came with the catch is cleared.
 */
export const splitCaughtOnlyUncatch = (records: PokedexProgressRecord[]) => ({
  clearedSpeciesIds: records
    .filter((record) => record.is_caught && !wasSeenBeforeCaught(record))
    .map((record) => record.species_id),
  keptSeenSpeciesIds: records
    .filter((record) => !record.is_caught || wasSeenBeforeCaught(record))
    .map((record) => record.species_id),
});
