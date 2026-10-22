import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamMove,
} from "@/modules/mainline/features/plays/hub/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  BattleStatKey,
  MemberBattleForm,
  MemberBattleMove,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";

import {
  formatTeamMemberGender,
  getTeamMemberIdentity,
} from "../../utils/team-member-display";

export type TeamMove = {
  /* Replaces the type line, such as "From Flamethrower" for a Z-Move. */
  detail?: string;
  isStatus: boolean;
  name: string;
  position: number;
  type: Pick<NonNullable<MainlinePlayTeamMove["type"]>, "name" | "slug"> | null;
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

/*
 * Only a Pokémon still on the team or in reserve can be edited. One that
 * retired or was replaced is History's now: a link (the Collection's sheet)
 * can still open it, read-only.
 */
export const canEditTeamMember = (member: MainlinePlayTeamMember) =>
  member.roster_state_slug === "active" ||
  member.roster_state_slug === "reserve";

/* Under the name: who it is, its level, gender and where it sits (or that it left). */
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
      : member.roster_state_slug === "retired"
        ? "Retired"
        : member.roster_state_slug === "replaced"
          ? "Replaced"
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

const battleStatLabels: Record<BattleStatKey, string> = {
  attack: "Atk",
  defense: "Def",
  hp: "HP",
  specialAttack: "Sp. Atk",
  specialDefense: "Sp. Def",
  speed: "Speed",
};

/* "Atk +46 · Def +33 · Sp. Atk +21": what a battle form changes. */
export const formatBattleStatChanges = (
  changes: MemberBattleForm["statChanges"],
): string | null =>
  changes.length
    ? changes
        .map(
          ({ change, key }) =>
            `${battleStatLabels[key]} ${change > 0 ? "+" : "−"}${Math.abs(change)}`,
        )
        .join(" · ")
    : null;

/* Moves a battle mechanic turns into others, each saying where it came from. */
export const getBattleMoves = (moves: MemberBattleMove[]): TeamMove[] =>
  moves.map((move, index) => ({
    detail: `From ${move.fromMoveName}`,
    isStatus: false,
    name: move.move.name,
    position: index + 1,
    type: move.move.type,
  }));

/*
 * Only what was recorded, and only what the game has. In a battle form the
 * ability is the form's own and its stat changes join the facts.
 */
export const getTeamMemberFacts = (
  member: MainlinePlayTeamMember,
  mechanics: GameMechanicsProfile,
  battleForm: MemberBattleForm | null = null,
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

  if (battleForm?.abilityName) {
    facts.push({
      detail: null,
      label: "Ability",
      value: battleForm.abilityName,
    });
  } else if (supportsGameMechanic(mechanics, gameMechanics.abilities)) {
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

  if (supportsGameMechanic(mechanics, gameMechanics.terastal)) {
    facts.push(
      member.tera_type_name
        ? { detail: null, label: "Tera Type", value: member.tera_type_name }
        : notRecorded("Tera Type"),
    );
  }

  const statChanges = battleForm
    ? formatBattleStatChanges(battleForm.statChanges)
    : null;

  if (statChanges) {
    facts.push({ detail: null, label: "Stat changes", value: statChanges });
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
