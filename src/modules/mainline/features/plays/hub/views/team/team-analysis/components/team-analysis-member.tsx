import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberSpeciesName,
} from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

export const getTeamAnalysisMemberId = (member: MainlinePlayTeamMember) => {
  return member.play_pokemon_id ?? `slot-${member.slot ?? 0}`;
};

export const getTeamAnalysisMemberName = (member: MainlinePlayTeamMember) => {
  return getPlayTeamMemberSpeciesName(member);
};

export const TeamAnalysisMemberPortrait = ({
  className,
  member,
}: {
  className?: string;
  member: MainlinePlayTeamMember;
}) => {
  const name = getTeamAnalysisMemberName(member);
  const primaryTypeSlug = member.primaryType?.slug;

  return (
    <PokemonPortrait
      alt={name}
      imageUrl={getPlayTeamMemberImageUrl(member)}
      type={
        primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
          ? primaryTypeSlug
          : null
      }
      sizes="48px"
      className={cn("size-10 shrink-0 rounded-lg", className)}
      imageClassName="p-1"
    />
  );
};
