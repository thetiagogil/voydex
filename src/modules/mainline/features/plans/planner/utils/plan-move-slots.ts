import {
  emptyPlanMoveSlots,
  type PlanMoveSlots,
} from "@/modules/mainline/features/plans/types";
import type { Json } from "@/shared/types/database.types";

/*
 * A saved member's planned moves (the Plan view's `moves`: slot, move_id) as
 * the Planner's four slots. Anything outside slots 1 to 4 is left out.
 */
export const toPlanMoveSlots = (moves: Json | null): PlanMoveSlots => {
  const slots = emptyPlanMoveSlots();

  if (!Array.isArray(moves)) {
    return slots;
  }

  for (const move of moves) {
    if (!move || typeof move !== "object" || Array.isArray(move)) continue;

    const { move_id: moveId, slot } = move;

    if (
      typeof slot === "number" &&
      Number.isInteger(slot) &&
      slot >= 1 &&
      slot <= 4 &&
      typeof moveId === "number"
    ) {
      slots[slot - 1] = moveId;
    }
  }

  return slots;
};

/* The filled slots as rows to save, numbered 1 to 4. */
export const toPlannedMoveRows = (moveIds: PlanMoveSlots) =>
  moveIds.flatMap((moveId, index) =>
    moveId === null ? [] : [{ moveId, slot: index + 1 }],
  );
