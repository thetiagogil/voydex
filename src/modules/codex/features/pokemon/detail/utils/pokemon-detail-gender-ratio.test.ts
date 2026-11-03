import { describe, expect, it } from "vitest";

import {
  formatRatioPercent,
  getFormFemaleRatioEighths,
  getPokemonDetailGenderRatio,
} from "./pokemon-detail-gender-ratio";

describe("getPokemonDetailGenderRatio", () => {
  it("reads eighths as a split, one gender or none", () => {
    /* Charizard is one female in eight; Pikachu an even split. */
    expect(getPokemonDetailGenderRatio(1)).toEqual({
      femalePercent: 12.5,
      kind: "split",
      malePercent: 87.5,
    });
    expect(getPokemonDetailGenderRatio(4)).toEqual({
      femalePercent: 50,
      kind: "split",
      malePercent: 50,
    });
    expect(getPokemonDetailGenderRatio(0)).toEqual({
      gender: "male",
      kind: "single",
    });
    expect(getPokemonDetailGenderRatio(8)).toEqual({
      gender: "female",
      kind: "single",
    });
    expect(getPokemonDetailGenderRatio(null)).toEqual({ kind: "genderless" });
  });

  it("writes a percentage without a trailing .0", () => {
    expect(formatRatioPercent(87.5)).toBe("87.5");
    expect(formatRatioPercent(50)).toBe("50");
  });
});

describe("getFormFemaleRatioEighths", () => {
  it("reads a one-gender form as that gender, any other as its species", () => {
    /* Meowstic is an even split; its female form is always female. */
    expect(getFormFemaleRatioEighths("female", 4)).toBe(8);
    /* A Cap Pikachu is always male. */
    expect(getFormFemaleRatioEighths("male", 4)).toBe(0);
    expect(getFormFemaleRatioEighths(null, 4)).toBe(4);
    expect(getFormFemaleRatioEighths(null, null)).toBeNull();
  });
});
