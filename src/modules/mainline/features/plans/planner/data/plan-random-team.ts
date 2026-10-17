import type {
  PlannerPokedexSection,
  PlannerPokemon,
} from "@/modules/mainline/features/plans/types";

export type PlanRandomMode = "all" | "empty" | "filtered";

/*
 * What a random team picks from: every Pokémon of the pool, or for "Random
 * from filters" only what the pool shows (its Pokédex, search and filters).
 */
export const getRandomCandidates = ({
  byId,
  dex,
  isShown,
  mode,
  sections,
}: {
  byId: Map<number, PlannerPokemon>;
  /* The Pokédex the pool shows; empty for all of them. */
  dex: string;
  isShown: (pokemon: PlannerPokemon) => boolean;
  mode: PlanRandomMode;
  sections: PlannerPokedexSection[];
}) => {
  const filtered = mode === "filtered";

  return sections
    .filter((section) => !filtered || !dex || section.key === dex)
    .flatMap((section) =>
      section.speciesIds.flatMap((speciesId) => {
        const pokemon = byId.get(speciesId);
        return pokemon && (!filtered || isShown(pokemon)) ? [pokemon] : [];
      }),
    );
};

/*
 * Random picks for the dock: a whole new team ("all"), only the open slots
 * ("empty"), or a whole team from what the pool's search and type filter
 * show ("filtered"). It never picks a species twice or two of one evolution
 * line, and skips Pokémon the game itself can't give you.
 */
export const pickRandomTeam = ({
  candidates,
  mode,
  random = Math.random,
  slots,
}: {
  /* The pool to pick from: every Pokémon, or the filtered ones. */
  candidates: PlannerPokemon[];
  mode: PlanRandomMode;
  random?: () => number;
  /* The current six slots' species ids, null for an open slot. */
  slots: (number | null)[];
}): (number | null)[] => {
  const kept = mode === "empty" ? slots : slots.map(() => null);
  const takenSpecies = new Set(kept.filter((id): id is number => id !== null));
  const byId = new Map(
    candidates.map((pokemon) => [pokemon.speciesId, pokemon]),
  );
  const takenFamilies = new Set(
    [...takenSpecies].flatMap((id) => {
      const pokemon = byId.get(id);
      return pokemon ? [pokemon.evolutionFamilyId] : [];
    }),
  );
  const pool = candidates.filter(
    (pokemon) =>
      !pokemon.facts.eventOnly &&
      !pokemon.facts.outsideGameOnly &&
      !takenSpecies.has(pokemon.speciesId),
  );

  return kept.map((current) => {
    if (current !== null) return current;

    const choices = pool.filter(
      (pokemon) =>
        !takenSpecies.has(pokemon.speciesId) &&
        !takenFamilies.has(pokemon.evolutionFamilyId),
    );

    if (!choices.length) return null;

    const pick = choices[Math.floor(random() * choices.length)];

    takenSpecies.add(pick.speciesId);
    takenFamilies.add(pick.evolutionFamilyId);

    return pick.speciesId;
  });
};
