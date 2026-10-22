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

import { getTeamMemberIdentity } from "../../utils/team-member-display";

export type TeamMove = {
  /* Physical, Special or Status, at the end of the row. */
  category: string | null;
  /* Takes the category's place, such as "From Flamethrower" for a Z-Move. */
  detail?: string;
  name: string;
  position: number;
  type: Pick<NonNullable<MainlinePlayTeamMove["type"]>, "name" | "slug"> | null;
};

export type TeamMemberFact = {
  detail: string | null;
  /* Nothing recorded: the value is a quiet placeholder. */
  empty?: true;
  /* An item's picture goes before the value: a held item or a Poké Ball. */
  item?: "ball" | "held";
  label: string;
  /* A nature's stats, drawn under it as arrows. */
  nature?: { decreased: string | null; increased: string | null };
  /* Where and at what level you met it: a row of its own, as in the editor. */
  section?: "met";
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

/*
 * Only a Pokémon still on the team or in reserve can be edited. One that
 * retired or was replaced is History's now: a link (the Collection's sheet)
 * can still open it, read-only.
 */
export const canEditTeamMember = (member: MainlinePlayTeamMember) =>
  member.roster_state_slug === "active" ||
  member.roster_state_slug === "reserve";

/*
 * Under the name: who it is and its level, and that it sits in reserve or
 * has left. Its gender follows as a symbol (`getTeamMemberGender`); its slot
 * shows on the roster itself.
 */
export const getTeamMemberMeta = (member: MainlinePlayTeamMember): string => {
  const position =
    member.roster_state_slug === "reserve"
      ? "Reserve"
      : member.roster_state_slug === "retired"
        ? "Retired"
        : member.roster_state_slug === "replaced"
          ? "Replaced"
          : null;

  return [
    getTeamMemberIdentity(member),
    member.level ? `Lv. ${member.level}` : null,
    position,
  ]
    .filter(Boolean)
    .join(" · ");
};

/* Its recorded gender where the game has genders; null otherwise. */
export const getTeamMemberGender = (
  member: MainlinePlayTeamMember,
  mechanics: GameMechanicsProfile,
): "female" | "genderless" | "male" | null =>
  supportsGameMechanic(mechanics, gameMechanics.pokemonGender) &&
  (member.gender === "female" ||
    member.gender === "genderless" ||
    member.gender === "male")
    ? member.gender
    : null;

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
    category: null,
    detail: `From ${move.fromMoveName}`,
    name: move.move.name,
    position: index + 1,
    type: move.move.type,
  }));

/*
 * Only what the game has, in the edit sheet's order: nature, ability, held
 * item, Poké Ball, Tera Type and whether it can Gigantamax, then where and at
 * what level you met it (`section: "met"`, a row of its own). In a battle form the ability is the form's
 * own and its stat changes join the facts.
 */
export const getTeamMemberFacts = (
  member: MainlinePlayTeamMember,
  mechanics: GameMechanicsProfile,
  battleForm: MemberBattleForm | null = null,
  { canGigantamax = false }: { canGigantamax?: boolean } = {},
): TeamMemberFact[] => {
  const facts: TeamMemberFact[] = [];

  // Every fact the game supports keeps its place, recorded or not.
  if (supportsGameMechanic(mechanics, gameMechanics.natures)) {
    facts.push(
      member.nature_name
        ? {
            detail: null,
            label: "Nature",
            nature: {
              decreased: member.natureDecreasedStat,
              increased: member.natureIncreasedStat,
            },
            value: member.nature_name,
          }
        : notRecorded("Nature"),
    );
  }

  const hasAbilities = supportsGameMechanic(mechanics, gameMechanics.abilities);

  if (hasAbilities && battleForm?.abilityName) {
    facts.push({
      detail: null,
      label: "Ability",
      value: battleForm.abilityName,
    });
  } else if (hasAbilities) {
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
        ? {
            detail: null,
            item: "held",
            label: "Held item",
            value: member.held_item_name,
          }
        : { ...notRecorded("Held item", "None"), item: "held" },
    );
  }

  facts.push(
    member.ball_item_name
      ? {
          detail: null,
          item: "ball",
          label: "Poké Ball",
          value: member.ball_item_name,
        }
      : { ...notRecorded("Poké Ball"), item: "ball" },
  );

  if (supportsGameMechanic(mechanics, gameMechanics.terastal)) {
    facts.push(
      member.tera_type_name || member.fixed_tera_type_name
        ? {
            detail: null,
            label: "Tera Type",
            value: member.tera_type_name ?? member.fixed_tera_type_name ?? "",
          }
        : notRecorded("Tera Type"),
    );
  }

  if (
    supportsGameMechanic(mechanics, gameMechanics.dynamax) &&
    (canGigantamax || member.has_gigantamax_factor === true)
  ) {
    facts.push({
      detail: null,
      label: "Can Gigantamax",
      value: member.has_gigantamax_factor ? "Yes" : "No",
    });
  }

  const statChanges = battleForm
    ? formatBattleStatChanges(battleForm.statChanges)
    : null;

  if (statChanges) {
    facts.push({ detail: null, label: "Stat changes", value: statChanges });
  }

  facts.push(
    member.met_location_label
      ? {
          detail: null,
          label: "Met location",
          section: "met",
          value: member.met_location_label,
        }
      : { ...notRecorded("Met location"), section: "met" },
    member.met_level
      ? {
          detail: null,
          label: "Met level",
          section: "met",
          value: `Lv. ${member.met_level}`,
        }
      : { ...notRecorded("Met level"), section: "met" },
  );

  return facts;
};

/* The recorded moves, in the order the Pokémon knows them. */
export const getTeamMoves = (moves: MainlinePlayTeamMove[]): TeamMove[] => {
  return moves
    .filter((move) => move.name)
    .toSorted((left, right) => left.slot - right.slot)
    .map((move) => ({
      category: move.attributes?.damage_class ?? null,
      name: move.name,
      position: move.slot,
      type: move.type,
    }));
};
