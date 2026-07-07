import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { TeamModeAction } from "@/modules/mainline/features/plays/detail/components/overview/team/team-mode-action";
import { getTeamSlots } from "@/modules/mainline/features/plays/detail/components/overview/team/team-model";
import { TeamSlot } from "@/modules/mainline/features/plays/detail/components/overview/team/team-slot";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { Button } from "@/shared/components/ui/button";

type TeamPanelProps = {
  gameSlug: string | null;
  playId: string | null;
  team: MainlinePlayTeamMember[];
};

export const TeamPanel = ({ gameSlug, playId, team }: TeamPanelProps) => {
  const teamSlots = getTeamSlots(team);
  const teamHref = playId
    ? appRoutes.mainlinePlayTeam(playId)
    : appRoutes.mainlinePlays;

  return (
    <DetailSectionCard
      title="Current Team"
      action={<TeamModeAction />}
      contentClassName="grid gap-3"
    >
      <div className="grid w-full grid-cols-3 gap-2 md:grid-cols-6 xl:grid-cols-3">
        {teamSlots.map((slot) => (
          <TeamSlot
            key={slot.slotNumber}
            gameSlug={gameSlug}
            member={slot.member}
            slotNumber={slot.slotNumber}
          />
        ))}
      </div>

      <Button
        render={<Link href={teamHref} />}
        nativeButton={false}
        variant="outline"
        size="sm"
        className="w-full"
      >
        View full team
        <AppIcon icon={appIcons.actions.continue} aria-hidden />
      </Button>
    </DetailSectionCard>
  );
};
