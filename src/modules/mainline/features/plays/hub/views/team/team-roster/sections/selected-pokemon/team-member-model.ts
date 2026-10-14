import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";

import {
  formatTeamMemberGender,
  getTeamMemberIdentity,
} from "../../utils/team-member-display";

export type TeamMove = {
  isStatus: boolean;
  name: string;
  position: number;
  type: MainlinePlayTeamMove["type"];
};

export type TeamMemberFact = {
  detail: string | null;
  /* Nothing recorded: the value is a quiet placeholder. */
  empty?: true;
  label: string;
  value: string;
};

const notRecorded = (
  label: string,
  value = "Not recorded",
): TeamMemberFact => ({
  detail: null,
  empty: true,
  label,
  value,
});

const teamStatLabels: Record<string, string> = {
  attack: "Attack",
  defense: "Defense",
  special_attack: "Sp. Atk",
  special_defense: "Sp. Def",
  speed: "Speed",
};

export const getTeamNatureEffectSummary = (
  member: MainlinePlayTeamMember,
): string | null => {
  if (!member.nature_name) {
    return null;
  }

  if (!member.natureIncreasedStat || !member.natureDecreasedStat) {
    return "No stat changes";
  }

  const increasedStat =
    teamStatLabels[member.natureIncreasedStat] ?? member.natureIncreasedStat;
  const decreasedStat =
    teamStatLabels[member.natureDecreasedStat] ?? member.natureDecreasedStat;

  return `+${increasedStat} · −${decreasedStat}`;
};

/* Under the name: who it is, its level, gender and where it sits. */
export const getTeamMemberMeta = (
  member: MainlinePlayTeamMember,
  mechanics: GameMechanicsProfile,
): string => {
  const gender = supportsGameMechanic(mechanics, gameMechanics.pokemonGender)
    ? formatTeamMemberGender(member.gender)
    : null;
  const position =
    member.roster_state_slug === "reserve"
      ? "Reserve"
      : member.slot
        ? `Slot ${member.slot}`
        : null;

  return [
    getTeamMemberIdentity(member),
    member.level ? `Lv. ${member.level}` : null,
    gender,
    position,
  ]
    .filter(Boolean)
    .join(" · ");
};

/* Only what was recorded, and only what the game has. */
export const getTeamMemberFacts = (
  member: MainlinePlayTeamMember,
  mechanics: GameMechanicsProfile,
): TeamMemberFact[] => {
  const facts: TeamMemberFact[] = [];

  // Every fact the game supports keeps its place, recorded or not.
  if (supportsGameMechanic(mechanics, gameMechanics.natures)) {
    facts.push(
      member.nature_name
        ? {
            detail: getTeamNatureEffectSummary(member),
            label: "Nature",
            value: member.nature_name,
          }
        : notRecorded("Nature"),
    );
  }

  if (supportsGameMechanic(mechanics, gameMechanics.abilities)) {
    facts.push(
      member.ability_name
        ? {
            detail: member.abilityEffectSummary,
            label: "Ability",
            value: member.ability_name,
          }
        : notRecorded("Ability"),
    );
  }

  if (supportsGameMechanic(mechanics, gameMechanics.heldItems)) {
    facts.push(
      member.held_item_name
        ? { detail: null, label: "Held item", value: member.held_item_name }
        : notRecorded("Held item", "None"),
    );
  }

  const metDetail =
    [member.met_level ? `Lv. ${member.met_level}` : null, member.ball_item_name]
      .filter(Boolean)
      .join(" · ") || null;

  if (member.met_location_label) {
    facts.push({
      detail: metDetail,
      label: "Met",
      value: member.met_location_label,
    });
  } else if (metDetail) {
    facts.push({ detail: null, label: "Met", value: metDetail });
  } else {
    facts.push(notRecorded("Met"));
  }

  return facts;
};

/* The recorded moves, in the order the Pokémon knows them. */
export const getTeamMoves = (moves: MainlinePlayTeamMove[]): TeamMove[] => {
  return moves
    .filter((move) => move.name)
    .toSorted((left, right) => left.slot - right.slot)
    .map((move) => ({
      isStatus: move.attributes?.damage_class === "status",
      name: move.name,
      position: move.slot,
      type: move.type,
    }));
};
