import { useId } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { EmptyState } from "@/shared/components/empty-state";
import { Card } from "@/shared/components/ui/card";

import { getTeamMemberName } from "../../utils/team-member-display";
import { TeamMemberActions } from "./team-member-actions";
import {
  TeamMemberProfile,
  teamMemberNameClassName,
} from "./team-member-profile";

/* Beside the roster on wide screens: the selected Pokémon, in a quiet card. */
export const TeamMemberDetail = ({
  gameSlug,
  mechanics,
  member,
}: {
  gameSlug: string | null;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember | null;
}) => {
  const titleId = useId();

  if (!member) {
    return (
      <EmptyState
        title="Your team starts here"
        description="Pokémon on this Play's team show up here with their moves and where you met them."
      />
    );
  }

  return (
    <Card
      role="region"
      aria-labelledby={titleId}
      className="gap-0 px-5 py-5 sm:px-7 sm:py-6.5"
    >
      <TeamMemberProfile
        mechanics={mechanics}
        member={member}
        title={
          <h3 id={titleId} className={teamMemberNameClassName}>
            {getTeamMemberName(member)}
          </h3>
        }
      />
      <TeamMemberActions className="mt-5" gameSlug={gameSlug} member={member} />
    </Card>
  );
};
