import { describe, expect, it } from "vitest";

import type { StoryMilestone } from "../types";
import { foldPlaces } from "./story-route-folds";
import type { StoryRouteEntry } from "./story-route-model";

const milestone = (id: number, isCompleted: boolean) =>
  ({ id, isCompleted }) as StoryMilestone;

const stop = (id: number, isCompleted: boolean): StoryRouteEntry => ({
  key: `stop-${id}`,
  kind: "stop",
  milestone: milestone(id, isCompleted),
  optional: false,
});

const place = (
  id: number,
  toward: number,
  reached: boolean,
): StoryRouteEntry => ({
  key: `place-${toward}-${id}`,
  kind: "place",
  optional: false,
  place: { id, name: `Place ${id}` },
  reached,
  toward: milestone(toward, false),
});

const read = (items: ReturnType<typeof foldPlaces>) =>
  items.map((item) =>
    item.kind === "fold"
      ? `fold(${item.places.map((entry) => entry.place.id).join(",")})`
      : item.key,
  );

describe("foldPlaces", () => {
  /* Milestone 13 is the next objective. */
  const route = [
    place(1, 11, true),
    stop(11, true),
    place(2, 12, true),
    place(3, 12, true),
    stop(12, true),
    place(4, 13, true),
    place(5, 13, true),
    stop(13, false),
  ];

  it("folds two or more places in a row, but not the way to the next objective", () => {
    expect(read(foldPlaces(route, new Set(), 13))).toEqual([
      "place-11-1",
      "stop-11",
      "fold(2,3)",
      "stop-12",
      "place-13-4",
      "place-13-5",
      "stop-13",
    ]);
  });

  it("folds the way ahead too, past the next objective", () => {
    expect(
      read(
        foldPlaces(
          [...route, place(6, 14, false), place(7, 14, false), stop(14, false)],
          new Set(),
          13,
        ),
      ).slice(-2),
    ).toEqual(["fold(6,7)", "stop-14"]);
  });

  it("keeps a stretch open by its fold's key or one of its places", () => {
    expect(read(foldPlaces(route, new Set(["fold-place-12-2"]), 13))).toContain(
      "place-12-3",
    );
    expect(read(foldPlaces(route, new Set(["place-12-3"]), 13))).toContain(
      "place-12-2",
    );
  });
});
