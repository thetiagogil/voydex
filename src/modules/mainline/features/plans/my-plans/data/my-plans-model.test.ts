import { describe, expect, it } from "vitest";

import {
  defaultMyPlansFilters,
  filterAndSortMyPlans,
  getMyPlanFootnote,
  getMyPlansGames,
  type MyPlan,
} from "./my-plans-model";

const plan = (overrides: Partial<MyPlan>): MyPlan => ({
  gameSlug: "sword",
  id: "plan",
  isArchived: false,
  linkedPlayCount: 0,
  memberCount: 6,
  members: [],
  name: "Galar sweep",
  updatedAt: "2026-10-01T10:00:00Z",
  versionGroupName: "Sword and Shield",
  versionGroupSlug: "sword-shield",
  ...overrides,
});

const plans = [
  plan({ id: "a", name: "Zeta", updatedAt: "2026-09-01T10:00:00Z" }),
  plan({ id: "b", isArchived: true, name: "Alpha" }),
  plan({
    id: "c",
    name: "Kanto",
    updatedAt: "2026-10-05T10:00:00Z",
    versionGroupName: "Red and Blue",
    versionGroupSlug: "red-blue",
  }),
];

describe("My Plans model", () => {
  it("sorts by recent update, name or game", () => {
    expect(
      filterAndSortMyPlans(plans, defaultMyPlansFilters).map((item) => item.id),
    ).toEqual(["c", "b", "a"]);
    expect(
      filterAndSortMyPlans(plans, {
        ...defaultMyPlansFilters,
        sort: "name",
      }).map((item) => item.id),
    ).toEqual(["b", "c", "a"]);
  });

  it("filters by status and game", () => {
    expect(
      filterAndSortMyPlans(plans, {
        ...defaultMyPlansFilters,
        status: "archived",
      }).map((item) => item.id),
    ).toEqual(["b"]);
    expect(
      filterAndSortMyPlans(plans, {
        ...defaultMyPlansFilters,
        game: "red-blue",
        status: "active",
      }).map((item) => item.id),
    ).toEqual(["c"]);
    expect(getMyPlansGames(plans)).toEqual([
      { label: "Red and Blue", value: "red-blue" },
      { label: "Sword and Shield", value: "sword-shield" },
    ]);
  });

  it("searches a Plan's name, game and Pokémon", () => {
    const withMembers = [
      ...plans,
      plan({
        id: "d",
        members: [
          { imageUrl: null, name: "Charizard", slot: 1, typeSlug: "fire" },
        ],
        name: "Fire run",
      }),
    ];
    const search = (query: string) =>
      filterAndSortMyPlans(withMembers, {
        ...defaultMyPlansFilters,
        query,
      }).map((item) => item.id);

    expect(search("  kan ")).toEqual(["c"]);
    expect(search("RED AND")).toEqual(["c"]);
    expect(search("chari")).toEqual(["d"]);
    expect(search("missingno")).toEqual([]);
  });

  it("says who follows a Plan, or that it is empty", () => {
    expect(getMyPlanFootnote(plan({ linkedPlayCount: 2 }))).toBe(
      "Followed by 2 Plays",
    );
    expect(getMyPlanFootnote(plan({}))).toBe("Not followed by any Play yet");
    expect(getMyPlanFootnote(plan({ memberCount: 0 }))).toBe(
      "Empty, just named",
    );
  });
});
