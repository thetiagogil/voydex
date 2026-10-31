import { describe, expect, it } from "vitest";

import { describeTypeTally, getTypeTallyBars } from "./type-tally";
import { toTypeMatchupRows } from "./type-matchup-rows";

const members = ["Scout", "Staraptor", "Luxray", "Roserade", "Garchomp"].map(
  (name) => ({ id: name.toLowerCase(), name }),
);

const cellsFor = (multipliers: (number | null)[]) =>
  toTypeMatchupRows(
    [
      {
        attackingType: { name: "Electric", slug: "electric" },
        cells: multipliers,
        immuneCount: 0,
        isPressure: false,
        resistCount: 0,
        weakCount: 0,
      },
    ],
    members,
  )[0]!.cells;

describe("getTypeTallyBars", () => {
  it("draws one bar per Pokémon, in team order", () => {
    const bars = getTypeTallyBars(cellsFor([2, 0.5, 1, 0, null]));

    expect(bars.map((bar) => bar.memberId)).toEqual([
      "scout",
      "staraptor",
      "luxray",
      "roserade",
      "garchomp",
    ]);
  });

  it("raises weak bars and drops resisting ones, taller the stronger", () => {
    expect(
      getTypeTallyBars(cellsFor([4, 2, 1, 0.5, 0.25])).map(
        ({ direction, steps, tone }) => [direction, steps, tone],
      ),
    ).toEqual([
      ["up", 2, "weak"],
      ["up", 1, "weak"],
      ["flat", 0, "neutral"],
      ["down", 1, "resist"],
      ["down", 2, "resist"],
    ]);
  });

  it("drops an immunity all the way and keeps an unknown typing flat", () => {
    const [immune, unknown] = getTypeTallyBars(cellsFor([0, null]));

    expect(immune).toMatchObject({
      direction: "down",
      steps: 3,
      tone: "immune",
    });
    expect(unknown).toMatchObject({
      direction: "flat",
      steps: 0,
      tone: "unknown",
    });
  });
});

describe("describeTypeTally", () => {
  it("names who is weak and who resists, immunities included", () => {
    expect(describeTypeTally(cellsFor([2, 0.5, 1, 0, 4]))).toBe(
      "Weak: Scout, Garchomp. Resists: Staraptor, Roserade.",
    );
  });

  it("says so when nobody is either", () => {
    expect(describeTypeTally(cellsFor([1, 1]))).toBe(
      "Nobody weak. Nobody resists.",
    );
  });

  it("names whose typing isn't recorded instead of counting them as neutral", () => {
    expect(describeTypeTally(cellsFor([2, null, 1, null]))).toBe(
      "Weak: Scout. Nobody resists. Typing not recorded: Staraptor, Roserade.",
    );
  });
});
