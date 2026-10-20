import { describe, expect, it } from "vitest";

import {
  emptyPlanMoveSlots,
  type PlanMember,
} from "@/modules/mainline/features/plans/types";

import { getShownPlanSlot } from "./plan-shown-slot";

const member = (slot: number): PlanMember => ({
  abilityId: null,
  formId: slot,
  gender: null,
  heldItemId: null,
  moveIds: emptyPlanMoveSlots(),
  natureId: null,
  notes: null,
  role: null,
  slot,
  speciesId: slot,
});

describe("getShownPlanSlot", () => {
  const first = member(1);
  const second = member(2);
  const slots = [first, second, null, null, null, null];

  it("shows the slot that opens", () => {
    expect(getShownPlanSlot(null, 1, slots)).toEqual({
      index: 1,
      member: second,
    });
  });

  it("keeps showing the last slot while the sheet closes", () => {
    const shown = { index: 0, member: first };

    expect(getShownPlanSlot(shown, null, slots)).toBe(shown);
    expect(getShownPlanSlot(shown, 0, [null, second])).toBe(shown);
  });

  it("returns the same value when nothing changed, and follows edits", () => {
    const shown = { index: 0, member: first };
    const edited = { ...first, role: "lead" as const };

    expect(getShownPlanSlot(shown, 0, slots)).toBe(shown);
    expect(getShownPlanSlot(shown, 0, [edited])).toEqual({
      index: 0,
      member: edited,
    });
  });
});
