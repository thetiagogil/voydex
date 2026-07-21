import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

export type TeamAnalysisPreview = {
  activeCount: number;
  membersWithMoves: number;
  typedMemberCount: number;
  uniqueTypeCount: number;
  unknownActivePositions: number;
};

const activeRosterSize = 6;

export const getTeamAnalysisPreview = (
  roster: MainlinePlayTeamMember[],
): TeamAnalysisPreview => {
  const activeMembers = roster.filter(
    (member) => member.roster_state_slug === "active",
  );
  const representedTypes = new Set<number>();
  let membersWithMoves = 0;
  let typedMemberCount = 0;

  for (const member of activeMembers) {
    if (member.primaryType) {
      representedTypes.add(member.primaryType.id);
      typedMemberCount += 1;
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
    typedMemberCount,
    uniqueTypeCount: representedTypes.size,
    unknownActivePositions: Math.max(
      activeRosterSize - activeMembers.length,
      0,
    ),
  };
};
