import type { FormClass } from "@/modules/reference/features/pokemon/domain/form-classes";

export type OfferedFormCandidate = {
  form_order: number;
  id: number;
  is_default: boolean;
  species_id: number;
};

/*
 * The forms the Planner offers of each species, in order: the form its
 * Pokédex shows (else the default), then every other variant the version
 * group family has, defaults included (Articuno beside Galarian Articuno).
 * A variant that only changes looks (a Vivillon pattern) stays with its
 * species, as does a form a Pokémon switches to later (Rotom); battle forms
 * never reach here. The display form is always offered: the Pokédex lists it.
 */
export const getOfferedFormIdsBySpecies = ({
  availableFormIds,
  cosmeticFormIds,
  displayFormIdBySpecies,
  formClassById,
  forms,
}: {
  /* Forms with an availability row anywhere in the family. */
  availableFormIds: ReadonlySet<number>;
  cosmeticFormIds: ReadonlySet<number>;
  /* The form each Pokédex entry shows, where it names one. */
  displayFormIdBySpecies: ReadonlyMap<number, number>;
  /* Each non-default form's class; a default form has none. */
  formClassById: ReadonlyMap<number, FormClass>;
  forms: readonly OfferedFormCandidate[];
}): Map<number, number[]> => {
  const formsBySpecies = new Map<number, OfferedFormCandidate[]>();

  for (const form of forms.toSorted(
    (left, right) => left.form_order - right.form_order,
  )) {
    const list = formsBySpecies.get(form.species_id) ?? [];
    list.push(form);
    formsBySpecies.set(form.species_id, list);
  }

  const offered = new Map<number, number[]>();

  for (const [speciesId, speciesForms] of formsBySpecies) {
    const display =
      speciesForms.find(
        (form) => form.id === displayFormIdBySpecies.get(speciesId),
      ) ??
      speciesForms.find((form) => form.is_default) ??
      speciesForms[0];

    if (!display) continue;

    const isVariant = (form: OfferedFormCandidate) =>
      form.is_default || formClassById.get(form.id) === "variant";
    const others = speciesForms.filter(
      (form) =>
        form.id !== display.id &&
        isVariant(form) &&
        !cosmeticFormIds.has(form.id) &&
        availableFormIds.has(form.id),
    );

    offered.set(speciesId, [display.id, ...others.map((form) => form.id)]);
  }

  return offered;
};
