import { describe, expect, it } from "vitest";

import {
  createStampOrder,
  describePlayStamp,
  getMilestoneBadge,
  getMilestoneBadgeTypeId,
  getPlayStampLabel,
  getPlayStampStates,
  getTypedStampKind,
  inBadgeOrder,
} from "./play-stamps";

describe("play stamps", () => {
  it("reads the first badge's type", () => {
    expect(getMilestoneBadgeTypeId([{ name: "x" }, { type_id: 12 }])).toBe(12);
    expect(getMilestoneBadgeTypeId(null)).toBeNull();
  });

  describe("getMilestoneBadge", () => {
    const typeSlugById = new Map([
      [3, "water"],
      [12, "grass"],
      [99, "shadow"],
    ]);

    it("gives a gym its badge's type and picture", () => {
      expect(
        getMilestoneBadge({
          badgeRefs: [{ sprite_slug: "cascade-badge", type_id: 3 }],
          milestoneTypeSlug: "gym",
          typeSlugById,
        }),
      ).toEqual({
        imageUrl: "https://assets.test/badges/cascade-badge.webp",
        type: "water",
      });
    });

    it("keeps an Alola trial's Z-Crystal on its type's icon", () => {
      expect(
        getMilestoneBadge({
          badgeRefs: [{ sprite_slug: "waterium-z", type_id: 3 }],
          milestoneTypeSlug: "trial",
          typeSlugById,
        }),
      ).toEqual({ imageUrl: null, type: "water" });
    });

    it("has no picture for a badge without a sprite slug", () => {
      expect(
        getMilestoneBadge({
          badgeRefs: [{ sprite_slug: null, type_id: 12 }],
          milestoneTypeSlug: "gym",
          typeSlugById,
        }),
      ).toEqual({ imageUrl: null, type: "grass" });
    });

    it("has no badge without a typed ref or a Pokémon type", () => {
      expect(
        getMilestoneBadge({
          badgeRefs: [{ sprite_slug: "x-badge" }],
          milestoneTypeSlug: "gym",
          typeSlugById,
        }),
      ).toBeNull();
      expect(
        getMilestoneBadge({
          badgeRefs: [{ sprite_slug: "x-badge", type_id: 99 }],
          milestoneTypeSlug: "gym",
          typeSlugById,
        }),
      ).toBeNull();
      expect(
        getMilestoneBadge({
          badgeRefs: null,
          milestoneTypeSlug: "gym",
          typeSlugById,
        }),
      ).toBeNull();
    });
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

describe("inBadgeOrder", () => {
  it("sorts the badges by their place in the case and keeps the rest where they are", () => {
    const items = [
      { name: "Boulder", order: 1 },
      { name: "Marsh", order: 6 },
      { name: "Soul", order: 5 },
      { name: "Champion", order: null },
      { name: "Earth", order: 8 },
    ];

    expect(
      inBadgeOrder(items, (item) => item.order).map((item) => item.name),
    ).toEqual(["Boulder", "Soul", "Marsh", "Champion", "Earth"]);
  });
});
