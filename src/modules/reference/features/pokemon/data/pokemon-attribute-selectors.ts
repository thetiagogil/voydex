import type { PokemonTypePair } from "@/modules/reference/features/pokemon/types";
import type {
  PokemonAttributes,
  Type,
} from "@/modules/reference/shared/database-types";

export const selectLatestAttributes = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const latestByForm = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    if (!attribute.form_id) {
      continue;
    }

    const current = latestByForm.get(attribute.form_id);

    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      latestByForm.set(attribute.form_id, attribute);
    }
  }

  return latestByForm;
};

export const resolveTypePair = (
  attribute: PokemonAttributes | null,
  typeById: Map<number, Type>,
): PokemonTypePair => {
  if (!attribute) {
    return {
      primaryType: null,
      secondaryType: null,
    };
  }

  return {
    primaryType: typeById.get(attribute.primary_type_id) ?? null,
    secondaryType: attribute.secondary_type_id
      ? (typeById.get(attribute.secondary_type_id) ?? null)
      : null,
  };
};
