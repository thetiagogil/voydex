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
      { role: "lead", species: "corviknight" },
      null,
      { role: null, species: "sirfetchd" },
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

  it("reads an older link's roles by name, and drops a custom one", () => {
    const older = {
      ...share,
      slots: [
        { role: "Physical attacker", species: "rotom" },
        { role: "Pokémon pivot", species: "corviknight" },
        ...share.slots.slice(2),
      ],
    } as unknown as PlanShare;
    const code = encodePlanShare(older).slice("plan=".length);

    expect(decodePlanShare(code)?.slots.slice(0, 2)).toEqual([
      { role: "physical-attacker", species: "rotom" },
      { role: null, species: "corviknight" },
    ]);
  });

  it("is null for anything that isn't a Plan", () => {
    expect(decodePlanShare("https://example.com")).toBeNull();
    expect(decodePlanShare("plan=bm90LWpzb24")).toBeNull();
  });
});

describe("toPlanShare", () => {
  it("shares each slot's species by slug, with its role", () => {
    const slugs = new Map([[823, { speciesSlug: "corviknight" }]]);

    expect(
      toPlanShare(
        [{ role: "lead", speciesId: 823 }, null, { role: null, speciesId: 1 }],
        slugs,
        "sword-shield",
      ),
    ).toEqual({
      slots: [{ role: "lead", species: "corviknight" }, null, null],
      versionGroupSlug: "sword-shield",
    });
  });
});
