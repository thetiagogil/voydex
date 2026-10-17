import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

type PlayTeamMemberDisplay = Pick<
  MainlinePlayTeamMember,
  "form_name" | "is_shiny" | "nickname" | "species_name" | "sprite_slug"
>;

export const getPlayTeamMemberName = (member: PlayTeamMemberDisplay) => {
  return member.nickname ?? member.species_name ?? "Unknown Pokémon";
};

export const getPlayTeamMemberImageUrl = (member: PlayTeamMemberDisplay) => {
  const imageForm = {
    name: member.form_name ?? member.species_name ?? "Pokémon",
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
