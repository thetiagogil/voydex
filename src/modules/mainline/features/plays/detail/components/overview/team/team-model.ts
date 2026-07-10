import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

export const getTeamMemberName = (member: MainlinePlayTeamMember) => {
  return member.nickname ?? member.species_name ?? "Unknown Pokemon";
};

export const getTeamMemberImageUrl = (member: MainlinePlayTeamMember) => {
  const imageForm = {
    name: member.form_name ?? member.species_name ?? "Pokemon",
    sprite_slug: member.sprite_slug,
  };

  if (member.is_shiny) {
    return (
      getPokemonFormShinyImageUrl(imageForm) ??
      getPokemonFormImageUrl(imageForm)
    );
  }

  return getPokemonFormImageUrl(imageForm);
};

export const getTeamSlots = (team: MainlinePlayTeamMember[]) => {
  const memberBySlot = new Map(
    team.map((member, index) => [member.slot ?? index + 1, member]),
  );

  return Array.from({ length: 6 }, (_, index) => {
    const slotNumber = index + 1;

    return {
      member: memberBySlot.get(slotNumber) ?? null,
      slotNumber,
    };
  });
};
