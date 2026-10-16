import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

export const getTeamMemberIdentity = (
  member: MainlinePlayTeamMember,
): string | null => {
  const speciesName = member.species_name ?? "Unknown Pokémon";
  const formName = member.is_default_form ? null : member.form_name;

  if (member.nickname) {
    return formName ? `${speciesName} · ${formName}` : speciesName;
  }

  return formName;
};

/* A recorded gender, or null when it wasn't recorded. */
export const formatTeamMemberGender = (
  gender: string | null,
): string | null => {
  if (!gender || gender === "unknown") {
    return null;
  }

  return gender.charAt(0).toUpperCase() + gender.slice(1);
};

/*
 * The editor head's line under the name, such as "Rillaboom · Lv. 48". It
 * shows what is saved, like the name above it, never the unsaved form.
 */
export const getTeamMemberEditorHeadLine = (
  member: Pick<MainlinePlayTeamMember, "level" | "species_name">,
): string =>
  [member.species_name, member.level ? `Lv. ${member.level}` : null]
    .filter(Boolean)
    .join(" · ");
