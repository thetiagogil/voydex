import type { Json } from "@/shared/types/database.types";

/* One encounter row at a place, as the reader hands it over. */
export type StoryPlaceEncounterRow = {
  formId: number;
  formName: string;
  formSlug: string;
  /* Null where the level isn't known (a gift's, say). */
  levelMax: number | null;
  levelMin: number | null;
  wayName: string;
  /* The way's slug ("gift", "tall-grass"). */
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
};

const formatLevels = (min: number | null, max: number | null) =>
  min === null || max === null
    ? null
    : min === max
      ? `Lv. ${min}`
      : `Lv. ${min}–${max}`;

/*
 * The ways a Pokémon is handed over or met once. Only these can be one side
 * of a choice (a starter, a fossil, a steed): the same Pokémon in the tall
 * grass is there whatever you chose.
 */
const oneOffWaySlugs = new Set(["fossil", "gift", "special", "starter"]);

/* A milestone's choice, as far as a place's Pokémon need it. */
export type StoryPlaceDecision = {
  decision_options: Json | null;
  selected_decision_option_id: number | null;
  version_group_id: number | null;
};

/*
 * The Pokémon a Play's recorded choices ruled out (#314), by version group:
 * every option of a recorded decision that wasn't picked (Glastrier once
 * Spectrier is chosen). A Pokémon picked in any recorded decision is never
 * ruled out, and a decision the Play hasn't recorded rules out nothing.
 */
export const getRuledOutDecisionFormIds = (
  milestones: StoryPlaceDecision[],
): Map<number, Set<number>> => {
  const picked = new Map<number, Set<number>>();
  const passedOver = new Map<number, Set<number>>();
  const formIdsOf = (map: Map<number, Set<number>>, versionGroupId: number) =>
    map.get(versionGroupId) ??
    map.set(versionGroupId, new Set()).get(versionGroupId)!;

  for (const milestone of milestones) {
    if (
      milestone.version_group_id === null ||
      milestone.selected_decision_option_id === null ||
      !Array.isArray(milestone.decision_options)
    ) {
      continue;
    }

    for (const option of milestone.decision_options) {
      if (
        !option ||
        typeof option !== "object" ||
        Array.isArray(option) ||
        typeof option.pokemon_form_id !== "number"
      ) {
        continue;
      }

      formIdsOf(
        option.decision_option_id === milestone.selected_decision_option_id
          ? picked
          : passedOver,
        milestone.version_group_id,
      ).add(option.pokemon_form_id);
    }
  }

  for (const [versionGroupId, formIds] of passedOver) {
    for (const formId of picked.get(versionGroupId) ?? []) {
      formIds.delete(formId);
    }
  }

  return passedOver;
};

/*
 * The Pokémon found at a place (#199), grouped by how you meet them in the
 * ways' order: one line each in a group, however many rows it has there,
 * with its whole level range for that way. A one-off Pokémon the Play's
 * choices ruled out is left off.
 */
export const groupStoryPlacePokemon = (
  allRows: StoryPlaceEncounterRow[],
  ruledOutFormIds: ReadonlySet<number> = new Set(),
): StoryPlacePokemonGroup[] => {
  const rows = allRows.filter(
    (row) =>
      !(oneOffWaySlugs.has(row.waySlug) && ruledOutFormIds.has(row.formId)),
  );
  const groups = new Map<
    string,
    {
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
    }));
};
