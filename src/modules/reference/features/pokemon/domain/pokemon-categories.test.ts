import { describe, expect, it } from "vitest";

import {
  getPokemonCategoryLabel,
  matchesPokemonCategory,
  toPokemonCategoryFilterValue,
} from "./pokemon-categories";

const standardPokemon = {
  isBaby: false,
  isLegendary: false,
  isMythical: false,
};

describe("Pokemon categories", () => {
  it("falls back to the all filter for unknown values", () => {
    expect(toPokemonCategoryFilterValue("ultra-beast")).toBe("all");
  });

  it("matches standard Pokemon only when no special category flag is set", () => {
    expect(matchesPokemonCategory(standardPokemon, "standard")).toBe(true);
    expect(
      matchesPokemonCategory(
        { ...standardPokemon, isLegendary: true },
        "standard",
      ),
    ).toBe(false);
  });

  it("uses mythical as the highest-priority category label", () => {
    expect(
      getPokemonCategoryLabel({
        isBaby: true,
        isLegendary: true,
        isMythical: true,
      }),
    ).toBe("Mythical");
  });
});
