import { describe, expect, it } from "vitest";

import type { MainlinePlayTeamMove } from "@/modules/mainline/features/plays/hub/types";

import { getDamagingMoveTypeSlug } from "./team-analysis-rows";

const move = (
  slug: string,
  damageClass: string,
  power: number | null,
): MainlinePlayTeamMove =>
  ({
    attributes: { damage_class: damageClass, power },
    id: 1,
    name: slug,
    slot: 1,
    slug,
    type: { slug: "grass" },
  }) as MainlinePlayTeamMove;

describe("getDamagingMoveTypeSlug", () => {
  it("counts a move whose power varies, such as Grass Knot", () => {
    expect(getDamagingMoveTypeSlug(move("grass-knot", "special", null))).toBe(
      "grass",
    );
  });

  it("leaves out status and set-damage moves", () => {
    expect(getDamagingMoveTypeSlug(move("leech-seed", "status", null))).toBe(
      null,
    );
    expect(
      getDamagingMoveTypeSlug(move("seismic-toss", "physical", null)),
    ).toBe(null);
  });
});
