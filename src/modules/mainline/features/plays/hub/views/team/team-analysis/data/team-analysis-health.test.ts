import { describe, expect, it } from "vitest";

import type { Type } from "@/modules/reference/types";

import type { TeamAnalysisEvidence, TeamAnalysisHealthStatus } from "../types";
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
    expect(metric?.reason).toContain(
      "Your team against a full team of six, Pokémon of each type as strong as yours, at your top level (Lv. 34).",
    );
    expect(metric?.reason).toContain(
      "Beating them costs about 50% of your team's HP.",
    );
    expect(metric?.reason).toContain("Type 4 costs you the most.");
  });

  it("says a field that costs more than the whole team as such", () => {
    expect(build(field({ share: 2.4 }))["team-health"]?.reason).toContain(
      "Beating them costs more than your whole team's HP.",
    );
  });

  it("says who lags behind, then how many you bring against six", () => {
    expect(
      build(field({ lagging: ["Drifloon"] }), 3, 3)["team-health"]?.reason,
    ).toContain(
      "Drifloon is 5 or more levels below your top, and you bring 3 to their 6.",
    );
    expect(
      build(field({ unrecorded: { levels: 6, moves: 0 } }))["team-health"]
        ?.reason,
    ).toContain("at Lv. 34, as your levels aren't recorded.");
  });

  it("names three types and counts the rest", () => {
    const reason = build(
      field({
        types: typeReadings({
          1: { answerCost: 1.5 },
          2: { answerCost: 1.4 },
          3: { answerCost: 1.3 },
          4: { answerCost: 1.2 },
          5: { answerCost: 1.1 },
        }),
      }),
    )["threat-response"]?.reason;

    expect(reason).toContain("; Type 1, Type 2, Type 3 and 2 more cost more.");
  });

  it("answers a type while your best answers beat it for less than 90% of a Pokémon", () => {
    const one = build(
      field({ types: typeReadings({ 3: { answerCost: 0.9 } }) }),
    )["threat-response"];

    expect(one?.status).toBe("moderate");
    expect(one?.line).toEqual([{ text: "9 of 10 answered" }]);
    expect(one?.reason).toContain("; Type 3 cost more.");
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
    expect(metric?.reason).toContain("Type 1, Type 2 and Type 3 take more");
    expect(metric?.reason).toContain("Strong from 8 types, Moderate from 5.");
  });

  it("flags a shared weak spot only while nothing answers it", () => {
    const answered = build(
      field({
        types: typeReadings({ 5: { beats: ["Mismagius", "Luxray"] } }),
      }),
    )["weakness-control"];

    expect(answered?.status).toBe("strong");
    expect(answered?.line).toEqual([{ text: "1 shared, all answered" }]);
    expect(answered?.reason).toContain("Type 5 (Mismagius and Luxray)");

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

  it("speaks of a team of one as it", () => {
    const reason = build(
      field({
        types: typeReadings({ 5: { answerCost: 1.1, beats: ["Squirtle"] } }),
      }),
      1,
      1,
    )["weakness-control"]?.reason;

    expect(reason).toContain(
      "1 type hits your Pokémon super effectively and beats it one on one: Type 5 (Squirtle).",
    );
  });

  it("says when a missing level or move makes every card a rough read", () => {
    const metrics = build(field({ unrecorded: { levels: 2, moves: 1 } }));

    for (const metric of Object.values(metrics)) {
      expect(metric.reason).toContain(
        "A rough read: 2 of yours have no level and 1 has no damaging move recorded.",
      );
    }
    expect(metrics["move-coverage"]?.reason).toContain(
      "Yours without a damaging move recorded hit with their own types.",
    );
    expect(
      build(field({ unrecorded: { levels: 0, moves: 1 } }))["team-health"]
        ?.reason,
    ).toContain("A rough read: 1 of yours has no damaging move recorded.");
    expect(build(field())["team-health"]?.reason).not.toContain("rough");
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
