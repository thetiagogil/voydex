import { describe, expect, it } from "vitest";

import { toPlanMoveSlots, toPlannedMoveRows } from "./plan-move-slots";

describe("toPlanMoveSlots", () => {
  it("places saved moves in their slots, leaving gaps empty", () => {
    expect(
      toPlanMoveSlots([
        { move_id: 53, name: "Flamethrower", slot: 1, slug: "flamethrower" },
        { move_id: 89, name: "Earthquake", slot: 3, slug: "earthquake" },
      ]),
    ).toEqual([53, null, 89, null]);
  });

  it("ignores anything that isn't a slot from 1 to 4", () => {
    expect(
      toPlanMoveSlots([{ move_id: 1, slot: 5 }, "move", null, { slot: 2 }]),
    ).toEqual([null, null, null, null]);
    expect(toPlanMoveSlots(null)).toEqual([null, null, null, null]);
  });
});

describe("toPlannedMoveRows", () => {
  it("keeps each filled slot's number", () => {
    expect(toPlannedMoveRows([null, 53, null, 89])).toEqual([
      { moveId: 53, slot: 2 },
      { moveId: 89, slot: 4 },
    ]);
  });
});
