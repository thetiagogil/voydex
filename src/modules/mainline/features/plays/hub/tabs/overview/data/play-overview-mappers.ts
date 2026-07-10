import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { PokemonAttributes } from "@/modules/reference/types";
import { byId } from "@/shared/utils/collections";

const resolveLatestAttributesByForm = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const latestAttributesByForm = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    const currentAttribute = latestAttributesByForm.get(attribute.form_id);

    if (
      !currentAttribute ||
      attribute.generation_start_id > currentAttribute.generation_start_id
    ) {
      latestAttributesByForm.set(attribute.form_id, attribute);
    }
  }

  return latestAttributesByForm;
};

export const buildMainlinePlayTeamPreview = (
  rows: MainlinePlayTeamRows,
): MainlinePlayTeamMember[] => {
  const latestAttributesByForm = resolveLatestAttributesByForm(rows.attributes);
  const typeById = byId(rows.types);

  return rows.members.map((member) => {
    const attributes = member.form_id
      ? latestAttributesByForm.get(member.form_id)
      : null;

    return {
      ...member,
      primaryType: attributes
        ? (typeById.get(attributes.primary_type_id) ?? null)
        : null,
      secondaryType: attributes?.secondary_type_id
        ? (typeById.get(attributes.secondary_type_id) ?? null)
        : null,
    };
  });
};
