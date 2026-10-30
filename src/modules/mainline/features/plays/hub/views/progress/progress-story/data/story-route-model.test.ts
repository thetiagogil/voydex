import { describe, expect, it } from "vitest";

import type {
  StoryChapterKind,
  StoryMilestone,
  StoryScope,
  StorySection,
} from "../types";
import { buildStoryRoute, formatStoryCount } from "./story-route-model";

const milestone = (
  id: number,
  overrides: Partial<StoryMilestone> = {},
): StoryMilestone =>
  ({
    id,
    isCompleted: false,
    name: `Milestone ${id}`,
    opensAfter: null,
    prerequisites: [],
    sequence: id,
    ...overrides,
  }) as StoryMilestone;

const optional = (id: number, overrides: Partial<StoryMilestone> = {}) =>
  milestone(id, { sequence: null, ...overrides });

const opensAfter = (id: number) => ({
  opensAfter: { id, name: `Milestone ${id}` },
});

const section = (
  id: number,
  slug: string,
  milestones: StoryMilestone[],
  {
    chapterKind = slug === "side-content" ? "side-content" : "main-story",
    playsInAnyOrder = false,
  }: { chapterKind?: StoryChapterKind; playsInAnyOrder?: boolean } = {},
): StorySection => ({
  chapterKind,
  completedCount: milestones.filter(
    (item) => item.isCompleted && item.sequence !== null,
  ).length,
  id,
  milestones,
  name: slug,
  playsInAnyOrder,
  slug,
  totalCount: milestones.filter((item) => item.sequence !== null).length,
});

const scope = (sections: StorySection[]) => ({ sections }) as StoryScope;

/* Each block as what it draws: a sign's name, a stop's id, `?` for optional. */
const read = (blocks: ReturnType<typeof buildStoryRoute>) =>
  blocks.map((block) =>
    (block.kind === "route" ? [block.entries] : block.routes).map((entries) =>
      entries.map((entry) =>
        entry.kind === "sign"
          ? `${entry.name}${entry.optional ? "?" : ""}`
          : `${entry.milestone.id}${entry.optional ? "?" : ""}`,
      ),
    ),
  );

describe("buildStoryRoute", () => {
  it("runs one route through every chapter, the Post Game included", () => {
    expect(
      read(
        buildStoryRoute(
          scope([
            section(1, "main-story", [milestone(11), milestone(12)]),
            section(2, "pokemon-league", [milestone(21)]),
            section(3, "post-game", [milestone(31)], {
              chapterKind: "post-game",
            }),
          ]),
        ),
      ),
    ).toEqual([
      [["main-story", "11", "12", "pokemon-league", "21", "post-game", "31"]],
    ]);
  });

  it("places side content right after the beat that opens it", () => {
    expect(
      read(
        buildStoryRoute(
          scope([
            section(1, "main-story", [milestone(11), milestone(12)]),
            section(4, "side-content", [optional(41, opensAfter(11))]),
          ]),
        ),
      ),
    ).toEqual([[["main-story", "11", "41?", "12"]]]);
  });

  it("closes the route with side content open from the start", () => {
    expect(
      read(
        buildStoryRoute(
          scope([
            section(1, "main-story", [milestone(11)]),
            section(4, "side-content", [optional(41), optional(42)]),
          ]),
        ),
      ),
    ).toEqual([[["main-story", "11", "side-content?", "41?", "42?"]]]);
  });

  it("marks an optional milestone inside a chapter as a detour", () => {
    expect(
      read(
        buildStoryRoute(
          scope([
            section(1, "main-story", [
              milestone(11),
              optional(12),
              milestone(13),
            ]),
          ]),
        ),
      ),
    ).toEqual([[["main-story", "11", "12?", "13"]]]);
  });

  it("gives chapters played in any order a short route each, then carries on", () => {
    expect(
      read(
        buildStoryRoute(
          scope([
            section(1, "main-story", [milestone(11)]),
            section(2, "victory-road", [milestone(21)], {
              playsInAnyOrder: true,
            }),
            section(3, "starfall-street", [milestone(31)], {
              playsInAnyOrder: true,
            }),
            section(4, "the-way-home", [milestone(41)]),
            section(5, "side-content", [optional(51, opensAfter(31))]),
          ]),
        ),
      ),
    ).toEqual([
      [["main-story", "11"]],
      [
        ["victory-road", "21"],
        ["starfall-street", "31", "51?"],
      ],
      [["the-way-home", "41"]],
    ]);
  });

  it("knows a sign is reached once everything required before it is recorded", () => {
    const blocks = buildStoryRoute(
      scope([
        section(1, "main-story", [
          milestone(11, { isCompleted: true }),
          optional(12),
        ]),
        section(2, "pokemon-league", [milestone(21)]),
        section(3, "post-game", [milestone(31)], { chapterKind: "post-game" }),
      ]),
    );
    const signs = blocks.flatMap((block) =>
      block.kind === "route"
        ? block.entries.filter((entry) => entry.kind === "sign")
        : [],
    );

    expect(signs.map((sign) => sign.kind === "sign" && sign.reached)).toEqual([
      true,
      true,
      false,
    ]);
  });
});

describe("formatStoryCount", () => {
  it("counts required milestones, or every milestone where none is required", () => {
    expect(
      formatStoryCount([
        section(1, "main-story", [
          milestone(11, { isCompleted: true }),
          milestone(12),
          optional(13, { isCompleted: true }),
        ]),
      ]),
    ).toBe("1 of 2");
    expect(
      formatStoryCount([
        section(4, "side-content", [
          optional(41, { isCompleted: true }),
          optional(42),
        ]),
      ]),
    ).toBe("1 of 2");
  });
});
