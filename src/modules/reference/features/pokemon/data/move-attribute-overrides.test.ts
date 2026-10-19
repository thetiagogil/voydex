import { describe, expect, it } from "vitest";

import { applyMoveVersionGroupOverrides } from "@/modules/reference/features/pokemon/data/move-attribute-overrides";
import type {
  MoveAttribute,
  MoveVersionGroupAttribute,
} from "@/modules/reference/shared/database-types";

const absorb: MoveAttribute = {
  accuracy: 100,
  created_at: "2026-01-01T00:00:00Z",
  damage_class: "special",
  effect_detail: null,
  effect_summary: "Drains half the damage dealt.",
  generation_start_id: 4,
  move_id: 71,
  power: 20,
  pp: 25,
  priority: 0,
  type_id: 5,
};

const letsGoAbsorb: MoveVersionGroupAttribute = {
  accuracy: 100,
  created_at: "2026-01-01T00:00:00Z",
  damage_class: "special",
  move_id: 71,
  power: 40,
  pp: 15,
  priority: 0,
  type_id: 5,
  version_group_id: 17,
};

describe("applyMoveVersionGroupOverrides", () => {
  it("lays a version group's values over the generation row", () => {
    expect(
      applyMoveVersionGroupOverrides([absorb], [letsGoAbsorb], 17),
    ).toEqual([{ ...absorb, power: 40, pp: 15 }]);
  });

  it("keeps the generation row in every other version group", () => {
    expect(
      applyMoveVersionGroupOverrides([absorb], [letsGoAbsorb], 18),
    ).toEqual([absorb]);
    expect(
      applyMoveVersionGroupOverrides([absorb], [letsGoAbsorb], null),
    ).toEqual([absorb]);
  });

  it("keeps the generation row's effect text", () => {
    const [result] = applyMoveVersionGroupOverrides(
      [absorb],
      [letsGoAbsorb],
      17,
    );

    expect(result?.effect_summary).toBe("Drains half the damage dealt.");
  });
});
