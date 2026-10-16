import { describe, expect, it } from "vitest";

import {
  formatPokemonDetailTypeMultiplier,
  getPokemonDetailTypeMatchups,
} from "./pokemon-detail-type-matchups-model";

const getTypes = (
  matchups: { attackingType: string; multiplierLabel: string }[],
) => {
  return matchups.map(
    (matchup) => `${matchup.attackingType} ${matchup.multiplierLabel}`,
  );
};

describe("Pokémon detail type matchups", () => {
  it("writes multipliers as v3 marks them", () => {
    expect([4, 2, 0.5, 0.25, 0].map(formatPokemonDetailTypeMultiplier)).toEqual(
      ["4×", "2×", "½", "¼", "0"],
    );
  });

  it("groups what hurts, what doesn't and what can't, strongest first", () => {
    const matchups = getPokemonDetailTypeMatchups({
      defendingTypes: ["water", "flying"],
      generationOrder: 9,
    });

    expect(getTypes(matchups.weaknesses)).toEqual(["electric 4×", "rock 2×"]);
    expect(getTypes(matchups.immunities)).toEqual(["ground 0"]);
    expect(getTypes(matchups.resistances)).toEqual([
      "fire ½",
      "water ½",
      "fighting ½",
      "bug ½",
      "steel ½",
    ]);
    expect(matchups.neutralCount).toBe(10);
  });
});
