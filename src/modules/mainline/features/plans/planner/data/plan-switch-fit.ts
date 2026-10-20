import { clearUnsupportedBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type {
  PlanMember,
  PlannerBuildFields,
} from "@/modules/mainline/features/plans/types";

/* A planned Pokémon that stays on the team but loses part of its build. */
export type PlanSwitchChange = {
  /* What it loses, in a few words: "Ability", "Held item", "2 moves". */
  lost: string[];
  slot: number;
  speciesId: number;
};

export type PlanSwitchFit = {
  changed: PlanSwitchChange[];
  /* The team as the new game can have it: removed ones out, builds trimmed. */
  kept: PlanMember[];
  removedSpeciesIds: number[];
};

/*
 * A team moved to another game: a Pokémon the game's Pokédexes don't have
 * leaves the team; one that stays loses the choices the game doesn't offer
 * it (no abilities, held items, natures or gender yet, or ones it can't
 * have there) and the moves it can't learn there.
 */
export const fitPlanMembersForSwitch = (
  members: readonly PlanMember[],
  rows: PlanMemberCheckRows,
  fields: PlannerBuildFields,
): PlanSwitchFit => {
  const changed: PlanSwitchChange[] = [];
  const kept: PlanMember[] = [];
  const removedSpeciesIds: number[] = [];

  for (const member of members) {
    if (!rows.poolSpeciesIds.has(member.speciesId)) {
      removedSpeciesIds.push(member.speciesId);
      continue;
    }

    const supported = clearUnsupportedBuildFields(member, fields);
    const abilityId =
      supported.abilityId !== null &&
      rows.abilityIdsByFormId.get(member.formId)?.has(supported.abilityId)
        ? supported.abilityId
        : null;
    const heldItemId =
      supported.heldItemId !== null &&
      rows.heldItemIds.has(supported.heldItemId)
        ? supported.heldItemId
        : null;
    const natureId =
      supported.natureId !== null && rows.natureIds.has(supported.natureId)
        ? supported.natureId
        : null;
    const learnable = rows.learnableMoveIdsByFormId.get(member.formId);
    const moveIds = member.moveIds.map((moveId) =>
      moveId !== null && learnable?.has(moveId) ? moveId : null,
    ) as PlanMember["moveIds"];
    const lostMoves = member.moveIds.filter(
      (moveId, index) => moveId !== null && moveIds[index] === null,
    ).length;
    const lost = [
      member.abilityId !== null && abilityId === null ? "Ability" : null,
      member.heldItemId !== null && heldItemId === null ? "Held item" : null,
      member.natureId !== null && natureId === null ? "Nature" : null,
      member.gender !== null && supported.gender === null ? "Gender" : null,
      lostMoves ? `${lostMoves} ${lostMoves === 1 ? "move" : "moves"}` : null,
    ].filter((part): part is string => part !== null);

    if (lost.length) {
      changed.push({ lost, slot: member.slot, speciesId: member.speciesId });
    }

    kept.push({
      ...supported,
      abilityId,
      heldItemId,
      moveIds,
      natureId,
    });
  }

  return { changed, kept, removedSpeciesIds };
};
