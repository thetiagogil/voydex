import { describe, expect, it } from "vitest";

import {
  decodePlanShare,
  encodePlanShare,
  toPlanShare,
} from "./plan-share-code";

describe("plan share code", () => {
  const share = {
    slots: [
      { role: "Lead", species: "corviknight" },
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

  it("reads a bare code with a role in any script", () => {
    const withAccent = {
      ...share,
      slots: [
        { role: "Pokémon pivot", species: "rotom" },
        ...share.slots.slice(1),
      ],
    };
    const code = encodePlanShare(withAccent).slice("plan=".length);

    expect(decodePlanShare(code)).toEqual(withAccent);
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
        [{ role: "Lead", speciesId: 823 }, null, { role: null, speciesId: 1 }],
        slugs,
        "sword-shield",
      ),
    ).toEqual({
      slots: [{ role: "Lead", species: "corviknight" }, null, null],
      versionGroupSlug: "sword-shield",
    });
  });
});
