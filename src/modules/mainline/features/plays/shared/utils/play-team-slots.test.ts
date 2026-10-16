import { describe, expect, it } from "vitest";

import { getPlayTeamSlots } from "./play-team-slots";

const member = (id: string, slot: number | null) => ({ id, slot });

describe("getPlayTeamSlots", () => {
  it("places members in their recorded slots and leaves the rest open", () => {
    const slots = getPlayTeamSlots([member("a", 1), member("b", 4)]);

    expect(slots.map((slot) => slot.member?.id ?? null)).toEqual([
      "a",
      null,
      null,
      "b",
      null,
      null,
    ]);
    expect(slots.map((slot) => slot.position)).toEqual([1, 2, 3, 4, 5, 6]);
  });

  it("fills the first open slot for a member without one or with a taken slot", () => {
    const slots = getPlayTeamSlots([
      member("a", 2),
      member("b", null),
      member("c", 2),
    ]);

    expect(slots.map((slot) => slot.member?.id ?? null)).toEqual([
      "b",
      "a",
      "c",
      null,
      null,
      null,
    ]);
  });

  it("reads the reserve's stored slots 7 to 12 with an offset", () => {
    const slots = getPlayTeamSlots([member("r", 8)], { slotOffset: 6 });

    expect(slots[1].member?.id).toBe("r");
  });

  it("keeps six slots when more members are given", () => {
    const slots = getPlayTeamSlots(
      Array.from({ length: 8 }, (_, index) => member(`${index}`, null)),
    );

    expect(slots).toHaveLength(6);
    expect(slots.every((slot) => slot.member)).toBe(true);
  });
});
