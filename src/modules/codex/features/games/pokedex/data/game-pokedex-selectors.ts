import { selectGamePokedexEntryForms } from "@/modules/codex/features/games/shared/data/pokedex-entry-forms";
import type {
  PokedexEntry,
  PokemonAttributes,
  PokemonForm,
} from "@/modules/reference/types";

export const selectGamePokedexSpeciesIds = (entries: PokedexEntry[]) => {
  return Array.from(new Set(entries.map((entry) => entry.species_id)));
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
