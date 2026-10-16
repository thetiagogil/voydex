import { describe, expect, it } from "vitest";

import type {
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";

import {
  buildPlanIssues,
  getPlanVerdict,
  getPoolTileNotes,
  getWorstIssueFor,
} from "./plan-build-check";
import { pickRandomTeam } from "./plan-random-team";
import {
  buildPlanCoverage,
  buildPlanMatchups,
  getPlanTeamTip,
} from "./plan-team-analysis";

const versionGroup: PlannerVersionGroup = {
  expansions: [
    { name: "The Isle of Armor", versionGroupId: 19 },
    { name: "The Crown Tundra", versionGroupId: 20 },
  ],
  games: [
    { id: 33, name: "Pokémon Sword", shortName: "Sword", slug: "sword" },
    { id: 34, name: "Pokémon Shield", shortName: "Shield", slug: "shield" },
  ],
  generationNumeral: "VIII",
  generationOrder: 8,
  id: 18,
  name: "Sword and Shield",
  regionName: "Galar",
  slug: "sword-shield",
};

const pokemon = (
  speciesId: number,
  name: string,
  types: string[],
  facts: Partial<PlannerPokemon["facts"]> = {},
  evolutionFamilyId = speciesId,
): PlannerPokemon => ({
  abilities: [],
  evolutionFamilyId,
  facts: {
    eventOnly: false,
    exclusiveToGameIds: [],
    expansionVersionGroupId: null,
    outsideGameOnly: false,
    tradeEvolution: null,
    ...facts,
  },
  formId: speciesId * 100,
  imageUrl: null,
  isFullyEvolved: true,
  name,
  nationalNumber: speciesId,
  speciesId,
  speciesSlug: name.toLowerCase(),
  types: types.map((slug) => ({ name: slug, slug })),
});

const corviknight = pokemon(823, "Corviknight", ["flying", "steel"]);
const sirfetchd = pokemon(865, "Sirfetch'd", ["fighting"], {
  exclusiveToGameIds: [33],
});
const goodra = pokemon(706, "Goodra", ["dragon"], { exclusiveToGameIds: [34] });
const zarude = pokemon(893, "Zarude", ["dark", "grass"], { eventOnly: true });
const kubfu = pokemon(891, "Kubfu", ["fighting"], {
  expansionVersionGroupId: 19,
});
const slowking = pokemon(199, "Slowking", ["water", "psychic"], {
  tradeEvolution: { heldItemName: "King's Rock" },
});
const slowbro = pokemon(80, "Slowbro", ["water", "psychic"], {}, 79);
const slowkingLine = { ...slowking, evolutionFamilyId: 79 };

describe("buildPlanIssues", () => {
  it("is ready to build with nothing to say", () => {
    const issues = buildPlanIssues({
      includedExpansionIds: [],
      team: [corviknight],
      versionGroup,
    });

    expect(issues).toEqual([]);
    expect(getPlanVerdict(issues)).toEqual({
      count: 0,
      label: "Ready to build",
      level: "good",
    });
  });

  it("blocks on an expansion the Plan doesn't include and offers to include it", () => {
    const issues = buildPlanIssues({
      includedExpansionIds: [],
      team: [kubfu],
      versionGroup,
    });

    expect(issues[0]).toMatchObject({
      includeExpansionId: 19,
      severity: "block",
      title: "Needs The Isle of Armor",
    });
    expect(getPlanVerdict(issues).level).toBe("block");
    expect(
      buildPlanIssues({
        includedExpansionIds: [19],
        team: [kubfu],
        versionGroup,
      })[0].severity,
    ).toBe("info");
  });

  it("reads both versions' exclusives as a trade step, one version's as info", () => {
    const both = buildPlanIssues({
      includedExpansionIds: [],
      team: [sirfetchd, goodra],
      versionGroup,
    });

    expect(both[0]).toMatchObject({
      severity: "step",
      title: "Needs both Sword and Shield exclusives",
    });

    const one = buildPlanIssues({
      includedExpansionIds: [],
      team: [sirfetchd],
      versionGroup,
    });

    expect(one[0]).toMatchObject({
      severity: "info",
      title: "Sirfetch'd is Sword only",
    });
  });

  it("orders event-only, trade evolutions and shared lines by severity", () => {
    const issues = buildPlanIssues({
      includedExpansionIds: [],
      team: [zarude, slowkingLine, slowbro],
      versionGroup,
    });

    expect(issues.map((issue) => issue.kind)).toEqual([
      "event",
      "trade",
      "line",
    ]);
    expect(issues[1].body).toBe(
      "Slowking needs a King's Rock. Needs someone to trade with.",
    );
    expect(getWorstIssueFor(893, issues)?.kind).toBe("event");
    expect(getWorstIssueFor(80, issues)).toBeNull();
  });
});

describe("getPoolTileNotes", () => {
  it("advises without blocking", () => {
    expect(getPoolTileNotes(goodra, versionGroup)).toEqual([
      "Shield only. Trade for it if you play another version.",
    ]);
    expect(getPoolTileNotes(corviknight, versionGroup)).toEqual([]);
  });
});

describe("team analysis", () => {
  const types = ["fire", "water", "electric", "ice", "ground"].map((slug) => ({
    name: slug,
    slug,
  }));

  it("puts the types hitting most members first and flags pressure", () => {
    const rows = buildPlanMatchups({
      generationOrder: 8,
      team: [corviknight, slowbro],
      types,
    });

    expect(rows[0].type.slug).toBe("electric");
    expect(rows[0].weakCount).toBe(2);
    expect(rows[0].isPressure).toBe(true);
    expect(rows.find((row) => row.type.slug === "ground")?.immuneCount).toBe(1);
  });

  it("reads coverage from the team's own types", () => {
    const coverage = buildPlanCoverage({
      generationOrder: 8,
      team: [slowbro],
      types,
    });

    expect(
      coverage.find((entry) => entry.type.slug === "fire")?.coveredBySpeciesIds,
    ).toEqual([80]);
    expect(
      coverage.find((entry) => entry.type.slug === "electric")
        ?.coveredBySpeciesIds,
    ).toEqual([]);
  });

  it("tips the most useful thing first", () => {
    const team = [corviknight, slowbro];
    const tip = getPlanTeamTip({
      issues: [],
      matchups: buildPlanMatchups({ generationOrder: 8, team, types }),
      team,
    });

    expect(tip).toEqual({
      more: 0,
      text: "Watch out for electric: two of your team are weak to it.",
      tone: "watch",
    });
    expect(getPlanTeamTip({ issues: [], matchups: [], team: [] }).tone).toBe(
      "idle",
    );
  });
});

describe("pickRandomTeam", () => {
  const candidates = [
    corviknight,
    sirfetchd,
    goodra,
    zarude,
    slowbro,
    slowkingLine,
  ];
  const first = () => 0;

  it("fills only open slots, never repeating a line or picking event-only", () => {
    const slots = pickRandomTeam({
      candidates,
      mode: "empty",
      random: first,
      slots: [80, null, null, null, null, null],
    });

    expect(slots[0]).toBe(80);
    expect(slots).not.toContain(893);
    expect(slots).not.toContain(199);
    expect(new Set(slots.filter(Boolean)).size).toBe(
      slots.filter(Boolean).length,
    );
  });

  it("replaces every slot in the all mode", () => {
    const slots = pickRandomTeam({
      candidates,
      mode: "all",
      random: first,
      slots: [80, 80, null, null, null, null],
    });

    expect(slots.slice(0, 4)).toEqual([823, 865, 706, 80]);
    expect(slots.slice(4)).toEqual([null, null]);
  });
});
