import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";

export type TeamRosterGroup = "active" | "reserve";

export type TeamRosterSlot = {
  label: string;
  member: MainlinePlayTeamMember | null;
  position: number;
};

export type TeamRosterSummary = {
  activeCount: number;
  openSlotCount: number;
  reserveCount: number;
  /* The reserve shows once something is in it. */
  showsReserve: boolean;
};

export const teamRosterSize = 6;

export const getTeamRosterSlots = (
  roster: MainlinePlayTeamMember[],
  group: TeamRosterGroup,
): TeamRosterSlot[] => {
  const slotOffset = group === "active" ? 0 : teamRosterSize;
  const memberBySlot = new Map(
    roster
      .filter((member) => member.roster_state_slug === group)
      .map((member) => [member.slot, member]),
  );

  return Array.from({ length: teamRosterSize }, (_, index) => {
    const position = index + 1;
    const storedSlot = slotOffset + position;

    return {
      label: group === "active" ? `${position}` : `R${position}`,
      member: memberBySlot.get(storedSlot) ?? null,
      position,
    };
  });
};

const countFilledSlots = (slots: TeamRosterSlot[]) =>
  slots.filter((slot) => slot.member).length;

export const getTeamRosterSummary = (
  roster: MainlinePlayTeamMember[],
): TeamRosterSummary => {
  const activeCount = countFilledSlots(getTeamRosterSlots(roster, "active"));
  const reserveCount = countFilledSlots(getTeamRosterSlots(roster, "reserve"));
  const showsReserve = reserveCount > 0;

  return {
    activeCount,
    openSlotCount:
      teamRosterSize -
      activeCount +
      (showsReserve ? teamRosterSize - reserveCount : 0),
    reserveCount,
    showsReserve,
  };
};

/* The page head's one line: what's on the team, in reserve and still open. */
export const formatTeamRosterSummary = ({
  activeCount,
  openSlotCount,
  reserveCount,
}: TeamRosterSummary): string => {
  if (!activeCount && !reserveCount) {
    return "No Pokémon yet";
  }

  return [
    `${activeCount} active`,
    reserveCount ? `${reserveCount} in reserve` : null,
    openSlotCount
      ? `${openSlotCount} open ${openSlotCount === 1 ? "slot" : "slots"}`
      : null,
  ]
    .filter(Boolean)
    .join(" · ");
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
