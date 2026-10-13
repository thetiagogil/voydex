import { byId } from "@/modules/reference/reference-data";
import type { PokedexEntry, PokemonForm } from "@/modules/reference/types";

export const getPokedexEntryKey = (entry: PokedexEntry) => {
  return `${entry.pokedex_id}:${entry.pokedex_number}:${entry.species_id}`;
};

const getDefaultFormBySpeciesId = (forms: PokemonForm[]) => {
  const formBySpeciesId = new Map<number, PokemonForm>();

  for (const form of forms) {
    if (!form.is_default) {
      continue;
    }

    const currentForm = formBySpeciesId.get(form.species_id);

    if (!currentForm || form.form_order < currentForm.form_order) {
      formBySpeciesId.set(form.species_id, form);
    }
  }

  return formBySpeciesId;
};

const resolveEntryForm = ({
  defaultFormBySpeciesId,
  entry,
  formById,
}: {
  defaultFormBySpeciesId: Map<number, PokemonForm>;
  entry: PokedexEntry;
  formById: Map<number, PokemonForm>;
}) => {
  if (entry.display_form_id) {
    return formById.get(entry.display_form_id) ?? null;
  }

  return defaultFormBySpeciesId.get(entry.species_id) ?? null;
};

/* The form each Pokédex entry shows: its display form, or the species' default form. */
export const selectGamePokedexEntryForms = ({
  entries,
  forms,
}: {
  entries: PokedexEntry[];
  forms: PokemonForm[];
}) => {
  const formById = byId(forms);
  const defaultFormBySpeciesId = getDefaultFormBySpeciesId(forms);
  const entryFormsByKey = new Map<string, PokemonForm | null>();

  for (const entry of entries) {
    entryFormsByKey.set(
      getPokedexEntryKey(entry),
      resolveEntryForm({
        defaultFormBySpeciesId,
        entry,
        formById,
      }),
    );
  }

  return entryFormsByKey;
};
