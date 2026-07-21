import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { TeamMemberDetailContent } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-detail-content";
import { TeamMemberEditAction } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-edit-action";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

export const TeamMemberDetail = ({
  gameSlug,
  member,
}: {
  gameSlug: string | null;
  member: MainlinePlayTeamMember | null;
}) => {
  return (
    <MainlinePlaySectionCard
      title="Selected Pokémon"
      action={member ? <TeamMemberEditAction /> : undefined}
      showSeparator
      contentClassName="py-5"
    >
      <TeamMemberDetailContent gameSlug={gameSlug} member={member} />
    </MainlinePlaySectionCard>
  );
};
