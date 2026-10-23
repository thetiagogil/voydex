import { describe, expect, it } from "vitest";

import { getMoveHitTypeSlug, isTypeEffectiveMove } from "./move-hit-types";

describe("isTypeEffectiveMove", () => {
  it("counts Physical and Special moves, set or varying power", () => {
    expect(
      isTypeEffectiveMove({ damageClass: "physical", slug: "tackle" }),
    ).toBe(true);
    expect(
      isTypeEffectiveMove({ damageClass: "special", slug: "grass-knot" }),
    ).toBe(true);
  });

  it("leaves out status moves and set-damage or one-hit moves", () => {
    expect(isTypeEffectiveMove({ damageClass: "status", slug: "growl" })).toBe(
      false,
    );
    expect(
      isTypeEffectiveMove({ damageClass: "physical", slug: "seismic-toss" }),
    ).toBe(false);
    expect(
      isTypeEffectiveMove({ damageClass: "physical", slug: "fissure" }),
    ).toBe(false);
    expect(isTypeEffectiveMove({ damageClass: null, slug: "tackle" })).toBe(
      false,
    );
  });
});

describe("getMoveHitTypeSlug", () => {
  const base = {
    moveTypeSlug: "normal",
    teraTypeSlug: null,
    userTypeSlugs: ["grass", "water"],
  };

  it("keeps a move's own type", () => {
    expect(
      getMoveHitTypeSlug({ ...base, moveTypeSlug: "fire", slug: "ember" }),
    ).toBe("fire");
  });

  it("gives Tera Blast the Tera Type once the user Terastallizes", () => {
    expect(getMoveHitTypeSlug({ ...base, slug: "tera-blast" })).toBe("normal");
    expect(
      getMoveHitTypeSlug({ ...base, slug: "tera-blast", teraTypeSlug: "rock" }),
    ).toBe("rock");
  });

  it("takes the user's types for moves that follow them", () => {
    expect(getMoveHitTypeSlug({ ...base, slug: "judgment" })).toBe("grass");
    expect(getMoveHitTypeSlug({ ...base, slug: "ivy-cudgel" })).toBe("water");
    expect(
      getMoveHitTypeSlug({
        ...base,
        slug: "raging-bull",
        userTypeSlugs: ["fighting"],
      }),
    ).toBe("fighting");
  });

  it("reads Hidden Power as unknown", () => {
    expect(getMoveHitTypeSlug({ ...base, slug: "hidden-power" })).toBeNull();
  });
});
