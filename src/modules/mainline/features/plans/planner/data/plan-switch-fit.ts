import { clearUnsupportedBuildFields } from "@/modules/mainline/features/plans/planner/utils/plan-build-fields";
import type { PlanMemberCheckRows } from "@/modules/mainline/features/plans/planner/utils/plan-member-check";
import type {
  PlanMember,
  PlannerBuildFields,
} from "@/modules/mainline/features/plans/types";

/* What a planned Pokémon loses on a switch: the choices, by id. */
export type PlanSwitchLoss = {
  abilityId: number | null;
  gender: boolean;
  heldItemId: number | null;
  moveIds: number[];
  natureId: number | null;
};

/* A planned Pokémon that stays on the team but loses part of its build. */
export type PlanSwitchChange = {
  loss: PlanSwitchLoss;
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
    const loss: PlanSwitchLoss = {
      abilityId: abilityId === null ? member.abilityId : null,
      gender: member.gender !== null && supported.gender === null,
      heldItemId: heldItemId === null ? member.heldItemId : null,
      moveIds: member.moveIds.filter(
        (moveId, index): moveId is number =>
          moveId !== null && moveIds[index] === null,
      ),
      natureId: natureId === null ? member.natureId : null,
    };

    if (
      loss.abilityId !== null ||
      loss.gender ||
      loss.heldItemId !== null ||
      loss.moveIds.length ||
      loss.natureId !== null
    ) {
      changed.push({ loss, slot: member.slot, speciesId: member.speciesId });
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

/* The names a loss is told in, by id, read for the choices it names. */
export type PlanSwitchLossNames = {
  abilities: ReadonlyMap<number, string>;
  items: ReadonlyMap<number, string>;
  moves: ReadonlyMap<number, string>;
  natures: ReadonlyMap<number, string>;
};

/*
 * A loss in words, each choice by name: "Ability: Illuminate", "Held item:
 * Leftovers", "Nature: Bold", "Gender", "Moves: Psychic, Recover".
 */
export const describePlanSwitchLoss = (
  loss: PlanSwitchLoss,
  names: PlanSwitchLossNames,
): string[] => {
  const name = (map: ReadonlyMap<number, string>, id: number | null) =>
    id === null ? null : (map.get(id) ?? "Unknown");
  const ability = name(names.abilities, loss.abilityId);
  const item = name(names.items, loss.heldItemId);
  const nature = name(names.natures, loss.natureId);
  const moves = loss.moveIds.map((id) => names.moves.get(id) ?? "Unknown");

  return [
    ability ? `Ability: ${ability}` : null,
    item ? `Held item: ${item}` : null,
    nature ? `Nature: ${nature}` : null,
    loss.gender ? "Gender" : null,
    moves.length
      ? `${moves.length === 1 ? "Move" : "Moves"}: ${moves.join(", ")}`
      : null,
  ].filter((part): part is string => part !== null);
};
