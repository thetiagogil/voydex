import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getTeamMemberName } from "../../utils/team-member-display";
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
      className="border-line bg-surface-2 w-full max-w-64 justify-self-center rounded-lg"
      imageClassName="p-2"
    />
  );
};
