/*
 * The entry's sections, in page order: each card's anchor, and what the
 * docked section bar calls it (`joined`: how it reads after another section
 * in one link). A section the page leaves out (no evolution line, no Plays)
 * simply has no anchor, and the bar skips it.
 */
export const pokemonDetailSections = [
  { id: "abilities", label: "Abilities" },
  { id: "training", label: "Training", joined: "training" },
  { id: "breeding", label: "Breeding", joined: "breeding" },
  { id: "base-stats", label: "Base stats" },
  { id: "type-matchups", label: "Matchups", joined: "matchups" },
  { id: "evolution", label: "Evolution" },
  { id: "pokedex-numbers", label: "Pokédex" },
  { id: "where-to-find", label: "Where to find" },
  { id: "learnset", label: "Learnset" },
  { id: "in-your-plays", label: "Your Plays" },
] as const;

export type PokemonDetailSection = (typeof pokemonDetailSections)[number];

export type PokemonDetailSectionId = PokemonDetailSection["id"];

/* One link of the bar: the sections it jumps to, and its words. */
export type PokemonDetailSectionLink = {
  ids: PokemonDetailSectionId[];
  label: string;
};

const joinLabels = (labels: string[]) =>
  labels.length < 2
    ? (labels[0] ?? "")
    : `${labels.slice(0, -1).join(", ")} & ${labels.at(-1)}`;

/*
 * The bar's links: sections that start on the same row (cards side by side)
 * share one link, since jumping to either lands in the same place, as in
 * "Base stats & matchups". `top` is where each section starts on the page.
 */
export const getPokemonDetailSectionLinks = (
  sections: readonly (PokemonDetailSection & { top: number })[],
): PokemonDetailSectionLink[] => {
  const rows: (PokemonDetailSection & { top: number })[][] = [];

  for (const section of sections) {
    const row = rows.at(-1);

    if (row && Math.abs(row[0].top - section.top) <= 2) {
      row.push(section);
    } else {
      rows.push([section]);
    }
  }

  return rows.map((row) => ({
    ids: row.map((section) => section.id),
    label: joinLabels(
      row.map((section, index) =>
        index && "joined" in section ? section.joined : section.label,
      ),
    ),
  }));
};
