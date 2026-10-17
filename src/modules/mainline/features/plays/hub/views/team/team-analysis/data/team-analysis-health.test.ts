import { describe, expect, it } from "vitest";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
  TeamAnalysisEvidence,
  TeamAnalysisHealthStatus,
} from "../types";
import { buildTeamAnalysisHealth } from "./team-analysis-health";

const referenceType = (id: number) => ({
  created_at: "2026-01-01T00:00:00.000Z",
  id,
  introduced_generation_id: 1,
  name: `Type ${id}`,
  slug: `type-${id}`,
  sort_order: id,
});

const defensiveRow = ({
  id,
  immuneCount = 0,
  resistCount = 0,
  severeExposureCount = 0,
  weakCount,
}: {
  id: number;
  immuneCount?: number;
  resistCount?: number;
  severeExposureCount?: number;
  weakCount: number;
}) =>
  ({
    attackingType: referenceType(id),
    cells: Array.from({ length: severeExposureCount }, (_, index) => ({
      effectiveness: "weak",
      memberId: `member-${id}-${index}`,
      memberName: `Member ${index}`,
      multiplier: 4,
      multiplierLabel: "4×",
    })),
    immuneCount,
    isPressure: weakCount >= 2 || severeExposureCount > 0,
    resistCount,
    weakCount,
  }) as TeamAnalysisDefensiveRow;

const coverageRows = (coveredTypeIds: number[], totalCount = 10) => {
  return Array.from(
    { length: totalCount },
    (_, index) =>
      ({
        defendingType: referenceType(index),
        moveCount: coveredTypeIds.includes(index) ? 1 : 0,
      }) as TeamAnalysisCoverageRow,
  );
};

const evidence = ({
  recordedMoveCount = 24,
  typedMemberCount = 6,
}: {
  recordedMoveCount?: number;
  typedMemberCount?: number;
} = {}): TeamAnalysisEvidence => ({
  activeCount: 6,
  possibleMoveCount: 24,
  recordedMoveCount,
  typedMemberCount,
});

const getStatuses = (metrics: ReturnType<typeof buildTeamAnalysisHealth>) => {
  return Object.fromEntries(
    metrics.map((metric) => [metric.id, metric.status]),
  ) as Record<string, TeamAnalysisHealthStatus>;
};

describe("buildTeamAnalysisHealth", () => {
  it("rates a well-covered lineup as strong", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 4, 5, 6, 7]),
      defensiveRows: Array.from({ length: 4 }, (_, index) =>
        defensiveRow({
          id: index,
          resistCount: 1,
          weakCount: 2,
        }),
      ),
      evidence: evidence({ recordedMoveCount: 12 }),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "strong",
      "team-health": "strong",
      "threat-response": "strong",
      "weakness-control": "strong",
    });
  });

  it("keeps mixed signals in the moderate tier", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 4]),
      defensiveRows: [
        defensiveRow({ id: 1, resistCount: 1, weakCount: 2 }),
        defensiveRow({ id: 2, resistCount: 1, weakCount: 1 }),
        defensiveRow({
          id: 8,
          severeExposureCount: 1,
          weakCount: 2,
        }),
        defensiveRow({ id: 9, resistCount: 1, weakCount: 1 }),
      ],
      evidence: evidence(),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "moderate",
      "team-health": "moderate",
      "threat-response": "moderate",
      "weakness-control": "moderate",
    });
  });

  it("marks multiple open gaps as weak", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2]),
      defensiveRows: [
        defensiveRow({ id: 0, resistCount: 1, weakCount: 1 }),
        defensiveRow({
          id: 5,
          severeExposureCount: 1,
          weakCount: 2,
        }),
        defensiveRow({
          id: 6,
          severeExposureCount: 1,
          weakCount: 3,
        }),
        defensiveRow({ id: 7, weakCount: 1 }),
      ],
      evidence: evidence(),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "weak",
      "team-health": "weak",
      "threat-response": "weak",
      "weakness-control": "weak",
    });
  });

  it("does not grade incomplete typing or absent move evidence", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([]),
      defensiveRows: [defensiveRow({ id: 1, weakCount: 2 })],
      evidence: evidence({
        recordedMoveCount: 0,
        typedMemberCount: 5,
      }),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "limited-data",
      "team-health": "limited-data",
      "threat-response": "limited-data",
      "weakness-control": "limited-data",
    });
  });

  it("treats recorded counter-coverage as an answer to a 4× exposure", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 4, 5, 6, 7]),
      defensiveRows: [
        defensiveRow({
          id: 4,
          severeExposureCount: 1,
          weakCount: 1,
        }),
      ],
      evidence: evidence({ recordedMoveCount: 12 }),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "strong",
      "team-health": "strong",
      "threat-response": "strong",
      "weakness-control": "strong",
    });
  });

  it("keeps overall health moderate until every dimension is strong", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 4, 5, 6]),
      defensiveRows: [
        defensiveRow({
          id: 0,
          resistCount: 1,
          weakCount: 2,
        }),
      ],
      evidence: evidence({ recordedMoveCount: 12 }),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "moderate",
      "team-health": "moderate",
      "threat-response": "strong",
      "weakness-control": "strong",
    });
  });

  it("marks one weak dimension as weak overall when no dimension is strong", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3]),
      defensiveRows: [
        defensiveRow({ id: 0, resistCount: 1, weakCount: 1 }),
        defensiveRow({ id: 6, resistCount: 1, weakCount: 1 }),
        defensiveRow({ id: 7, resistCount: 1, weakCount: 1 }),
        defensiveRow({
          id: 8,
          severeExposureCount: 1,
          weakCount: 2,
        }),
      ],
      evidence: evidence(),
    });

    expect(getStatuses(metrics)).toEqual({
      "move-coverage": "weak",
      "team-health": "weak",
      "threat-response": "moderate",
      "weakness-control": "moderate",
    });
  });

  it("keeps one unanswered 4× exposure moderate rather than weak", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 5, 6, 7]),
      defensiveRows: [
        defensiveRow({
          id: 4,
          severeExposureCount: 1,
          weakCount: 1,
        }),
      ],
      evidence: evidence({ recordedMoveCount: 12 }),
    });

    expect(getStatuses(metrics)["weakness-control"]).toBe("moderate");
  });

  it("names the type to watch and whom it hits", () => {
    const metrics = buildTeamAnalysisHealth({
      coverageRows: coverageRows([0, 1, 2, 3, 5, 6, 7]),
      defensiveRows: [
        defensiveRow({
          id: 4,
          severeExposureCount: 1,
          weakCount: 1,
        }),
      ],
      evidence: evidence({ recordedMoveCount: 12 }),
    });
    const byId = Object.fromEntries(
      metrics.map((metric) => [metric.id, metric]),
    );

    expect(byId["team-health"]?.line).toEqual([
      { text: "Watch" },
      { type: referenceType(4) },
    ]);
    expect(byId["team-health"]?.reason).toContain(
      "Type 4 is the type to watch: it hits Member 0 4×.",
    );
    expect(byId["weakness-control"]?.line).toEqual([
      { type: referenceType(4) },
      { text: "unanswered" },
    ]);
    expect(byId["move-coverage"]?.line).toEqual([{ text: "7 of 10 types" }]);
    expect(byId["move-coverage"]?.reason).toContain(
      "Strong from 8 types, Moderate from 5",
    );
  });
});
