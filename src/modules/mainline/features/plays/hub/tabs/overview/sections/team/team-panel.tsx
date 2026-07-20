import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { getTeamSlots } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/team/team-model";
import { TeamSlot } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/team/team-slot";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

type TeamPanelProps = {
  gameSlug: string | null;
  team: MainlinePlayTeamMember[];
};

export const TeamPanel = ({ gameSlug, team }: TeamPanelProps) => {
  const teamSlots = getTeamSlots(team);

  return (
    <MainlinePlaySectionCard
      title="Current Team"
      contentClassName="grid"
      showSeparator
    >
      <div className="grid w-full grid-cols-3 gap-2 md:grid-cols-6">
        {teamSlots.map((slot) => (
          <TeamSlot
            key={slot.slotNumber}
            gameSlug={gameSlug}
            member={slot.member}
            slotNumber={slot.slotNumber}
          />
        ))}
      </div>
    </MainlinePlaySectionCard>
  );
};
