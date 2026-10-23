import { describe, expect, it } from "vitest";

import { getAnswerCost } from "./team-battlers";

describe("getAnswerCost", () => {
  it("mixes your best answer with your second best, as the average player fights", () => {
    expect(getAnswerCost([0.2, 0.6, 1])).toBeCloseTo(0.36);
    /* One Pokémon is its own second best. */
    expect(getAnswerCost([0.5])).toBeCloseTo(0.5);
    /* One you can't beat costs your whole team, never more. */
    expect(getAnswerCost([Infinity])).toBe(1);
    expect(getAnswerCost([Infinity, Infinity, Infinity])).toBe(3);
  });
});
