import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamSlots,
  playTeamSize,
} from "@/modules/mainline/features/plays/shared/utils/play-team-slots";

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
};

/*
 * A group's six slots, as the Plays card and Overview place a team. The
 * reserve's stored slots run 7 to 12 and read R1 to R6.
 */
export const getTeamRosterSlots = (
  roster: MainlinePlayTeamMember[],
  group: TeamRosterGroup,
): TeamRosterSlot[] =>
  getPlayTeamSlots(
    roster.filter((member) => member.roster_state_slug === group),
    { slotOffset: group === "active" ? 0 : playTeamSize },
  ).map(({ member, position }) => ({
    label: group === "active" ? `${position}` : `R${position}`,
    member,
    position,
  }));

const countFilledSlots = (slots: TeamRosterSlot[]) =>
  slots.filter((slot) => slot.member).length;

export const getTeamRosterSummary = (
  roster: MainlinePlayTeamMember[],
): TeamRosterSummary => {
  const activeCount = countFilledSlots(getTeamRosterSlots(roster, "active"));
  const reserveCount = countFilledSlots(getTeamRosterSlots(roster, "reserve"));

  return {
    activeCount,
    openSlotCount: playTeamSize * 2 - activeCount - reserveCount,
    reserveCount,
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

/*
 * The Pokémon the profile opens on: the one the link named, when it is on
 * this roster, else the first by slot.
 */
export const getDefaultTeamMember = (
  roster: MainlinePlayTeamMember[],
  requestedId: string | null = null,
): MainlinePlayTeamMember | null => {
  const requested = requestedId
    ? roster.find((member) => member.play_pokemon_id === requestedId)
    : undefined;

  return (
    requested ??
    [...roster]
      .filter((member) => member.slot !== null)
      .sort((left, right) => (left.slot ?? 13) - (right.slot ?? 13))[0] ??
    null
  );
};
