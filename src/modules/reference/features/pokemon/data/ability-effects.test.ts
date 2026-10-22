import { describe, expect, it } from "vitest";

import { resolveAbilityEffects } from "./ability-effects";

const versionGroups = [
  { id: 5, sort_order: 5 },
  { id: 9, sort_order: 9 },
  { id: 18, sort_order: 18 },
];
const row = (abilityId: number, start: number, effect: string) => ({
  ability_id: abilityId,
  effect_summary: effect,
  version_group_start_id: start,
});

describe("resolveAbilityEffects", () => {
  const rows = [
    row(65, 5, "Powers up Grass-type moves in a pinch."),
    row(1, 5, "Earlier effect"),
    row(1, 9, "Current effect"),
    row(1, 18, "Future effect"),
  ];

  it("reads each ability as the game's version group has it", () => {
    const effects = resolveAbilityEffects(rows, 9, versionGroups);

    expect(effects.get(1)).toBe("Current effect");
    expect(effects.get(65)).toBe("Powers up Grass-type moves in a pinch.");
  });

  it("ignores rows that start after the game", () => {
    expect(resolveAbilityEffects(rows, 5, versionGroups).get(1)).toBe(
      "Earlier effect",
    );
  });

  it("takes the newest row without a version group", () => {
    expect(resolveAbilityEffects(rows, null, versionGroups).get(1)).toBe(
      "Future effect",
    );
  });
});
