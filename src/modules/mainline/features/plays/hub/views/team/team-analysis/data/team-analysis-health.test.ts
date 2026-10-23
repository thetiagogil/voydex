import { describe, expect, it } from "vitest";

import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisEvidence,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
  TeamAnalysisTipRow,
} from "../types";
import { buildTeamAnalysisHealth } from "./team-analysis-health";
import type {
  TeamFieldReading,
  TeamFieldTypeReading,
} from "./team-field-reading";

const referenceType = (id: number) =>
  ({
    id,
    introduced_generation_id: 1,
    name: `Type ${id}`,
    slug: `type-${id}`,
    sort_order: id,
  }) as Type;

/* Ten types the team answers cheaply and knocks out in two hits, with these changed. */
const typeReadings = (
  changes: Record<number, Partial<Omit<TeamFieldTypeReading, "type">>> = {},
) =>
  Array.from(
    { length: 10 },
    (_, id): TeamFieldTypeReading => ({
      answerCost: 0.2,
      beats: [],
      hitsToKnockOut: 2,
      type: referenceType(id),
      ...changes[id],
    }),
  );

const field = ({
  lagging = [],
  share = 0.2,
  types = typeReadings(),
  unrecorded = { levels: 0, moves: 0 },
}: {
  lagging?: string[];
  share?: number;
  types?: TeamFieldTypeReading[];
  unrecorded?: TeamFieldReading["unrecorded"];
} = {}): TeamFieldReading => ({
  lagging,
  level: 34,
  share,
  theirCount: 6,
  types,
  unrecorded,
});

const evidence = (
  typedMemberCount = 6,
  activeCount = 6,
): TeamAnalysisEvidence => ({
  activeCount,
  possibleMoveCount: 24,
  recordedMoveCount: 24,
  typedMemberCount,
});

const build = (reading: TeamFieldReading, typed = 6, active = 6) =>
  Object.fromEntries(
    buildTeamAnalysisHealth({
      evidence: evidence(typed, active),
      field: reading,
    }).map((metric) => [metric.id, metric]),
  );

/* A tip row as one string: who, what is said, and the chip. */
const say = (row: TeamAnalysisTipRow) =>
  [
    "pokemon" in row.subject
      ? row.subject.pokemon
      : "type" in row.subject
        ? row.subject.type.name
        : row.subject.text,
    row.detail,
    row.chip,
  ]
    .filter(Boolean)
    .join(" | ");

const yours = (metric: TeamAnalysisHealthMetric | undefined) =>
  (metric?.tip.yours ?? []).map(say);
const rated = (metric: TeamAnalysisHealthMetric | undefined) =>
  (metric?.tip.rated ?? []).map(say);

const statuses = (reading: TeamFieldReading, typed = 6) =>
  Object.fromEntries(
    Object.entries(build(reading, typed)).map(([id, metric]) => [
      id,
      metric.status,
    ]),
  ) as Record<string, TeamAnalysisHealthStatus>;

describe("buildTeamAnalysisHealth", () => {
  it("rates a team that beats the field cheaply as strong", () => {
    expect(statuses(field())).toEqual({
      "move-coverage": "strong",
      "team-health": "strong",
      "threat-response": "strong",
      "weakness-control": "strong",
    });
  });

  it("reads Team health from what beating the field costs, by Story's limits", () => {
    expect(statuses(field({ share: 0.3 }))["team-health"]).toBe("strong");
    expect(statuses(field({ share: 0.5 }))["team-health"]).toBe("moderate");
    expect(statuses(field({ share: 0.9 }))["team-health"]).toBe("weak");
  });

  it("leads Team health with who lags behind, then the type to watch", () => {
    expect(
      build(field({ lagging: ["Drifloon"], share: 0.6 }))["team-health"]?.line,
    ).toEqual([{ text: "Drifloon lags behind" }]);
    expect(
      build(field({ lagging: ["Drifloon", "Buizel"] }))["team-health"]?.line,
    ).toEqual([{ text: "2 lag behind" }]);
    expect(build(field())["team-health"]?.line).toEqual([
      { text: "No type to watch" },
    ]);

    const metric = build(
      field({ share: 0.5, types: typeReadings({ 4: { answerCost: 1.2 } }) }),
    )["team-health"];

    expect(metric?.line).toEqual([
      { text: "Watch" },
      { type: referenceType(4) },
    ]);
    expect(rated(metric)[0]).toBe(
      "Read against | A full team of six, one type each, as strong as yours, at your top level (Lv. 34)",
    );
    expect(yours(metric)).toContain(
      "Cost | Of your team's HP to beat them | 50%",
    );
    expect(yours(metric)).toContain("Type 4 | Costs you the most");
  });

  it("says a field that costs more than the whole team as such", () => {
    expect(yours(build(field({ share: 2.4 }))["team-health"])[0]).toContain(
      "all of it",
    );
  });

  it("lists who lags behind, then how many you bring against six", () => {
    expect(
      yours(build(field({ lagging: ["Drifloon"] }), 3, 3)["team-health"]),
    ).toEqual([
      "Cost | Of your team's HP to beat them | 20%",
      "Drifloon | 5 or more levels below your top",
      "Numbers | You bring fewer than they do | 3 to 6",
    ]);
    expect(
      rated(
        build(field({ unrecorded: { levels: 6, moves: 0 } }))["team-health"],
      )[0],
    ).toContain("at Lv. 34 (your levels aren't recorded)");
  });

  it("lists the types that cost more", () => {
    const rows = yours(
      build(
        field({
          types: typeReadings({
            1: { answerCost: 1.5 },
            2: { answerCost: 1.4 },
            3: { answerCost: 1.3 },
            4: { answerCost: 1.2 },
            5: { answerCost: 1.1 },
          }),
        }),
      )["threat-response"],
    );

    expect(rows.slice(1)).toEqual([
      "Type 1 | Costs more to beat",
      "Type 2 | Costs more to beat",
      "Type 3 | Costs more to beat",
      "Type 4 | Costs more to beat",
      "Type 5 | Costs more to beat",
    ]);
  });

  it("answers a type while your best answers beat it for less than 90% of a Pokémon", () => {
    const one = build(
      field({ types: typeReadings({ 3: { answerCost: 0.9 } }) }),
    )["threat-response"];

    expect(one?.status).toBe("moderate");
    expect(one?.line).toEqual([{ text: "9 of 10 answered" }]);
    expect(yours(one)).toContain("Type 3 | Costs more to beat");
    expect(
      statuses(
        field({
          types: typeReadings({
            1: { answerCost: 1 },
            2: { answerCost: 1 },
            3: { answerCost: 1 },
          }),
        }),
      )["threat-response"],
    ).toBe("weak");
  });

  it("counts the types your hardest hits knock out in two hits", () => {
    const metric = build(
      field({
        types: typeReadings({
          1: { hitsToKnockOut: 3 },
          2: { hitsToKnockOut: 3 },
          3: { hitsToKnockOut: Infinity },
        }),
      }),
    )["move-coverage"];

    expect(metric?.status).toBe("moderate");
    expect(metric?.line).toEqual([{ text: "7 of 10 types" }]);
    expect(yours(metric)).toEqual([
      "Covered | Types knocked out in 2 hits or fewer | 7 of 10",
      "Type 1 | Takes more than 2 hits",
      "Type 2 | Takes more than 2 hits",
      "Type 3 | Takes more than 2 hits",
    ]);
    expect(rated(metric)).toContain("Strong | 8+ types");
    expect(rated(metric)).toContain("Moderate | 5+ types");
  });

  it("flags a shared weak spot only while nothing answers it", () => {
    const answered = build(
      field({
        types: typeReadings({ 5: { beats: ["Mismagius", "Luxray"] } }),
      }),
    )["weakness-control"];

    expect(answered?.status).toBe("strong");
    expect(answered?.line).toEqual([{ text: "1 shared, all answered" }]);
    expect(yours(answered)).toEqual([
      "Type 5 | Beats Mismagius and Luxray | Answered",
    ]);

    const open = build(
      field({
        types: typeReadings({
          5: { answerCost: 1.1, beats: ["Mismagius", "Luxray"] },
          6: { answerCost: 1.3, beats: ["Luxray", "Staravia"] },
        }),
      }),
    )["weakness-control"];

    expect(open?.status).toBe("weak");
    /* The costliest one leads. */
    expect(open?.line).toEqual([
      { type: referenceType(6) },
      { text: "unanswered" },
    ]);
  });

  it("keeps a full stop in a name inside its row", () => {
    const rows = yours(
      build(
        field({
          types: typeReadings({ 5: { beats: ["Mr. Mime", "Mime Jr."] } }),
        }),
      )["weakness-control"],
    );

    expect(rows).toEqual(["Type 5 | Beats Mr. Mime and Mime Jr. | Answered"]);
  });

  it("speaks of a team of one as it", () => {
    const metric = build(
      field({
        types: typeReadings({ 5: { answerCost: 1.1, beats: ["Squirtle"] } }),
      }),
      1,
      1,
    )["weakness-control"];

    expect(rated(metric)[0]).toContain("your Pokémon super effectively");
    expect(rated(metric)[0]).toContain("beats it one on one");
  });

  it("ends every card's findings with what a missing level or move leaves rough", () => {
    const metrics = build(field({ unrecorded: { levels: 2, moves: 1 } }));

    for (const metric of Object.values(metrics)) {
      expect(yours(metric).at(-1)).toBe(
        "A rough read: 2 of yours have no level and 1 has no damaging move recorded.",
      );
    }
    expect(yours(metrics["move-coverage"])).toContain(
      "Rough | Yours with no damaging move hit with their own types",
    );
    expect(
      yours(
        build(field({ unrecorded: { levels: 0, moves: 1 } }))["team-health"],
      ).at(-1),
    ).toBe("A rough read: 1 of yours has no damaging move recorded.");
    expect(
      yours(build(field())["team-health"]).some((row) => row.includes("rough")),
    ).toBe(false);
  });

  it("does not grade a team with typing missing", () => {
    expect(statuses(field(), 5)).toEqual({
      "move-coverage": "limited-data",
      "team-health": "limited-data",
      "threat-response": "limited-data",
      "weakness-control": "limited-data",
    });
  });
});
