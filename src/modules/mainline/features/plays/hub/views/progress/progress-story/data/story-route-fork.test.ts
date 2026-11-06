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

const ends = (y: number, x = 28): RouteEnds => ({
  first: { left: x - 14, x, y },
  last: { x, y: y + 60 },
});

/* The chapters played in any order sit in bands indented from the line. */
const points = new Map([
  ["before", ends(30)],
  ["any-0", ends(150, 80)],
  ["any-1", ends(300, 80)],
  ["after", ends(450)],
]);

describe("getForkStretches", () => {
  it("branches into each chapter played in any order, and carries on after them", () => {
    expect(
      getForkStretches(blocks(false), points).map((fork) => fork.key),
    ).toEqual(["any-0", "any-1", "any-on"]);
  });

  it("runs on down the line and turns right into a chapter's first sign", () => {
    const [first] = getForkStretches(blocks(false), points);

    expect(first.d).toBe("M 28 90 V 136 Q 28 150 42 150 H 66");
  });

  it("carries straight on down into the chapter after them", () => {
    const forks = getForkStretches(blocks(false), points);

    expect(forks.at(-1)?.d).toBe("M 28 90 V 450");
  });

  it("fills in a branch once everything before it is recorded", () => {
    expect(
      getForkStretches(blocks(true), points).map((fork) => fork.travelled),
    ).toEqual([true, true, true]);
    expect(
      getForkStretches(blocks(false), points).map((fork) => fork.travelled),
    ).toEqual([false, false, false]);
  });

  it("draws nothing until the routes are measured", () => {
    expect(getForkStretches(blocks(false), new Map())).toEqual([]);
  });
});
