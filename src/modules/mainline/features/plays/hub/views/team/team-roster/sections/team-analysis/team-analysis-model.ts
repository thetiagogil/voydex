import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

import { teamRosterSize } from "../roster/team-roster-model";

export type TeamAnalysisPreview = {
  activeCount: number;
  membersWithMoves: number;
  uniqueTypeCount: number;
  openSlotCount: number;
};

/* What the quick read needs: the Active team's types, moves and open slots. */
export const getTeamAnalysisPreview = (
  roster: MainlinePlayTeamMember[],
): TeamAnalysisPreview => {
  const activeMembers = roster.filter(
    (member) => member.roster_state_slug === "active",
  );
  const representedTypes = new Set<number>();
  let membersWithMoves = 0;

  for (const member of activeMembers) {
    if (member.primaryType) {
      representedTypes.add(member.primaryType.id);
    }

    if (member.secondaryType) {
      representedTypes.add(member.secondaryType.id);
    }

    if (member.moves.some((move) => move.name)) {
      membersWithMoves += 1;
    }
  }

  return {
    activeCount: activeMembers.length,
    membersWithMoves,
    uniqueTypeCount: representedTypes.size,
    openSlotCount: Math.max(teamRosterSize - activeMembers.length, 0),
  };
};
