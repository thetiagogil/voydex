import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
  type PokemonImageSize,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

type PlayTeamMemberDisplay = Pick<
  MainlinePlayTeamMember,
  "form_name" | "form_slug" | "is_shiny" | "nickname" | "species_name"
>;

export const getPlayTeamMemberName = (member: PlayTeamMemberDisplay) => {
  return member.nickname ?? member.species_name ?? "Unknown Pokémon";
};

export const getPlayTeamMemberImageUrl = (
  member: PlayTeamMemberDisplay,
  size?: PokemonImageSize,
) => {
  const imageForm = {
    name: member.form_name ?? member.species_name ?? "Pokémon",
    slug: member.form_slug,
  };

  if (member.is_shiny) {
    return (
      getPokemonFormShinyImageUrl(imageForm, size) ??
      getPokemonFormImageUrl(imageForm, size)
    );
  }

  return getPokemonFormImageUrl(imageForm, size);
};
