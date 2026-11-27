import type { MainlinePlayTeamMemberRow } from "@/modules/mainline/features/plays/shared/types";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
  type PokemonImageSize,
} from "@/modules/reference/features/pokemon/data/pokemon-images";

type PlayTeamMemberDisplay = Pick<
  MainlinePlayTeamMemberRow,
  "form_name" | "form_slug" | "is_shiny" | "nickname" | "species_name"
>;

export const getPlayTeamMemberName = (member: PlayTeamMemberDisplay) => {
  return member.nickname ?? member.species_name ?? "Unknown Pokémon";
};

/*
 * The quiet line under a member's name in its tip: its species when it goes
 * by a nickname, then its level ("Typhlosion · Lv. 48"). Null with neither.
 */
export const getPlayTeamMemberDetail = (
  member: Pick<
    MainlinePlayTeamMemberRow,
    "level" | "nickname" | "species_name"
  >,
) =>
  [
    member.nickname ? member.species_name : null,
    member.level === null ? null : `Lv. ${member.level}`,
  ]
    .filter(Boolean)
    .join(" · ") || null;

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
