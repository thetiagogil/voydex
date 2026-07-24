import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import { getTeamMemberName } from "../../display/team-member-display";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";

export const TeamMemberPortrait = ({
  member,
}: {
  member: MainlinePlayTeamMember;
}) => {
  const memberName = getTeamMemberName(member);

  return (
    <PokemonPortrait
      alt={`${memberName} portrait`}
      imageUrl={getPlayTeamMemberImageUrl(member)}
      fallbackOnError
      sizes="(min-width: 1280px) 16rem, (min-width: 768px) 13rem, 70vw"
      className="border-app-surface-border/70 bg-background/45 w-full max-w-64 justify-self-center rounded-lg"
      glowClassName="opacity-0"
      imageClassName="p-2"
    />
  );
};
