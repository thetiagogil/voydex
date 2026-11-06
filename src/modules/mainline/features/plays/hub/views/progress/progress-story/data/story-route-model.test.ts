import { describe, expect, it } from "vitest";

import type {
  StoryChapterKind,
  StoryMilestone,
  StoryPlace,
  StoryScope,
  StorySection,
} from "../types";
import { buildStoryRoute, formatStoryCount } from "./story-route-model";

const milestone = (
  id: number,
  overrides: Partial<StoryMilestone> = {},
): StoryMilestone =>
  ({
    battlePlaces: [],
    id,
    isCompleted: false,
    name: `Milestone ${id}`,
    opensAfter: null,
    place: null,
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

const scope = (sections: StorySection[], places: StoryPlace[] = []) =>
  ({ places, sections }) as StoryScope;

const place = (id: number): StoryPlace => ({ id, name: `Place ${id}` });

/*
 * Each block as what it draws: a sign's name, a stop's id, `?` for
 * optional, `@` and its id for a place on the way, `!` where the route comes
 * back to it.
 */
const read = (blocks: ReturnType<typeof buildStoryRoute>) =>
  blocks.map((block) =>
    (block.kind === "route" ? [block.entries] : block.routes).map((entries) =>
      entries.map((entry) =>
        entry.kind === "sign"
          ? `${entry.name}${entry.optional ? "?" : ""}`
          : entry.kind === "place"
            ? `@${entry.place.id}${entry.key.endsWith("-again") ? "!" : ""}`
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

describe("buildStoryRoute signs", () => {
  it("calls a chapter finished once its required milestones are, optional ones aside", () => {
    const [block] = buildStoryRoute(
      scope([
        section(1, "main-story", [
          milestone(11, { isCompleted: true }),
          optional(12),
        ]),
        section(2, "pokemon-league", [milestone(21)]),
      ]),
    );
    const signs =
      block?.kind === "route"
        ? block.entries.filter((entry) => entry.kind === "sign")
        : [];

    expect(
      signs.map(
        (sign) => sign.kind === "sign" && [sign.finished, sign.reached],
      ),
    ).toEqual([
      [true, true],
      [false, true],
    ]);
  });
});

describe("buildStoryRoute as a roadmap", () => {
  /* Pallet Town 1, Route 1 2, Viridian 3, Route 22 4, Route 2 5, Pewter 6, Route 3 7, Mt. Moon 8. */
  const kanto = [1, 2, 3, 4, 5, 6, 7, 8].map(place);
  const at = (id: number) => ({ place: place(id) });

  it("puts the places on the way before each milestone, each its own stop", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, at(1)),
                milestone(12, at(3)),
                milestone(13, at(6)),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([[["main-story", "11", "@2", "12", "@4", "@5", "13"]]]);
  });

  it("shows a place once, where the story first reaches it", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, at(3)),
                milestone(12, at(6)),
                /* Back to Viridian City for its badge. */
                milestone(13, at(3)),
                milestone(14, at(8)),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([
      [["main-story", "@1", "@2", "11", "@4", "@5", "12", "13", "@7", "14"]],
    ]);
  });

  it("gives a battle back at a passed place a stop of its own before its milestone", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [milestone(11, at(6))]),
              section(2, "pokemon-league", [
                milestone(21, { ...at(8), battlePlaces: [place(4)] }),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([
      [
        [
          "main-story",
          "@1",
          "@2",
          "@3",
          "@4",
          "@5",
          "11",
          "pokemon-league",
          "@4!",
          "@7",
          "21",
        ],
      ],
    ]);
  });

  it("leads each place to its milestone, and reaches it once all before are recorded", () => {
    const [block] = buildStoryRoute(
      scope(
        [
          section(1, "main-story", [
            milestone(11, { ...at(1), isCompleted: true }),
            milestone(12, at(3)),
            milestone(13, at(6)),
          ]),
        ],
        kanto,
      ),
    );
    const places =
      block.kind === "route"
        ? block.entries.flatMap((entry) =>
            entry.kind === "place"
              ? [[entry.place.id, entry.toward.id, entry.reached]]
              : [],
          )
        : [];

    expect(places).toEqual([
      [2, 12, true],
      [4, 13, false],
      [5, 13, false],
    ]);
  });

  it("sits side content where the route passes its place, standing for it", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, at(1)),
                milestone(12, at(6)),
              ]),
              section(4, "side-content", [
                optional(41, { ...at(5), ...opensAfter(11) }),
                optional(42, { ...at(6), ...opensAfter(11) }),
                /* Somewhere the route never shows: after its opener. */
                optional(43, { ...at(8), ...opensAfter(11) }),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([
      [["main-story", "11", "43?", "@2", "@3", "@4", "41?", "12", "42?"]],
    ]);
  });

  it("keeps side content after its opener when the route passes its place before it", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, at(3)),
                milestone(12, at(6)),
              ]),
              /* At Route 1 (2), but only open once Pewter's milestone is done. */
              section(4, "side-content", [
                optional(41, { ...at(2), ...opensAfter(12) }),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([[["main-story", "@1", "@2", "11", "@4", "@5", "12", "41?"]]]);
  });

  it("keeps a place's own stop where a battle is fought there too", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, at(1)),
                milestone(12, { ...at(6), battlePlaces: [place(4)] }),
              ]),
              section(4, "side-content", [
                optional(41, { ...at(4), ...opensAfter(11) }),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([[["main-story", "11", "@2", "@3", "@4", "41?", "@5", "12"]]]);
  });

  it("sets each chapter played in any order out from where the route forks", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [milestone(11, at(1))]),
              section(2, "path-a", [milestone(21, at(4))], {
                playsInAnyOrder: true,
              }),
              section(3, "path-b", [milestone(31, at(3))], {
                playsInAnyOrder: true,
              }),
              section(4, "home", [milestone(41, at(6))]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([
      [["main-story", "11"]],
      [
        ["path-a", "@2", "@3", "21"],
        ["path-b", "@2", "31"],
      ],
      [["home", "@5", "41"]],
    ]);
  });

  it("shows a battle's place ahead of the route once, before its milestone", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [
              section(1, "main-story", [
                milestone(11, { ...at(3), battlePlaces: [place(5)] }),
                milestone(12, at(6)),
              ]),
            ],
            kanto,
          ),
        ),
      ),
    ).toEqual([[["main-story", "@5!", "@1", "@2", "11", "@4", "12"]]]);
  });

  it("shows no places for milestones without one", () => {
    expect(
      read(
        buildStoryRoute(
          scope(
            [section(1, "main-story", [milestone(11), milestone(12)])],
            kanto,
          ),
        ),
      ),
    ).toEqual([[["main-story", "11", "12"]]]);
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
