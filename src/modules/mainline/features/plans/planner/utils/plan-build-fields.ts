import type {
  PlanMember,
  PlannerBuildFields,
} from "@/modules/mainline/features/plans/types";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";

/*
 * Which build choices a Plan offers in a version group, from its resolved
 * capability profile: a mechanic not known to be supported is left out.
 */
export const getPlanBuildFields = (
  mechanics: GameMechanicsProfile,
): PlannerBuildFields => ({
  ability: supportsGameMechanic(mechanics, gameMechanics.abilities),
  gender: supportsGameMechanic(mechanics, gameMechanics.pokemonGender),
  heldItem: supportsGameMechanic(mechanics, gameMechanics.heldItems),
  nature: supportsGameMechanic(mechanics, gameMechanics.natures),
});

/*
 * A planned Pokémon with the choices its version group doesn't have taken
 * off: a Plan moved from Sword and Shield to Let's Go keeps no ability, held
 * item or nature. Returns the same member when nothing changes.
 */
export const clearUnsupportedBuildFields = (
  member: PlanMember,
  fields: PlannerBuildFields,
): PlanMember => {
  const cleared: PlanMember = {
    ...member,
    abilityId: fields.ability ? member.abilityId : null,
    gender: fields.gender ? member.gender : null,
    heldItemId: fields.heldItem ? member.heldItemId : null,
    natureId: fields.nature ? member.natureId : null,
  };

  return cleared.abilityId === member.abilityId &&
    cleared.gender === member.gender &&
    cleared.heldItemId === member.heldItemId &&
    cleared.natureId === member.natureId
    ? member
    : cleared;
};

/*
 * Whether a planned Pokémon has anything you filled in (ability, gender,
 * item, nature, role, notes or a move), so removing it asks first.
 */
export const hasPlanMemberDetails = (member: PlanMember) =>
  member.abilityId !== null ||
  member.gender !== null ||
  member.heldItemId !== null ||
  member.natureId !== null ||
  Boolean(member.role?.trim()) ||
  Boolean(member.notes?.trim()) ||
  member.moveIds.some((moveId) => moveId !== null);
