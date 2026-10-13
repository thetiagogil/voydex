import { PlanSaveInputError } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

/*
 * What the version group allows, read for the Pokémon a Plan is saving: its
 * Pokédexes' species, each form's species, the moves each form can learn in
 * every game of the group, each form's abilities in the group's generation,
 * and which held items and natures exist by then.
 */
export type PlanMemberCheckRows = {
  abilityIdsByFormId: ReadonlyMap<number, ReadonlySet<number>>;
  heldItemIds: ReadonlySet<number>;
  learnableMoveIdsByFormId: ReadonlyMap<number, ReadonlySet<number>>;
  natureIds: ReadonlySet<number>;
  poolSpeciesIds: ReadonlySet<number>;
  speciesIdByFormId: ReadonlyMap<number, number>;
  speciesNameById: ReadonlyMap<number, string>;
  versionGroupName: string;
};

/*
 * Rejects a planned Pokémon its version group can't have: a species outside
 * the group's Pokédexes, a form of another species, a move it can't learn in
 * every game of the group, or an ability, held item or nature the group
 * doesn't offer it. Call it after unsupported choices are cleared.
 */
export const assertPlanMembersFitVersionGroup = (
  members: readonly PlanMember[],
  rows: PlanMemberCheckRows,
) => {
  for (const member of members) {
    const name =
      rows.speciesNameById.get(member.speciesId) ??
      `The Pokémon in slot ${member.slot}`;

    if (!rows.poolSpeciesIds.has(member.speciesId)) {
      throw new PlanSaveInputError(
        `${name} isn't in ${rows.versionGroupName}. Swap it for one that is.`,
      );
    }

    if (rows.speciesIdByFormId.get(member.formId) !== member.speciesId) {
      throw new PlanSaveInputError(`${name}'s form isn't one Voydex knows.`);
    }

    const learnable = rows.learnableMoveIdsByFormId.get(member.formId);

    if (
      member.moveIds.some(
        (moveId) => moveId !== null && !learnable?.has(moveId),
      )
    ) {
      throw new PlanSaveInputError(
        `${name} can't learn one of its planned moves in ${rows.versionGroupName}. Check its moves.`,
      );
    }

    if (
      member.abilityId !== null &&
      !rows.abilityIdsByFormId.get(member.formId)?.has(member.abilityId)
    ) {
      throw new PlanSaveInputError(
        `${name} can't have that ability in ${rows.versionGroupName}.`,
      );
    }

    if (
      member.heldItemId !== null &&
      !rows.heldItemIds.has(member.heldItemId)
    ) {
      throw new PlanSaveInputError(
        `${name}'s held item isn't in ${rows.versionGroupName}.`,
      );
    }

    if (member.natureId !== null && !rows.natureIds.has(member.natureId)) {
      throw new PlanSaveInputError(
        `${name}'s nature isn't in ${rows.versionGroupName}.`,
      );
    }
  }
};
