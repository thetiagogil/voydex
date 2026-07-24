import type {
  MainlinePlayTeamPreviewMember,
  MainlinePlayTeamPreviewRows,
} from "@/modules/mainline/features/plays/hub/types";
import { byId } from "@/shared/utils/collections";

export const buildMainlinePlayOverviewTeamPreview = (
  rows: MainlinePlayTeamPreviewRows,
): MainlinePlayTeamPreviewMember[] => {
  const latestAttributesByForm = new Map<
    number,
    MainlinePlayTeamPreviewRows["attributes"][number]
  >();

  for (const attribute of rows.attributes) {
    const currentAttribute = latestAttributesByForm.get(attribute.form_id);

    if (
      !currentAttribute ||
      attribute.generation_start_id > currentAttribute.generation_start_id
    ) {
      latestAttributesByForm.set(attribute.form_id, attribute);
    }
  }

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
