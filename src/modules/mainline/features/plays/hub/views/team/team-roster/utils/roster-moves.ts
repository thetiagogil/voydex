import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { playTeamSize } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";

/* Stored roster slots: 1 to 6 on the team, 7 to 12 (R1 to R6) in reserve. */
export const rosterSlots = Array.from(
  { length: playTeamSize * 2 },
  (_, index) => index + 1,
);

export const isTeamSlot = (slot: number) => slot <= playTeamSize;

export const teamNeedsOneMessage = "Your team needs at least one Pokémon.";

/* A slot as people read it: "Team slot 2" or "Reserve R3". */
export const formatRosterSlot = (slot: number) =>
  isTeamSlot(slot) ? `Team slot ${slot}` : `Reserve R${slot - playTeamSize}`;

export type RosterMove =
  | { kind: "blocked"; reason: string }
  | { kind: "move"; toSlot: number }
  | { kind: "stay" }
  | { kind: "swap"; toSlot: number; with: MainlinePlayTeamMember };

const isCurrent = (member: MainlinePlayTeamMember) =>
  member.slot !== null &&
  (member.roster_state_slug === "active" ||
    member.roster_state_slug === "reserve");

/*
 * What dropping or moving a Pokémon onto a slot does, as the database's move
 * decides it: onto a taken slot the two swap, onto an open one it moves, and
 * the last Pokémon on the team cannot leave for an open reserve slot.
 */
export const getRosterMove = (
  roster: readonly MainlinePlayTeamMember[],
  playPokemonId: string,
  toSlot: number,
): RosterMove => {
  const member = roster.find(
    (candidate) => candidate.play_pokemon_id === playPokemonId,
  );

  if (!member?.slot || !isCurrent(member) || !rosterSlots.includes(toSlot)) {
    return { kind: "blocked", reason: "It can't move there." };
  }

  if (member.slot === toSlot) {
    return { kind: "stay" };
  }

  const occupant = roster.find(
    (candidate) => isCurrent(candidate) && candidate.slot === toSlot,
  );

  if (occupant) {
    return { kind: "swap", toSlot, with: occupant };
  }

  const othersOnTeam = roster.some(
    (candidate) =>
      candidate !== member &&
      isCurrent(candidate) &&
      candidate.roster_state_slug === "active",
  );

  if (isTeamSlot(member.slot) && !isTeamSlot(toSlot) && !othersOnTeam) {
    return { kind: "blocked", reason: teamNeedsOneMessage };
  }

  return { kind: "move", toSlot };
};

const placeIn = (
  member: MainlinePlayTeamMember,
  slot: number,
): MainlinePlayTeamMember => {
  const onTeam = isTeamSlot(slot);

  return {
    ...member,
    roster_state_id: onTeam ? 1 : 2,
    roster_state_name: onTeam ? "Active" : "Reserve",
    roster_state_slug: onTeam ? "active" : "reserve",
    slot,
  };
};

/* The roster as it reads once the move lands, for an instant redraw. */
export const applyRosterMove = (
  roster: readonly MainlinePlayTeamMember[],
  playPokemonId: string,
  toSlot: number,
): MainlinePlayTeamMember[] => {
  const move = getRosterMove(roster, playPokemonId, toSlot);
  const fromSlot = roster.find(
    (member) => member.play_pokemon_id === playPokemonId,
  )?.slot;

  if ((move.kind !== "move" && move.kind !== "swap") || !fromSlot) {
    return [...roster];
  }

  return roster.map((member) => {
    if (member.play_pokemon_id === playPokemonId) {
      return placeIn(member, toSlot);
    }

    return move.kind === "swap" && member === move.with
      ? placeIn(member, fromSlot)
      : member;
  });
};

/* The toast once a move lands: "Leaf moved to Reserve R2" or a swap. */
export const describeRosterMove = (
  member: MainlinePlayTeamMember,
  move: Extract<RosterMove, { kind: "move" | "swap" }>,
) =>
  move.kind === "swap"
    ? `${getPlayTeamMemberName(member)} swapped with ${getPlayTeamMemberName(move.with)}`
    : `${getPlayTeamMemberName(member)} moved to ${formatRosterSlot(move.toSlot)}`;
