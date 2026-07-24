import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

export const getTeamMemberName = getPlayTeamMemberName;
export const getTeamMemberImageUrl = getPlayTeamMemberImageUrl;

export const getTeamSlots = (team: MainlinePlayTeamPreviewMember[]) => {
  const memberBySlot = new Map(
    team.map((member, index) => [member.slot ?? index + 1, member]),
  );

  return Array.from({ length: 6 }, (_, index) => {
    const slotNumber = index + 1;

    return {
      member: memberBySlot.get(slotNumber) ?? null,
      slotNumber,
    };
  });
};
