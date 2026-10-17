/*
 * The entry's sections, in page order: each card's anchor, and what the
 * docked section bar calls it. A section the page leaves out (no evolution
 * line, no Plays) simply has no anchor, and the bar skips it.
 */
export const pokemonDetailSections = [
  { id: "abilities", label: "Abilities" },
  { id: "training", label: "Training" },
  { id: "breeding", label: "Breeding" },
  { id: "base-stats", label: "Base stats" },
  { id: "type-matchups", label: "Matchups" },
  { id: "evolution", label: "Evolution" },
  { id: "pokedex-numbers", label: "Pokédex" },
  { id: "where-to-find", label: "Where to find" },
  { id: "learnset", label: "Learnset" },
  { id: "in-your-plays", label: "Your Plays" },
] as const;

export type PokemonDetailSectionId =
  (typeof pokemonDetailSections)[number]["id"];
