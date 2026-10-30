import { describe, expect, it } from "vitest";

import {
  buildStoryRouteLayout,
  getStoryRouteColumns,
} from "./story-route-layout";

describe("buildStoryRouteLayout", () => {
  it("runs the first row left to right and the next one back", () => {
    const { cells } = buildStoryRouteLayout(7, 3);

    expect(cells.map(({ column, row }) => [row, column])).toEqual([
      [1, 1],
      [1, 2],
      [1, 3],
      [2, 3],
      [2, 2],
      [2, 1],
      [3, 1],
    ]);
  });

  it("joins every stop to the next, turning at each row's end, so it never breaks", () => {
    const { segments } = buildStoryRouteLayout(7, 3);

    expect(segments).toHaveLength(6);
    expect(segments.map(({ kind, side }) => `${kind}-${side}`)).toEqual([
      "straight-right",
      "straight-right",
      "turn-right",
      "straight-left",
      "straight-left",
      "turn-left",
    ]);
  });

  it("keeps a short route on the same grid, filling from the left", () => {
    expect(
      buildStoryRouteLayout(2, 7).cells.map(({ column }) => column),
    ).toEqual([1, 2]);
  });

  it("runs one column straight down, with no turns", () => {
    expect(
      buildStoryRouteLayout(3, 1).segments.map(({ kind }) => kind),
    ).toEqual(["straight", "straight"]);
  });

  it("has nothing to join for one stop or none", () => {
    expect(buildStoryRouteLayout(1, 5).segments).toEqual([]);
    expect(buildStoryRouteLayout(0, 5)).toEqual({ cells: [], segments: [] });
  });
});

describe("getStoryRouteColumns", () => {
  it("fits one stop per 150px, three at least and seven at most", () => {
    expect(getStoryRouteColumns(320)).toBe(3);
    expect(getStoryRouteColumns(760)).toBe(5);
    expect(getStoryRouteColumns(1600)).toBe(7);
  });
});
