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

const fantina = {
  isPromotionMatch: false,
  kind: "Gym Leader",
  name: "Fantina",
};

const field = ({
  benchmark,
  levelGap = 0,
  unrecorded = { levels: 0, moves: 0 },
  share = 0.2,
  theirCount = 6,
  types = typeReadings(),
}: {
  benchmark?: Partial<TeamFieldReading["benchmark"]>;
  levelGap?: number | null;
  unrecorded?: TeamFieldReading["unrecorded"];
  share?: number;
  theirCount?: number;
  types?: TeamFieldTypeReading[];
} = {}): TeamFieldReading => ({
  benchmark: {
    battle: fantina,
    kind: "battle",
    level: 34,
    levels: Array(theirCount).fill(34),
    ...benchmark,
  },
  levelGap,
  unrecorded,
  share,
  types,
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

  it("leads Team health with a level edge, then the type to watch", () => {
    expect(
      build(field({ levelGap: -4, share: 0.6 }))["team-health"],
    ).toMatchObject({
      line: [{ text: "4 levels behind" }],
    });
    expect(build(field({ levelGap: 3 }))["team-health"]?.line).toEqual([
      { text: "3 levels ahead" },
    ]);

    const metric = build(
      field({ share: 0.5, types: typeReadings({ 4: { answerCost: 1.2 } }) }),
    )["team-health"];

    expect(metric?.line).toEqual([
      { text: "Watch" },
      { type: referenceType(4) },
    ]);
    expect(metric?.reason).toContain(
      "at the levels of Fantina's 6 (Lv. 34), your next leader battle.",
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

  it("names where the field's levels come from", () => {
    const reason = (benchmark: Partial<TeamFieldReading["benchmark"]>) =>
      build(field({ benchmark, levelGap: null }))["team-health"]?.reason;

    expect(
      reason({
        battle: { isPromotionMatch: true, kind: "Z-A Royale", name: "Zach" },
        levels: [8, 9],
      }),
    ).toContain(
      "at the levels of Zach's 2 (Lv. 8–9), your next promotion match.",
    );
    expect(reason({ kind: "team", level: 20, levels: [20, 20] })).toContain(
      "at your top level (Lv. 20), as many as you have: Voydex doesn't have Gym Leader Fantina's team yet.",
    );
    expect(
      reason({ battle: null, kind: "team", level: 70, levels: [70] }),
    ).toContain(
      "at your top level (Lv. 70), as many as you have: no leader battle is left.",
    );
    expect(
      reason({ battle: null, kind: "default", level: 50, levels: [50] }),
    ).toContain(
      "at Lv. 50, as many as you have: no leader battle is left and your levels aren't recorded.",
    );
  });

  it("says how far behind your levels are, then how many each side brings", () => {
    expect(
      build(field({ levelGap: -5, theirCount: 3 }))["team-health"]?.reason,
    ).toContain(
      "Your top level is 5 below their ace, and you bring 6 to their 3.",
    );
    expect(build(field({ theirCount: 3 }))["team-health"]?.reason).toContain(
      "Your top level matches their ace, and you bring 6 to their 3.",
    );
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
