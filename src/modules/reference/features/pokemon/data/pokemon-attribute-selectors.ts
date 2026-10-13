import type { PokemonTypePair } from "@/modules/reference/features/pokemon/types";
import type {
  Generation,
  PokemonAttributes,
  Type,
} from "@/modules/reference/shared/database-types";
import { byId } from "@/shared/utils/collections";

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

/*
 * A form's attributes as they were in one generation: the latest that had
 * started by then (Clefairy is Normal in Generation I, Fairy from VI). Null
 * when none had.
 */
export const selectAttributesInGeneration = ({
  attributes,
  formId,
  generation,
  generations,
}: {
  attributes: PokemonAttributes[];
  formId: number;
  generation: Pick<Generation, "sort_order"> | null | undefined;
  generations: Generation[];
}): PokemonAttributes | null => {
  const generationById = byId(generations);
  const getSortOrder = (generationId: number) =>
    generationById.get(generationId)?.sort_order ?? generationId;
  const generationOrder = generation?.sort_order ?? Number.MAX_SAFE_INTEGER;

  return (
    attributes
      .filter(
        (attribute) =>
          attribute.form_id === formId &&
          getSortOrder(attribute.generation_start_id) <= generationOrder,
      )
      .toSorted(
        (first, second) =>
          getSortOrder(second.generation_start_id) -
          getSortOrder(first.generation_start_id),
      )[0] ?? null
  );
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
