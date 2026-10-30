import { describe, expect, it } from "vitest";

import {
  createStampOrder,
  describePlayStamp,
  getMilestoneBadgeTypeId,
  getPlayStampLabel,
  getPlayStampStates,
  getTypedStampKind,
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

  it("prints a trial by its captain and a Grand Trial by its kahuna", () => {
    expect(getPlayStampLabel("trial", "Lana Trial")).toBe("Lana");
    expect(getPlayStampLabel("trial", "Vast Poni Canyon Trial")).toBe(
      "Vast Poni Canyon",
    );
    expect(getPlayStampLabel("grand-trial", "Grand Trial Hala")).toBe("Hala");
  });

  it("stamps gyms, and the trials that hand out a Z-Crystal", () => {
    expect(getTypedStampKind("gym", false)).toBe("gym");
    expect(getTypedStampKind("trial", true)).toBe("trial");
    expect(getTypedStampKind("grand-trial", true)).toBe("grand-trial");
    expect(getTypedStampKind("trial", false)).toBeNull();
    expect(getTypedStampKind("champion", true)).toBeNull();
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
  it("places milestones recorded together in their order", () => {
    expect([...createStampOrder([60004, 60005, 60006])]).toEqual([
      [60004, 0],
      [60005, 1],
      [60006, 2],
    ]);
  });
});
