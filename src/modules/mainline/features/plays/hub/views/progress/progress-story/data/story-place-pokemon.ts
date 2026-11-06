/* One encounter row at a place, as the reader hands it over. */
export type StoryPlaceEncounterRow = {
  formId: number;
  formName: string;
  formSlug: string;
  /* Null where the level isn't known (a gift's, say). */
  levelMax: number | null;
  levelMin: number | null;
  wayName: string;
  waySlug: string;
  /* The way's place in Voydex's order (tall grass first). */
  waySortOrder: number;
};

/* A Pokémon found at a place one way, its rows folded into one. */
export type StoryPlacePokemon = {
  formId: number;
  /* "Lv. 2–5"; null where no level is known. */
  levels: string | null;
  name: string;
  slug: string;
};

/* The Pokémon met one way at a place (in the tall grass, by fishing). */
export type StoryPlacePokemonGroup = {
  pokemon: StoryPlacePokemon[];
  way: string;
  waySlug: string;
};

const formatLevels = (min: number | null, max: number | null) =>
  min === null || max === null
    ? null
    : min === max
      ? `Lv. ${min}`
      : `Lv. ${min}–${max}`;

/*
 * The Pokémon found at a place (#199), grouped by how you meet them in the
 * ways' order: one line each in a group, however many rows it has there,
 * with its whole level range for that way.
 */
export const groupStoryPlacePokemon = (
  rows: StoryPlaceEncounterRow[],
): StoryPlacePokemonGroup[] => {
  const groups = new Map<
    string,
    {
      slug: string;
      sortOrder: number;
      forms: Map<
        number,
        { max: number | null; min: number | null; name: string; slug: string }
      >;
    }
  >();

  for (const row of rows) {
    const group = groups.get(row.wayName) ?? {
      forms: new Map(),
      slug: row.waySlug,
      sortOrder: row.waySortOrder,
    };
    const form = group.forms.get(row.formId);

    groups.set(row.wayName, group);

    if (!form) {
      group.forms.set(row.formId, {
        max: row.levelMax,
        min: row.levelMin,
        name: row.formName,
        slug: row.formSlug,
      });
      continue;
    }

    form.max =
      form.max === null || row.levelMax === null
        ? (form.max ?? row.levelMax)
        : Math.max(form.max, row.levelMax);
    form.min =
      form.min === null || row.levelMin === null
        ? (form.min ?? row.levelMin)
        : Math.min(form.min, row.levelMin);
  }

  return [...groups.entries()]
    .sort(([, a], [, b]) => a.sortOrder - b.sortOrder)
    .map(([way, group]) => ({
      pokemon: [...group.forms.entries()].map(([formId, form]) => ({
        formId,
        levels: formatLevels(form.min, form.max),
        name: form.name,
        slug: form.slug,
      })),
      way,
      waySlug: group.slug,
    }));
};
