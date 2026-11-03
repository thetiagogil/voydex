import type { FormClass } from "@/modules/reference/features/pokemon/domain/form-classes";

export type PlannerPokedexCandidate = {
  id: number;
  is_completion_relevant: boolean;
  pokedex_kind: string;
  sort_order: number;
  version_group_id: number;
};

export type PlannerEntryCandidate = {
  display_form_id: number | null;
  pokedex_id: number;
  pokedex_number: number;
  species_id: number;
};

export type OfferedFormCandidate = {
  form_order: number;
  id: number;
  is_default: boolean;
  species_id: number;
};

/*
 * The Pokédexes the Planner lists, in order: the completion-counting ones
 * that aren't the National Pokédex, the base game's first and then each
 * expansion's (`familyOrder`), each in its own order. Every Pokédex of the
 * family when none counts.
 */
export const listPlannerPokedexes = <Pokedex extends PlannerPokedexCandidate>(
  pokedexes: readonly Pokedex[],
  familyOrder: readonly number[],
): Pokedex[] => {
  const listed = pokedexes
    .filter(
      (pokedex) =>
        pokedex.pokedex_kind !== "national" && pokedex.is_completion_relevant,
    )
    .toSorted(
      (left, right) =>
        familyOrder.indexOf(left.version_group_id) -
          familyOrder.indexOf(right.version_group_id) ||
        left.sort_order - right.sort_order,
    );

  return listed.length ? listed : [...pokedexes];
};

/*
 * Each species once, in the first listed Pokédex that has it and by its
 * number there, with the form that Pokédex shows for it, where it names
 * one. Both the pool and the save check place species this way.
 */
export const placePlannerSpecies = (
  pokedexes: readonly PlannerPokedexCandidate[],
  entries: readonly PlannerEntryCandidate[],
): {
  displayFormIdBySpecies: Map<number, number>;
  speciesIdsByPokedexId: Map<number, number[]>;
} => {
  const placed = new Set<number>();
  const displayFormIdBySpecies = new Map<number, number>();
  const speciesIdsByPokedexId = new Map<number, number[]>();

  for (const pokedex of pokedexes) {
    const speciesIds = entries
      .filter((entry) => entry.pokedex_id === pokedex.id)
      .toSorted((left, right) => left.pokedex_number - right.pokedex_number)
      .flatMap((entry) => {
        if (placed.has(entry.species_id)) return [];

        placed.add(entry.species_id);

        if (entry.display_form_id !== null) {
          displayFormIdBySpecies.set(entry.species_id, entry.display_form_id);
        }

        return [entry.species_id];
      });

    speciesIdsByPokedexId.set(pokedex.id, speciesIds);
  }

  return { displayFormIdBySpecies, speciesIdsByPokedexId };
};

/*
 * The forms the Planner offers of each species, in order: the form its
 * Pokédex shows first, then every other variant the version group family
 * has, defaults included (Articuno beside Galarian Articuno). Where the
 * Pokédex names no form, the default leads when the family has it or has
 * no other form either; otherwise the first variant the family has leads
 * and the default stays out (Hisuian Typhlosion, never Typhlosion, in
 * Legends: Arceus). A variant that only changes looks (a Vivillon pattern)
 * stays with its species, as does a form a Pokémon switches to later
 * (Rotom); battle forms never reach here.
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
    const isOwnPokemon = (form: OfferedFormCandidate) =>
      (form.is_default || formClassById.get(form.id) === "variant") &&
      !cosmeticFormIds.has(form.id);
    const available = speciesForms.filter(
      (form) => isOwnPokemon(form) && availableFormIds.has(form.id),
    );
    const named = speciesForms.find(
      (form) => form.id === displayFormIdBySpecies.get(speciesId),
    );
    const fallback =
      speciesForms.find((form) => form.is_default) ?? speciesForms[0];
    const display =
      named ??
      (fallback && (availableFormIds.has(fallback.id) || !available.length)
        ? fallback
        : available[0]);

    if (!display) continue;

    offered.set(speciesId, [
      display.id,
      ...available
        .filter((form) => form.id !== display.id)
        .map((form) => form.id),
    ]);
  }

  return offered;
};
