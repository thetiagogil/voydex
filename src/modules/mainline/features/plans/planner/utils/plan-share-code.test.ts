import { describe, expect, it } from "vitest";

import {
  decodePlanShare,
  encodePlanShare,
  toPlannerSlugIndex,
  toPlanShare,
  type PlanShare,
} from "./plan-share-code";

describe("plan share code", () => {
  const share: PlanShare = {
    slots: [
      { slug: "corviknight" },
      null,
      { slug: "galarian-articuno" },
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
      { slug: "rotom" },
      null,
    ]);
  });

  it("is null for anything that isn't a Plan", () => {
    expect(decodePlanShare("https://example.com")).toBeNull();
    expect(decodePlanShare("plan=bm90LWpzb24")).toBeNull();
  });
});

describe("toPlanShare", () => {
  it("shares each slot's Pokémon by its form's slug", () => {
    const slugs = new Map([
      [82300, { formSlug: "corviknight" }],
      [14401, { formSlug: "galarian-articuno" }],
    ]);

    expect(
      toPlanShare(
        [{ formId: 82300 }, null, { formId: 14401 }, { formId: 1 }],
        slugs,
        "sword-shield",
      ),
    ).toEqual({
      slots: [
        { slug: "corviknight" },
        null,
        { slug: "galarian-articuno" },
        null,
      ],
      versionGroupSlug: "sword-shield",
    });
  });
});

describe("toPlannerSlugIndex", () => {
  const rotom = { formSlug: "rotom", speciesSlug: "rotom" };
  const articuno = { formSlug: "articuno", speciesSlug: "articuno" };
  const galarian = { formSlug: "galarian-articuno", speciesSlug: "articuno" };
  /* Only the Hisuian form is offered, so the species slug opens on it. */
  const hisuianTyphlosion = {
    formSlug: "hisuian-typhlosion",
    speciesSlug: "typhlosion",
  };
  const index = toPlannerSlugIndex([
    rotom,
    articuno,
    galarian,
    hisuianTyphlosion,
  ]);

  it("opens a form slug on its form, and a species slug on its first offered form", () => {
    expect(index.get("galarian-articuno")).toBe(galarian);
    expect(index.get("rotom")).toBe(rotom);
    expect(index.get("typhlosion")).toBe(hisuianTyphlosion);
  });

  it("never lets a species slug override a form slug", () => {
    expect(toPlannerSlugIndex([galarian, articuno]).get("articuno")).toBe(
      articuno,
    );
  });
});
