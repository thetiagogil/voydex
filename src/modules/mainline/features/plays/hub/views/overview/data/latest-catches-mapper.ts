import type { OverviewPartnerFormRows } from "@/modules/mainline/features/plays/hub/views/overview/data/partner-choice-mapper";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

/* A caught Pokédex entry, as the Play's Pokédex view lists it. */
export type OverviewCatchRow = {
  caught_at: string | null;
  display_form_id: number | null;
  species_id: number | null;
  species_name: string | null;
};

/* One of the Play's latest catches, as Overview's Pokédex card draws it. */
export type OverviewCatch = {
  imageUrl: string | null;
  name: string;
  speciesId: number;
  /* Its first type, for the tint behind it; null when it isn't known. */
  typeSlug: string | null;
};

/* How many the Pokédex card shows. */
export const LATEST_CATCH_COUNT = 6;

/*
 * The newest catches, each species once: a species that sits in several of
 * the game's Pokédexes comes back once per Pokédex.
 */
export const pickLatestCatchRows = (rows: OverviewCatchRow[]) => {
  const seen = new Set<number>();

  return rows
    .filter((row) => row.species_id !== null && row.caught_at !== null)
    .toSorted(
      (left, right) =>
        new Date(right.caught_at ?? 0).getTime() -
        new Date(left.caught_at ?? 0).getTime(),
    )
    .filter((row) => {
      if (seen.has(row.species_id as number)) {
        return false;
      }

      seen.add(row.species_id as number);
      return true;
    })
    .slice(0, LATEST_CATCH_COUNT);
};

/* A form of a caught species, as the reference lists it. */
export type OverviewCatchForm = {
  form_order: number;
  id: number;
  is_default: boolean;
  name: string;
  slug: string;
  species_id: number;
};

/*
 * The form each catch is drawn as: the one its Pokédex shows where it names
 * one (a regional form), else the species' default form.
 */
export const getLatestCatchForms = (
  rows: OverviewCatchRow[],
  forms: OverviewCatchForm[],
) => {
  const formById = new Map(forms.map((form) => [form.id, form]));
  const defaultBySpeciesId = new Map<number, OverviewCatchForm>();

  for (const form of forms.toSorted(
    (left, right) =>
      Number(right.is_default) - Number(left.is_default) ||
      left.form_order - right.form_order,
  )) {
    if (!defaultBySpeciesId.has(form.species_id)) {
      defaultBySpeciesId.set(form.species_id, form);
    }
  }

  return new Map(
    rows.flatMap((row): [number, OverviewCatchForm][] => {
      if (row.species_id === null) {
        return [];
      }

      const form =
        (row.display_form_id === null
          ? undefined
          : formById.get(row.display_form_id)) ??
        defaultBySpeciesId.get(row.species_id);

      return form ? [[row.species_id, form]] : [];
    }),
  );
};

/* The picked rows with their art and, where the types were read, their tint. */
export const buildOverviewLatestCatches = (
  rows: OverviewCatchRow[],
  formBySpeciesId: Map<number, OverviewCatchForm>,
  formRows: OverviewPartnerFormRows | null,
): OverviewCatch[] => {
  const typeSlugById = new Map(
    (formRows?.types ?? []).map((type) => [type.id, type.slug]),
  );
  /* Newest generation first, so each form keeps the first row it meets. */
  const typeSlugByFormId = new Map<number, string | null>();

  for (const attribute of (formRows?.attributes ?? []).toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  )) {
    if (!typeSlugByFormId.has(attribute.form_id)) {
      typeSlugByFormId.set(
        attribute.form_id,
        typeSlugById.get(attribute.primary_type_id) ?? null,
      );
    }
  }

  return rows.flatMap((row): OverviewCatch[] => {
    if (row.species_id === null) {
      return [];
    }

    const form = formBySpeciesId.get(row.species_id) ?? null;

    return [
      {
        imageUrl: form
          ? getPokemonFormImageUrl({ name: form.name, slug: form.slug })
          : null,
        name: row.species_name ?? form?.name ?? "Pokémon",
        speciesId: row.species_id,
        typeSlug: form ? (typeSlugByFormId.get(form.id) ?? null) : null,
      },
    ];
  });
};
