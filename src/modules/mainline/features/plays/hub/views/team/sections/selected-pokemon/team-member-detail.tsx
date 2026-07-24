import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { TeamMemberDetailContent } from "@/modules/mainline/features/plays/hub/views/team/sections/selected-pokemon/team-member-detail-content";
import { TeamMemberEditAction } from "@/modules/mainline/features/plays/hub/views/team/sections/selected-pokemon/team-member-edit-action";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";

export const TeamMemberDetail = ({
  gameSlug,
  mechanics,
  member,
}: {
  gameSlug: string | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
}) => {
  return (
    <MainlinePlaySectionCard
      title="Selected Pokémon"
      action={member ? <TeamMemberEditAction /> : undefined}
      showSeparator
      contentClassName="py-5"
    >
      <TeamMemberDetailContent
        gameSlug={gameSlug}
        mechanics={mechanics}
        member={member}
      />
    </MainlinePlaySectionCard>
  );
};
