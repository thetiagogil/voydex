import type { PokemonAttributes } from "@/modules/codex/shared/types";
import type { PokemonDisplayRows } from "@/modules/mainline/features/play/detail/shared/server/pokemon-display-loaders";
import type { MainlinePokemonDisplayMetadata } from "@/modules/mainline/features/play/types";
import { getPokemonFormImageUrl } from "@/shared/domain/pokemon/pokemon-images";
import { byId } from "@/shared/utils/collections";

const buildAttributeByFormId = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const attributeByFormId = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    const current = attributeByFormId.get(attribute.form_id);

    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      attributeByFormId.set(attribute.form_id, attribute);
    }
  }

  return attributeByFormId;
};

export const getEmptyPokemonDisplay = (): MainlinePokemonDisplayMetadata => {
  return {
    imageUrl: null,
    primaryType: null,
    secondaryType: null,
  };
};

export const buildPokemonDisplayMetadataByFormId = (
  formIds: number[],
  rows: PokemonDisplayRows,
): Map<number, MainlinePokemonDisplayMetadata> => {
  const displayByFormId = new Map<number, MainlinePokemonDisplayMetadata>();
  const formById = byId(rows.forms);
  const typeById = byId(rows.types);
  const attributeByFormId = buildAttributeByFormId(rows.attributes);

  for (const formId of formIds) {
    const form = formById.get(formId) ?? null;
    const attribute = attributeByFormId.get(formId) ?? null;

    displayByFormId.set(formId, {
      imageUrl: getPokemonFormImageUrl(form),
      primaryType: attribute
        ? (typeById.get(attribute.primary_type_id) ?? null)
        : null,
      secondaryType: attribute?.secondary_type_id
        ? (typeById.get(attribute.secondary_type_id) ?? null)
        : null,
    });
  }

  return displayByFormId;
};
