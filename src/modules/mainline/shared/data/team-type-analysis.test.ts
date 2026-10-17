import { describe, expect, it } from "vitest";

import {
  buildTeamTypeCoverage,
  buildTeamTypeMatchups,
  toPokemonTypeSlugs,
  type TeamTypeMember,
} from "./team-type-analysis";

const types = [
  { name: "Fire", slug: "fire" },
  { name: "Water", slug: "water" },
  { name: "Grass", slug: "grass" },
  { name: "Ghost", slug: "ghost" },
  { name: "Psychic", slug: "psychic" },
  { name: "Dragon", slug: "dragon" },
  { name: "Fairy", slug: "fairy" },
  { name: "Shadow", slug: "shadow" },
];

const charizard: TeamTypeMember = {
  attackingTypeSlugs: ["fire", "fire"],
  defendingTypeSlugs: ["fire", "flying"],
  id: "charizard",
};
const venusaur: TeamTypeMember = {
  attackingTypeSlugs: ["grass"],
  defendingTypeSlugs: ["grass", "poison"],
  id: "venusaur",
};
const unknown: TeamTypeMember = {
  attackingTypeSlugs: [],
  defendingTypeSlugs: [],
  id: "unknown",
};

describe("buildTeamTypeMatchups", () => {
  it("reads each member's multiplier, ties keeping the chart's order", () => {
    const rows = buildTeamTypeMatchups({
      generationOrder: 8,
      members: [charizard, venusaur, unknown],
      types,
    });

    expect(rows[0].attackingType.slug).toBe("fire");
    expect(rows[0].cells).toEqual([0.5, 2, null]);

    const water = rows.find((row) => row.attackingType.slug === "water");
    expect(water).toMatchObject({
      cells: [2, 0.5, null],
      resistCount: 1,
      weakCount: 1,
    });
  });

  it("flags a 4× weakness as pressure even when only one member has it", () => {
    const rows = buildTeamTypeMatchups({
      generationOrder: 8,
      members: [charizard],
      types: [{ name: "Rock", slug: "rock" }],
    });

    expect(rows[0]).toMatchObject({ cells: [4], isPressure: true });
  });

  it("leaves out types the generation doesn't have and unknown slugs", () => {
    const slugs = (generationOrder: number) =>
      buildTeamTypeMatchups({
        generationOrder,
        members: [venusaur],
        types,
      }).map((row) => row.attackingType.slug);

    expect(slugs(6)).toContain("fairy");
    expect(slugs(5)).not.toContain("fairy");
    expect(slugs(8)).not.toContain("shadow");
  });

  it("reads Generation I's chart, where Ghost can't touch Psychic", () => {
    const psychic: TeamTypeMember = {
      attackingTypeSlugs: [],
      defendingTypeSlugs: ["psychic"],
      id: "mewtwo",
    };
    const ghostRow = (generationOrder: number) =>
      buildTeamTypeMatchups({
        generationOrder,
        members: [psychic],
        types,
      }).find((row) => row.attackingType.slug === "ghost");

    expect(ghostRow(1)?.cells).toEqual([0]);
    expect(ghostRow(2)?.cells).toEqual([2]);
  });
});

describe("buildTeamTypeCoverage", () => {
  it("counts every super-effective attack and who brings one", () => {
    const rows = buildTeamTypeCoverage({
      generationOrder: 8,
      members: [charizard, venusaur],
      types,
    });

    expect(rows.find((row) => row.defendingType.slug === "grass")).toEqual({
      coveringMemberIds: ["charizard"],
      defendingType: { name: "Grass", slug: "grass" },
      superEffectiveCount: 2,
    });
    expect(
      rows.find((row) => row.defendingType.slug === "dragon")
        ?.coveringMemberIds,
    ).toEqual([]);
  });
});

describe("toPokemonTypeSlugs", () => {
  it("keeps only known type slugs", () => {
    expect(toPokemonTypeSlugs(["fire", null, "shadow", undefined])).toEqual([
      "fire",
    ]);
  });
});
