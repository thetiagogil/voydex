import type { PlannerSlots } from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import type { PlanMember } from "@/modules/mainline/features/plans/types";

export type ShownPlanSlot = { index: number; member: PlanMember };

/*
 * What the slot sheet shows: the open slot, or, once it closes (or its
 * Pokémon is removed), the slot it was showing, so the sheet can slide out
 * with its content instead of vanishing. Returns `shown` itself when nothing
 * changed.
 */
export const getShownPlanSlot = (
  shown: ShownPlanSlot | null,
  index: number | null,
  slots: PlannerSlots,
): ShownPlanSlot | null => {
  const member = index === null ? null : slots[index];

  if (index === null || !member) {
    return shown;
  }

  return shown?.index === index && shown.member === member
    ? shown
    : { index, member };
};
