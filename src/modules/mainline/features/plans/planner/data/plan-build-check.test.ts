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
  availabilityGroups: [
    {
      id: 19001,
      kind: "one-per-save",
      memberFormIds: [89100, 89200, 89201],
      name: "Kubfu",
      note: "A save gets one Kubfu, and it evolves into one Urshifu.",
      versionGroupId: 19,
    },
    {
      id: 20002,
      kind: "pick-one",
      memberFormIds: [89600, 89700, 89801, 89802],
      name: "Glastrier or Spectrier",
      note: "You pick Glastrier or Spectrier, not both.",
      versionGroupId: 20,
    },
    {
      id: 20004,
      kind: "one-per-save",
      memberFormIds: [14401],
      name: "Galarian Articuno",
      note: "A save has one Galarian Articuno to catch.",
      versionGroupId: 20,
    },
  ],
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
  formSlug: name.toLowerCase(),
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

  it("for one version, flags only the other version's exclusives, as a trade", () => {
    const [sword, shield] = versionGroup.games;
    const forShield = buildPlanIssues({
      includedExpansionIds: [],
      team: [sirfetchd, goodra],
      versionGame: shield,
      versionGroup,
    });

    expect(forShield).toEqual([
      expect.objectContaining({
        body: "You're playing Shield: trade for it.",
        formIds: [sirfetchd.formId],
        kind: "exclusives",
        severity: "step",
        title: "Sirfetch'd is Sword only",
      }),
    ]);

    expect(
      buildPlanIssues({
        includedExpansionIds: [],
        team: [sirfetchd],
        versionGame: sword,
        versionGroup,
      }),
    ).toEqual([]);
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
    expect(getWorstIssueFor(89300, issues)?.kind).toBe("event");
    expect(getWorstIssueFor(8000, issues)).toBeNull();
  });
});

describe("buildPlanIssues with one-of groups", () => {
  const withForm = (
    base: PlannerPokemon,
    formId: number,
    name = base.name,
  ) => ({
    ...base,
    formId,
    name,
  });
  const urshifu = withForm(
    pokemon(892, "Urshifu", ["fighting", "dark"], {
      expansionVersionGroupId: 19,
    }),
    89200,
  );
  const urshifuRapid = withForm(urshifu, 89201, "Urshifu (Rapid Strike)");
  const glastrier = pokemon(896, "Glastrier", ["ice"]);
  const spectrier = pokemon(897, "Spectrier", ["ghost"]);
  const galarianArticuno = withForm(
    pokemon(144, "Galarian Articuno", ["psychic", "flying"]),
    14401,
  );
  const check = (team: PlannerPokemon[]) =>
    buildPlanIssues({ includedExpansionIds: [19, 20], team, versionGroup })
      .filter((issue) => issue.kind === "one-per-save")
      .map((issue) => [issue.title, issue.severity, issue.formIds]);

  it("blocks Kubfu with Urshifu, and both Urshifu", () => {
    expect(check([kubfu, urshifu])).toEqual([
      ["Only one Kubfu per save", "block", [89100, 89200]],
    ]);
    expect(check([urshifu, urshifuRapid])).toEqual([
      ["Only one Kubfu per save", "block", [89200, 89201]],
    ]);
  });

  it("blocks both steeds and two of one Galarian bird", () => {
    expect(check([glastrier, spectrier])).toEqual([
      ["Glastrier or Spectrier, not both", "block", [89600, 89700]],
    ]);
    expect(check([galarianArticuno, galarianArticuno])).toEqual([
      ["Only one Galarian Articuno per save", "block", [14401, 14401]],
    ]);
  });

  it("lets a Galarian bird stand beside its Kantonian form, as two catches", () => {
    const articuno = pokemon(144, "Articuno", ["ice", "flying"]);
    const issues = buildPlanIssues({
      includedExpansionIds: [19, 20],
      team: [articuno, galarianArticuno],
      versionGroup,
    });

    expect(issues.map((issue) => issue.kind)).toEqual([]);
    expect(
      buildPlanIssues({
        includedExpansionIds: [19, 20],
        team: [articuno, articuno],
        versionGroup,
      }).map((issue) => issue.kind),
    ).toEqual(["line"]);
    /* Two Galarian are the one-per-save block; the Kantonian beside them is no line. */
    expect(
      buildPlanIssues({
        includedExpansionIds: [19, 20],
        team: [articuno, galarianArticuno, galarianArticuno],
        versionGroup,
      }).map((issue) => issue.kind),
    ).toEqual(["one-per-save"]);
  });

  it("doesn't also call a one-per-save pair a line to catch twice", () => {
    expect(
      buildPlanIssues({
        includedExpansionIds: [19, 20],
        team: [
          { ...kubfu, evolutionFamilyId: 891 },
          { ...urshifu, evolutionFamilyId: 891 },
        ],
        versionGroup,
      }).map((issue) => issue.kind),
    ).not.toContain("line");
  });

  it("says nothing about one member alone", () => {
    expect(check([kubfu, glastrier, galarianArticuno])).toEqual([]);
  });
});

describe("getPoolTileNotes", () => {
  it("advises without blocking", () => {
    expect(getPoolTileNotes(goodra, versionGroup)).toEqual([
      "Shield only. Trade for it if you play another version.",
    ]);
    expect(getPoolTileNotes(corviknight, versionGroup)).toEqual([]);
  });

  it("follows the Plan's version: its own exclusives need no note", () => {
    const [sword, shield] = versionGroup.games;

    expect(getPoolTileNotes(goodra, versionGroup, shield)).toEqual([]);
    expect(getPoolTileNotes(goodra, versionGroup, sword)).toEqual([
      "Shield only: trade for it.",
    ]);
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

    expect(rows[0].attackingType.slug).toBe("electric");
    expect(rows[0].weakCount).toBe(2);
    expect(rows[0].isPressure).toBe(true);
    expect(
      rows.find((row) => row.attackingType.slug === "ground")?.immuneCount,
    ).toBe(1);
  });

  it("reads coverage from the team's own types", () => {
    const coverage = buildPlanCoverage({
      generationOrder: 8,
      team: [slowbro],
      types,
    });

    expect(
      coverage.find((entry) => entry.type.slug === "fire")?.coveredByFormIds,
    ).toEqual([8000]);
    expect(
      coverage.find((entry) => entry.type.slug === "electric")
        ?.coveredByFormIds,
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
  const byId = new Map(candidates.map((pokemon) => [pokemon.formId, pokemon]));

  it("fills only open slots, never repeating a line or picking event-only", () => {
    const slots = pickRandomTeam({
      byId,
      candidates,
      mode: "empty",
      random: first,
      slots: [8000, null, null, null, null, null],
    });

    expect(slots[0]).toBe(8000);
    expect(slots).not.toContain(89300);
    expect(slots).not.toContain(19900);
    expect(new Set(slots.filter(Boolean)).size).toBe(
      slots.filter(Boolean).length,
    );
  });

  it("keeps counting a kept Pokémon the filters hide", () => {
    /* Slowbro is kept but filtered out of the candidates: no Slowking then. */
    const slots = pickRandomTeam({
      byId,
      candidates: [slowkingLine, corviknight],
      mode: "empty",
      random: first,
      slots: [8000, null, null, null, null, null],
    });

    expect(slots.slice(0, 3)).toEqual([8000, 82300, null]);
  });

  it("replaces every slot in the all mode", () => {
    const slots = pickRandomTeam({
      byId,
      candidates,
      mode: "all",
      random: first,
      slots: [8000, 8000, null, null, null, null],
    });

    expect(slots.slice(0, 4)).toEqual([82300, 86500, 70600, 8000]);
    expect(slots.slice(4)).toEqual([null, null]);
  });

  it("never picks two forms of one species", () => {
    const articuno = pokemon(144, "Articuno", ["ice", "flying"]);
    const galarianArticuno = {
      ...pokemon(144, "Galarian Articuno", ["psychic", "flying"]),
      formId: 14401,
    };
    const slots = pickRandomTeam({
      byId: new Map(
        [articuno, galarianArticuno, corviknight].map((pokemon) => [
          pokemon.formId,
          pokemon,
        ]),
      ),
      candidates: [articuno, galarianArticuno, corviknight],
      mode: "all",
      random: first,
      slots: [null, null, null, null, null, null],
    });

    expect(slots.slice(0, 3)).toEqual([14400, 82300, null]);
  });
});
