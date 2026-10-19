import { describe, expect, it } from "vitest";

import {
  createStampOrder,
  describePlayStamp,
  getMilestoneBadgeTypeId,
  getPlayStampLabel,
  getPlayStampStates,
  getStampDelay,
} from "./play-stamps";

describe("play stamps", () => {
  it("reads the first badge's type", () => {
    expect(getMilestoneBadgeTypeId([{ name: "x" }, { type_id: 12 }])).toBe(12);
    expect(getMilestoneBadgeTypeId(null)).toBeNull();
  });

  it("marks the first stamp not yet earned as next", () => {
    expect(
      getPlayStampStates([true, false, true, false], (earned) => earned),
    ).toEqual(["earned", "next", "earned", "todo"]);
  });

  it("prints a badge without its Badge and the League by name", () => {
    expect(getPlayStampLabel("gym", "Grass Badge")).toBe("Grass");
    expect(getPlayStampLabel("league", "Champion Leon")).toBe("Champion Leon");
  });

  it("names a stamp and where it stands", () => {
    expect(
      describePlayStamp({ name: "Grass Badge", state: "earned" }, "Aug 12"),
    ).toBe("Grass Badge, earned Aug 12");
    expect(
      describePlayStamp({ name: "Water Badge", state: "next" }, null),
    ).toBe("Water Badge, next");
    expect(describePlayStamp({ name: "Fire Badge", state: "todo" }, null)).toBe(
      "Fire Badge, not earned yet",
    );
  });
});

describe("stamp order", () => {
  it("lands milestones recorded together one after another", () => {
    const order = createStampOrder([60004, 60005, 60006]);

    expect(
      [60004, 60005, 60006, 60007].map((id) => getStampDelay(order, id)),
    ).toEqual(["0ms", "110ms", "220ms", null]);
  });
});
