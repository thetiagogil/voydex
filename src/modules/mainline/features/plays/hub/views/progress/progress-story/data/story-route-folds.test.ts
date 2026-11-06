import { describe, expect, it } from "vitest";

import type { StoryMilestone } from "../types";
import { foldWalkedPlaces } from "./story-route-folds";
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

const read = (items: ReturnType<typeof foldWalkedPlaces>) =>
  items.map((item) =>
    item.kind === "fold"
      ? `fold(${item.places.map((entry) => entry.place.id).join(",")})`
      : item.key,
  );

describe("foldWalkedPlaces", () => {
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

  it("folds two or more walked places before a recorded milestone", () => {
    expect(read(foldWalkedPlaces(route, new Set()))).toEqual([
      "place-11-1",
      "stop-11",
      "fold(2,3)",
      "stop-12",
      "place-13-4",
      "place-13-5",
      "stop-13",
    ]);
  });

  it("keeps a stretch open by its fold's key or one of its places", () => {
    expect(
      read(foldWalkedPlaces(route, new Set(["fold-place-12-2"]))),
    ).toContain("place-12-3");
    expect(read(foldWalkedPlaces(route, new Set(["place-12-3"])))).toContain(
      "place-12-2",
    );
  });
});
