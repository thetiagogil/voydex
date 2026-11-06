import { describe, expect, it } from "vitest";

import type { StoryMilestone, StorySection } from "../types";
import { buildStoryStamps } from "./story-stamps";

const milestone = (
  id: number,
  name: string,
  typeSlug: string,
  overrides: Partial<StoryMilestone> = {},
) =>
  ({
    badge: null,
    completedAt: null,
    id,
    isCompleted: false,
    name,
    typeSlug,
    ...overrides,
  }) as StoryMilestone;

const gym = (id: number, name: string, order: number) =>
  milestone(id, name, "gym", {
    badge: { imageUrl: null, order, type: "rock" },
  });

const section = (
  slug: string,
  milestones: StoryMilestone[],
  chapterKind: StorySection["chapterKind"] = "main-story",
) => ({ chapterKind, milestones, slug }) as StorySection;

const names = (sections: StorySection[]) =>
  buildStoryStamps(sections)?.map((stamp) => stamp.name);

describe("buildStoryStamps", () => {
  it("lays the badges out in the badge case's order, then the League chapter", () => {
    expect(
      names([
        section("main-story", [
          gym(1, "Marsh Badge", 6),
          gym(2, "Soul Badge", 5),
        ]),
        section("pokemon-league", [
          milestone(3, "Elite Four Lorelei", "elite-four"),
          milestone(4, "Champion", "champion"),
        ]),
      ]),
    ).toEqual(["Soul Badge", "Marsh Badge", "Elite Four Lorelei", "Champion"]);
  });

  it("stamps the League in gold where it's one stop of the main story", () => {
    const stamps = buildStoryStamps([
      section("main-story", [
        gym(1, "Earth Badge", 8),
        milestone(2, "Pokémon League", "champion"),
      ]),
      section(
        "post-game",
        [milestone(3, "Defeat Red", "champion")],
        "post-game",
      ),
    ]);

    expect(stamps?.map((stamp) => [stamp.name, stamp.kind])).toEqual([
      ["Earth Badge", "gym"],
      ["Pokémon League", "league"],
    ]);
  });
});
