import { describe, expect, it } from "vitest";

import { findUnsaidMoves } from "./story-routes.mjs";

/* A row of five towns, 1 to 5, each next to the one before. */
const links = new Map([
  [1, new Set([2])],
  [2, new Set([1, 3])],
  [3, new Set([2, 4])],
  [4, new Set([3, 5])],
  [5, new Set([4])],
]);
const placeNames = new Map([
  [1, "Alder Town"],
  [2, "Birch Road"],
  [3, "Cedar City"],
  [4, "Dune Village"],
  [5, "Elm Harbour"],
]);
const step = (sort_order, location_id, note) => ({
  location_id,
  milestone_id: null,
  note,
  sort_order,
});

const walk = (steps) =>
  findUnsaidMoves({ links, milestonesById: new Map(), placeNames, steps });

describe("findUnsaidMoves", () => {
  it("lets a route walk to the next town", () => {
    expect(
      walk([step(1, 1, "A."), step(2, 2, "B."), step(3, 3, "C.")]),
    ).toEqual([]);
  });

  it("flags a jump the map has no road for", () => {
    expect(walk([step(1, 1, "A."), step(2, 4, "D.")])).toEqual([
      { from: "Alder Town", sortOrder: 2, to: "Dune Village" },
    ]);
  });

  it("accepts the jump when the note says how you get there", () => {
    expect(walk([step(1, 1, "A."), step(2, 4, "Fly to the town.")])).toEqual(
      [],
    );
  });

  it("accepts the jump when the side trip before it ends with the way back", () => {
    expect(
      walk([
        step(1, 1, "A side trip. Then back to the coast."),
        step(2, 4, "D."),
      ]),
    ).toEqual([]);
  });

  it("flags a long way back through towns already walked", () => {
    const steps = [1, 2, 3, 4, 5].map((id) => step(id, id, "On."));
    expect(walk([...steps, step(6, 1, "Walk back home.")])).toEqual([]);
    expect(walk([...steps, step(6, 1, "Quiet.")])).toEqual([
      { from: "Elm Harbour", sortOrder: 6, to: "Alder Town" },
    ]);
  });
});
