import { describe, expect, it } from "vitest";

import type { StoryMilestone } from "../types";
import { getForkStretches, type RouteEnds } from "./story-route-fork";
import type { StoryRouteBlock, StoryRouteEntry } from "./story-route-model";

const stop = (id: number, isCompleted: boolean): StoryRouteEntry => ({
  key: `stop-${id}`,
  kind: "stop",
  milestone: { id, isCompleted } as StoryMilestone,
  optional: false,
});

const sign = (name: string, reached: boolean): StoryRouteEntry => ({
  count: "0 of 1",
  finished: false,
  key: `sign-${name}`,
  kind: "sign",
  name,
  optional: false,
  reached,
});

const blocks = (done: boolean): StoryRouteBlock[] => [
  { entries: [stop(1, true), stop(2, done)], key: "before", kind: "route" },
  {
    key: "any",
    kind: "anyOrder",
    routes: [
      [sign("a", done), stop(3, done)],
      [sign("b", done), stop(4, done)],
    ],
  },
  {
    entries: [sign("home", done), stop(5, false)],
    key: "after",
    kind: "route",
  },
];

const ends = (y: number, x = 40): RouteEnds => ({
  bottom: y + 40,
  first: { left: x - 30, top: y - 18, x, y },
  halfColumn: 66,
  last: { x: 300, y },
  lastStep: 1,
  top: y - 30,
});

const points = new Map([
  ["before", ends(30)],
  ["any-0", ends(150)],
  ["any-1", ends(300)],
  ["after", ends(450)],
]);

/* Lanes sit side by side, their first signs at one height. */
const lanePoints = new Map([
  ["before", ends(30)],
  ["any-0", ends(150, 100)],
  ["any-1", ends(150, 500)],
  ["after", ends(450)],
]);

describe("getForkStretches stacked", () => {
  it("branches into each chapter played in any order, and carries on after them", () => {
    expect(
      getForkStretches(blocks(false), points, "rows").map((fork) => fork.key),
    ).toEqual(["any-0", "any-1", "any-on"]);
  });

  it("leaves the last stop the way its row runs, then runs down the trunk", () => {
    const [first] = getForkStretches(blocks(false), points, "rows");

    /* Out to the right of the stop at 300, half a column across, at its height. */
    expect(first.d.startsWith("M 300 30 H 352")).toBe(true);
    /* Ends at the left edge of the chapter's first sign. */
    expect(first.d.endsWith("H 10")).toBe(true);
  });

  it("fills in a branch once everything before it is recorded", () => {
    expect(
      getForkStretches(blocks(true), points, "rows").map(
        (fork) => fork.travelled,
      ),
    ).toEqual([true, true, true]);
    expect(
      getForkStretches(blocks(false), points, "rows").map(
        (fork) => fork.travelled,
      ),
    ).toEqual([false, false, false]);
  });

  it("draws nothing until the routes are measured", () => {
    expect(getForkStretches(blocks(false), new Map(), "rows")).toEqual([]);
  });
});

describe("getForkStretches as lanes", () => {
  it("splits into the top of each lane, and joins each lane's end after them", () => {
    const forks = getForkStretches(blocks(false), lanePoints, "lanes");

    expect(forks.map((fork) => fork.key)).toEqual([
      "any-0",
      "any-1",
      "any-0-join",
      "any-1-join",
    ]);
    /* Into the top of each lane's first sign. */
    expect(forks[0].d.endsWith("V 132")).toBe(true);
    /* Into the top of the chapter after them. */
    expect(forks[2].d.endsWith("V 432")).toBe(true);
  });

  it("fills in a lane's join once that lane is recorded", () => {
    expect(
      getForkStretches(blocks(true), lanePoints, "lanes").map(
        (fork) => fork.travelled,
      ),
    ).toEqual([true, true, true, true]);
  });
});
