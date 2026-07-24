import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { MainlinePlaySectionDestination } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-destination";
import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";

import { getTeamSlots } from "./team-model";
import { TeamSlot } from "./team-slot";

type TeamSectionProps = {
  gameSlug: string | null;
  href: string;
  team: MainlinePlayTeamPreviewMember[];
};

export const TeamSection = ({ gameSlug, href, team }: TeamSectionProps) => {
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
