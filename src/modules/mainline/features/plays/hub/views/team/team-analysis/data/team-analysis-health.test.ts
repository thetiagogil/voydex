import { describe, expect, it } from "vitest";

import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageRow,
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
      sharedCost: 0.2,
      ...changes[id],
    }),
  );

const field = ({
  lagging = [],
  share = 0.2,
  types = typeReadings(),
  unrecorded = { levels: 0, moves: 0 },
}: {
  lagging?: TeamFieldReading["lagging"];
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

const rows = (metric: TeamAnalysisHealthMetric | undefined) =>
  (metric?.tip.rows ?? []).map(say);
const scale = (metric: TeamAnalysisHealthMetric | undefined) =>
  (metric?.tip.scale ?? []).map((grade) => `${grade.label} | ${grade.chip}`);

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
      build(field({ lagging: [{ level: 28, name: "Drifloon" }], share: 0.6 }))[
        "team-health"
      ]?.line,
    ).toEqual([{ text: "Drifloon lags behind" }]);
    expect(
      build(
        field({
          lagging: [
            { level: 28, name: "Drifloon" },
            { level: 25, name: "Buizel" },
          ],
        }),
      )["team-health"]?.line,
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
    expect(metric?.tip.summary).toBe(
      "Your team holds its own against most types, but not easily.",
    );
    expect(metric?.tip.rule).toContain(
      "not a real trainer: six typical Pokémon of mixed types, as strong as yours, at your top level (Lv. 34).",
    );
    expect(rows(metric)).toEqual(["Type 4 | Harder to beat than the rest"]);
    expect(scale(metric)).toEqual([
      "Strong | easily",
      "Moderate | with effort",
      "Weak | struggles",
    ]);
  });

  it("speaks in general words, never of HP", () => {
    for (const metric of Object.values(build(field({ share: 2.4 })))) {
      expect(
        [metric.tip.summary, metric.tip.rule, ...rows(metric)].join(" "),
      ).not.toMatch(/HP|%/);
    }
  });

  it("lists no type when the field is evenly hard", () => {
    const evenlyHard = Object.fromEntries(
      Array.from({ length: 10 }, (_, id) => [id, { answerCost: 0.8 }]),
    );
    const metric = build(field({ types: typeReadings(evenlyHard) }))[
      "team-health"
    ];

    expect(metric?.line).toEqual([{ text: "No type to watch" }]);
    expect(rows(metric)).toEqual([]);
  });

  it("names no single type to watch when others cost about as much", () => {
    const metric = build(
      field({
        types: typeReadings({
          4: { answerCost: 1.2 },
          5: { answerCost: 1.15 },
          6: { answerCost: 1.1 },
          7: { answerCost: 1.1 },
        }),
      }),
    )["team-health"];

    expect(metric?.line).toEqual([{ text: "4 types to watch" }]);
    expect(rows(metric)).toEqual([
      "Type 4 | Harder to beat than the rest",
      "Type 5 | Harder to beat than the rest",
      "Type 6 | Harder to beat than the rest",
      "and 1 more",
    ]);
  });

  it("lists who lags behind with their level, then a short team", () => {
    expect(
      rows(
        build(field({ lagging: [{ level: 28, name: "Drifloon" }] }), 3, 3)[
          "team-health"
        ],
      ),
    ).toEqual([
      "Drifloon | 6 levels below your top (Lv. 34) | Lv. 28",
      "Team size | A full team has 6 | 3 of 6",
    ]);
    expect(
      build(field({ unrecorded: { levels: 6, moves: 0 } }))["team-health"]?.tip
        .rule,
    ).toContain("at Lv. 34 (your levels aren't recorded)");
  });

  it("lists three types that aren't answered, then counts the rest", () => {
    const metric = build(
      field({
        types: typeReadings({
          1: { answerCost: 1.5 },
          2: { answerCost: 1.4 },
          3: { answerCost: 1.3 },
          4: { answerCost: 1.2 },
          5: { answerCost: 1.1 },
        }),
      }),
    )["threat-response"];

    expect(metric?.tip.summary).toBe("5 of 10 types answered.");
    expect(rows(metric)).toEqual([
      "Type 1 | Your best Pokémon against it faints beating one",
      "Type 2 | Your best Pokémon against it faints beating one",
      "Type 3 | Your best Pokémon against it faints beating one",
      "and 2 more",
    ]);
  });

  it("answers a type while your best answers beat it for less than 90% of a Pokémon", () => {
    const one = build(
      field({ types: typeReadings({ 3: { answerCost: 0.9 } }) }),
    )["threat-response"];

    expect(one?.status).toBe("moderate");
    expect(one?.line).toEqual([{ text: "9 of 10 answered" }]);
    expect(rows(one)).toEqual([
      "Type 3 | Your best Pokémon against it faints beating one",
    ]);
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

  it("says why a type is slow to knock out", () => {
    const coverage = (
      slug: string,
      stab: boolean | null,
    ): TeamAnalysisCoverageRow => ({
      defendingType: { slug } as Type,
      hits:
        stab === null
          ? []
          : [
              {
                imageUrl: null,
                memberId: "a",
                memberName: "A",
                moves: [{ name: "Move", stab, typeSlug: "fire" }],
              },
            ],
      moveCount: stab === null ? 0 : 1,
    });
    const metric = buildTeamAnalysisHealth({
      coverageRows: [
        coverage("type-1", null),
        coverage("type-2", false),
        coverage("type-3", true),
      ],
      evidence: evidence(),
      field: field({
        types: typeReadings({
          1: { hitsToKnockOut: 3 },
          2: { hitsToKnockOut: 3 },
          3: { hitsToKnockOut: Infinity },
        }),
      }),
    }).find((entry) => entry.id === "move-coverage");

    expect(metric?.status).toBe("moderate");
    expect(metric?.title).toBe("Knockout power");
    expect(metric?.line).toEqual([{ text: "7 of 10 types in two hits" }]);
    expect(rows(metric)).toEqual([
      "Type 1 | No super-effective move",
      "Type 2 | Super effective, but no move of the user's own type (STAB)",
      "Type 3 | Super effective, but not strong enough for two hits",
    ]);
    expect(scale(metric)).toEqual([
      "Strong | 8+",
      "Moderate | 5+",
      "Weak | fewer",
    ]);
  });

  it("flags a shared weak spot only while nothing answers it", () => {
    const answered = build(
      field({
        types: typeReadings({ 5: { beats: ["Mismagius", "Luxray"] } }),
      }),
    )["weakness-control"];

    expect(answered?.status).toBe("strong");
    expect(answered?.line).toEqual([{ text: "1 shared, all answered" }]);
    expect(rows(answered)).toEqual([
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
    expect(open?.tip.summary).toBe("2 shared weaknesses, 2 unanswered.");
  });

  it("keeps a full stop in a name inside its row", () => {
    expect(
      rows(
        build(
          field({
            types: typeReadings({ 5: { beats: ["Mr. Mime", "Mime Jr."] } }),
          }),
        )["weakness-control"],
      ),
    ).toEqual(["Type 5 | Beats Mr. Mime and Mime Jr. | Answered"]);
  });

  it("speaks of a team of one as it", () => {
    const metric = build(
      field({
        types: typeReadings({ 5: { answerCost: 1.1, beats: ["Squirtle"] } }),
      }),
      1,
      1,
    )["weakness-control"];

    expect(metric?.tip.rule).toContain("your Pokémon super effectively");
    expect(metric?.tip.rule).toContain("beats it one on one");
  });

  it("ends every card's findings with what a missing level or move leaves rough", () => {
    const metrics = build(field({ unrecorded: { levels: 2, moves: 1 } }));

    for (const metric of Object.values(metrics)) {
      expect(rows(metric).at(-1)).toBe(
        "A rough read: 2 of yours have no level and 1 has no damaging move recorded.",
      );
    }
    expect(rows(metrics["move-coverage"])).toContain(
      "Yours with no damaging move hit with their own types.",
    );
    expect(
      rows(
        build(field({ unrecorded: { levels: 0, moves: 1 } }))["team-health"],
      ).at(-1),
    ).toBe("A rough read: 1 of yours has no damaging move recorded.");
    expect(
      rows(build(field())["team-health"]).some((row) => row.includes("rough")),
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
