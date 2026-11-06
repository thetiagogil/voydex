/* One encounter row at a place, as the reader hands it over. */
export type StoryPlaceEncounterRow = {
  formId: number;
  formName: string;
  formSlug: string;
  /* Only in this game of the pair; null in both. */
  gameName: string | null;
  /* Null where the level isn't known (a gift's, say). */
  levelMax: number | null;
  levelMin: number | null;
  wayName: string;
};

/* A Pokémon found at a place, its rows folded into one line. */
export type StoryPlacePokemon = {
  formId: number;
  /* The one game it's only in ("Red only"); null when it's in every game. */
  onlyIn: string | null;
  /* "Lv. 2–5"; null where no level is known. */
  levels: string | null;
  name: string;
  slug: string;
  ways: string[];
};

/*
 * The Pokémon found at a place (#199): one line each, however many ways or
 * games it's met in, with its whole level range and the ways in the order
 * first met. A Pokémon met in only one game of the pair says which.
 */
export const groupStoryPlacePokemon = (
  rows: StoryPlaceEncounterRow[],
): StoryPlacePokemon[] => {
  const byForm = new Map<
    number,
    {
      games: Set<string | null>;
      max: number | null;
      min: number | null;
      name: string;
      slug: string;
      ways: string[];
    }
  >();

  for (const row of rows) {
    const current = byForm.get(row.formId);

    if (!current) {
      byForm.set(row.formId, {
        games: new Set([row.gameName]),
        max: row.levelMax,
        min: row.levelMin,
        name: row.formName,
        slug: row.formSlug,
        ways: [row.wayName],
      });
      continue;
    }

    current.games.add(row.gameName);
    current.max =
      current.max === null || row.levelMax === null
        ? (current.max ?? row.levelMax)
        : Math.max(current.max, row.levelMax);
    current.min =
      current.min === null || row.levelMin === null
        ? (current.min ?? row.levelMin)
        : Math.min(current.min, row.levelMin);

    if (!current.ways.includes(row.wayName)) {
      current.ways.push(row.wayName);
    }
  }

  return [...byForm.entries()].map(([formId, form]) => {
    const games = [...form.games];

    return {
      formId,
      levels:
        form.min === null || form.max === null
          ? null
          : form.min === form.max
            ? `Lv. ${form.min}`
            : `Lv. ${form.min}–${form.max}`,
      name: form.name,
      onlyIn: games.length === 1 && games[0] ? `${games[0]} only` : null,
      slug: form.slug,
      ways: form.ways,
    };
  });
};
