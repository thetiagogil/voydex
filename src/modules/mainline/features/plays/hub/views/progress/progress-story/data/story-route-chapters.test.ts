import { describe, expect, it } from "vitest";

import type { StoryMilestone, StoryScope, StorySection } from "../types";
import { foldChapters, getCurrentChapterKey } from "./story-route-chapters";
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

describe("getCurrentChapterKey", () => {
  it("is the chapter holding the next objective", () => {
    expect(
      getCurrentChapterKey(
        scope([section(1, [11]), section(2, [21]), section(3, [31])], 21),
      ),
    ).toBe("sign-2");
  });

  it("is none once there's no next objective, and never side content", () => {
    expect(getCurrentChapterKey(scope([section(1, [11])], null))).toBeNull();
    expect(
      getCurrentChapterKey(
        scope([section(9, [91], { chapterKind: "side-content" })], 91),
      ),
    ).toBeNull();
  });
});

describe("foldChapters", () => {
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
  const route = [sign(1), stop(11), stop(12), sign(2), stop(21), sign(3)];
  const read = (items: ReturnType<typeof foldChapters>) =>
    items.map((item) => (item.kind === "chapter" ? `[${item.key}]` : item.key));

  it("folds every chapter that isn't open into its sign", () => {
    expect(read(foldChapters(route, (key) => key === "sign-2"))).toEqual([
      "[sign-1]",
      "sign-2",
      "stop-21",
      "[sign-3]",
    ]);
  });

  it("folds them all, the one you're in too, when none is open", () => {
    expect(read(foldChapters(route, () => false))).toEqual([
      "[sign-1]",
      "[sign-2]",
      "[sign-3]",
    ]);
  });
});
