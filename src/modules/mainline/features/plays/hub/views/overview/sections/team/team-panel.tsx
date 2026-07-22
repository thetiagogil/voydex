import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import { getTeamSlots } from "@/modules/mainline/features/plays/hub/views/overview/sections/team/team-model";
import { TeamSlot } from "@/modules/mainline/features/plays/hub/views/overview/sections/team/team-slot";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

type TeamPanelProps = {
  gameSlug: string | null;
  href: string;
  team: MainlinePlayTeamMember[];
};

export const TeamPanel = ({ gameSlug, href, team }: TeamPanelProps) => {
  const teamSlots = getTeamSlots(team);

  return (
    <MainlinePlaySectionCard
      title="Current Team"
      action={<MainlinePlaySectionDestination href={href} label="Full team" />}
      contentClassName="grid"
      showSeparator
    >
      <div className="grid w-full grid-cols-3 gap-2">
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
