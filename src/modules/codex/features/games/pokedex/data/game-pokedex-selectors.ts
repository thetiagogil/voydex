import { byId } from "@/modules/codex/shared/data/reference-data-utils";
import type {
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
} from "@/modules/codex/shared/types";

type GamePokedexEntryKeyParams = {
  pokedexId: number;
  pokedexNumber: number;
  speciesId: number;
};

export const getGamePokedexEntryKey = ({
  pokedexId,
  pokedexNumber,
  speciesId,
}: GamePokedexEntryKeyParams) => {
  return `${pokedexId}:${pokedexNumber}:${speciesId}`;
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

export const selectGamePokedexSpeciesIds = (entries: PokedexEntry[]) => {
  return Array.from(new Set(entries.map((entry) => entry.species_id)));
};

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
      getGamePokedexEntryKey({
        pokedexId: entry.pokedex_id,
        pokedexNumber: entry.pokedex_number,
        speciesId: entry.species_id,
      }),
      resolveEntryForm({
        defaultFormBySpeciesId,
        entry,
        formById,
      }),
    );
  }

  return entryFormsByKey;
};

export const selectGamePokedexFormIds = ({
  entries,
  forms,
}: {
  entries: PokedexEntry[];
  forms: PokemonForm[];
}) => {
  return Array.from(
    new Set(
      [...selectGamePokedexEntryForms({ entries, forms }).values()].flatMap(
        (form) => (form ? [form.id] : []),
      ),
    ),
  );
};

export const selectGamePokedexAbilityIds = (
  attributes: PokemonAttributes[],
) => {
  return Array.from(
    new Set(
      attributes.flatMap((attribute) =>
        [
          attribute.primary_ability_id,
          attribute.secondary_ability_id,
          attribute.hidden_ability_id,
        ].filter((abilityId): abilityId is number => Boolean(abilityId)),
      ),
    ),
  );
};
