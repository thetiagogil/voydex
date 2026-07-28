import { MainlinePlayInspectorCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-inspector-card";
import { TeamMemberDetailContent } from "./team-member-detail-content";
import { TeamMemberEditAction } from "./team-member-edit-action";
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
    <MainlinePlayInspectorCard
      accessibilityTitle="Selected Pokémon details"
      contentClassName="py-5"
    >
      <TeamMemberDetailContent
        identityAction={member ? <TeamMemberEditAction /> : undefined}
        gameSlug={gameSlug}
        mechanics={mechanics}
        member={member}
      />
    </MainlinePlayInspectorCard>
  );
};
