import { describe, expect, it } from "vitest";

import {
  decodePlanShare,
  encodePlanShare,
  toPlanShare,
  type PlanShare,
} from "./plan-share-code";

describe("plan share code", () => {
  const share: PlanShare = {
    slots: [
      { species: "corviknight" },
      null,
      { species: "sirfetchd" },
      null,
      null,
      null,
    ],
    versionGroupSlug: "sword-shield",
  };

  it("round-trips through a full link", () => {
    const link = `https://voydex.app/mainline/plans/new?vg=sword-shield#${encodePlanShare(share)}`;

    expect(decodePlanShare(link)).toEqual(share);
  });

  it("reads an older link that also carried roles, and ignores them", () => {
    const older = btoa(
      JSON.stringify({ s: [["rotom", "Wall"], 0], v: "sword-shield" }),
    ).replace(/=+$/, "");

    expect(decodePlanShare(`plan=${older}`)?.slots.slice(0, 2)).toEqual([
      { species: "rotom" },
      null,
    ]);
  });

  it("is null for anything that isn't a Plan", () => {
    expect(decodePlanShare("https://example.com")).toBeNull();
    expect(decodePlanShare("plan=bm90LWpzb24")).toBeNull();
  });
});

describe("toPlanShare", () => {
  it("shares each slot's species by slug", () => {
    const slugs = new Map([[823, { speciesSlug: "corviknight" }]]);

    expect(
      toPlanShare(
        [{ speciesId: 823 }, null, { speciesId: 1 }],
        slugs,
        "sword-shield",
      ),
    ).toEqual({
      slots: [{ species: "corviknight" }, null, null],
      versionGroupSlug: "sword-shield",
    });
  });
});
