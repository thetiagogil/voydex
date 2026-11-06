import { describe, expect, it } from "vitest";

import type { StoryMilestone, StoryScope, StorySection } from "../types";
import {
  foldEarlierChapters,
  getEarlierChapterIds,
} from "./story-route-chapters";
import type { StoryRouteEntry } from "./story-route-model";

const milestone = (id: number) => ({ id }) as StoryMilestone;

const section = (
  id: number,
  milestoneIds: number[],
  overrides: Partial<StorySection> = {},
) =>
  ({
    chapterKind: "main-story",
    id,
    milestones: milestoneIds.map(milestone),
    playsInAnyOrder: false,
    ...overrides,
  }) as StorySection;

const scope = (sections: StorySection[], nextId: number | null) =>
  ({
    nextMilestone: nextId === null ? null : milestone(nextId),
    sections,
  }) as StoryScope;

describe("getEarlierChapterIds", () => {
  it("is every chapter before the one holding the next objective", () => {
    expect([
      ...getEarlierChapterIds(
        scope([section(1, [11]), section(2, [21]), section(3, [31])], 31),
      ),
    ]).toEqual([1, 2]);
  });

  it("never counts a path played beside yours as behind you", () => {
    expect([
      ...getEarlierChapterIds(
        scope(
          [
            section(1, [11]),
            section(2, [21], { playsInAnyOrder: true }),
            section(3, [31], { playsInAnyOrder: true }),
            section(4, [41]),
          ],
          31,
        ),
      ),
    ]).toEqual([1]);
  });

  it("folds nothing once there's no next objective, nor side content", () => {
    expect(
      getEarlierChapterIds(scope([section(1, [11]), section(2, [21])], null))
        .size,
    ).toBe(0);
    expect([
      ...getEarlierChapterIds(
        scope(
          [
            section(9, [91], { chapterKind: "side-content" }),
            section(1, [11]),
            section(2, [21]),
          ],
          21,
        ),
      ),
    ]).toEqual([1]);
  });
});

describe("foldEarlierChapters", () => {
  const sign = (sectionId: number): StoryRouteEntry => ({
    count: "1 of 1",
    finished: true,
    key: `sign-${sectionId}`,
    kind: "sign",
    name: `Chapter ${sectionId}`,
    optional: false,
    reached: true,
    sectionId,
  });
  const stop = (id: number): StoryRouteEntry => ({
    key: `stop-${id}`,
    kind: "stop",
    milestone: milestone(id),
    optional: false,
  });
  const route = [sign(1), stop(11), stop(12), sign(2), stop(21)];
  const read = (items: ReturnType<typeof foldEarlierChapters>) =>
    items.map((item) => (item.kind === "chapter" ? `[${item.key}]` : item.key));

  it("folds an earlier chapter into its sign", () => {
    expect(read(foldEarlierChapters(route, new Set([1]), new Set()))).toEqual([
      "[sign-1]",
      "sign-2",
      "stop-21",
    ]);
  });

  it("shows an earlier chapter you opened again", () => {
    expect(
      read(foldEarlierChapters(route, new Set([1]), new Set([1]))),
    ).toEqual(["sign-1", "stop-11", "stop-12", "sign-2", "stop-21"]);
  });
});
