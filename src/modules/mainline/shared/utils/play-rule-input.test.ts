import { describe, expect, it } from "vitest";

import { playRuleSelectionSchema } from "./play-rule-input";

const ruleId = "7d4c8f0e-6a52-4f11-9a0b-1c2d3e4f5a6b";

describe("playRuleSelectionSchema", () => {
  it("takes a reuse scope", () => {
    expect(
      playRuleSelectionSchema.parse({
        config: { reuse_scope: "evolution_family" },
        ruleId,
      }).config,
    ).toEqual({ reuse_scope: "evolution_family" });
  });

  it("takes a rule with or without options", () => {
    expect(playRuleSelectionSchema.parse({ config: null, ruleId })).toEqual({
      config: null,
      ruleId,
    });
    expect(
      playRuleSelectionSchema.parse({ config: { type_id: 3 }, ruleId }),
    ).toEqual({ config: { type_id: 3 }, ruleId });
    expect(
      playRuleSelectionSchema.parse({
        config: { shinies_always_catchable: true },
        ruleId,
      }).config,
    ).toEqual({ shinies_always_catchable: true });
  });

  it("refuses options Voydex doesn't know and values of the wrong kind", () => {
    expect(
      playRuleSelectionSchema.safeParse({
        config: { dupes_clause: true },
        ruleId,
      }).success,
    ).toBe(false);
    expect(
      playRuleSelectionSchema.safeParse({ config: { type_id: "3" }, ruleId })
        .success,
    ).toBe(false);
    expect(
      playRuleSelectionSchema.safeParse({
        config: { reuse_scope: "colour" },
        ruleId,
      }).success,
    ).toBe(false);
    expect(
      playRuleSelectionSchema.safeParse({ config: { type_id: 0 }, ruleId })
        .success,
    ).toBe(false);
  });

  it("refuses a rule that isn't an id", () => {
    expect(
      playRuleSelectionSchema.safeParse({ config: null, ruleId: "monotype" })
        .success,
    ).toBe(false);
  });
});
