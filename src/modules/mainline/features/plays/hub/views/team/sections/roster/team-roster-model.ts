import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

export type TeamRosterGroup = "active" | "reserve";

export type TeamRosterSlot = {
  label: string;
  member: MainlinePlayTeamMember | null;
  position: number;
};

const rosterSize = 6;

export const getTeamRosterSlots = (
  roster: MainlinePlayTeamMember[],
  group: TeamRosterGroup,
): TeamRosterSlot[] => {
  const slotOffset = group === "active" ? 0 : rosterSize;
  const memberBySlot = new Map(
    roster
      .filter((member) => member.roster_state_slug === group)
      .map((member) => [member.slot, member]),
  );

  return Array.from({ length: rosterSize }, (_, index) => {
    const position = index + 1;
    const storedSlot = slotOffset + position;

    return {
      label: group === "active" ? `${position}` : `R${position}`,
      member: memberBySlot.get(storedSlot) ?? null,
      position,
    };
  });
};

export const getDefaultTeamMember = (
  roster: MainlinePlayTeamMember[],
): MainlinePlayTeamMember | null => {
  return (
    [...roster]
      .filter((member) => member.slot !== null)
      .sort((left, right) => (left.slot ?? 13) - (right.slot ?? 13))[0] ?? null
  );
};
