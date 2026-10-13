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
