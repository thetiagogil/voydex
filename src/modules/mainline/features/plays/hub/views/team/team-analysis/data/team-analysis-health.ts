import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
  TeamAnalysisEvidence,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "../types";

const getRatioStatus = ({
  moderateAt,
  ratio,
  strongAt,
}: {
  moderateAt: number;
  ratio: number;
  strongAt: number;
}): TeamAnalysisHealthStatus => {
  if (ratio >= strongAt) return "strong";
  if (ratio >= moderateAt) return "moderate";
  return "weak";
};

const getOverallStatus = (
  statuses: TeamAnalysisHealthStatus[],
): TeamAnalysisHealthStatus => {
  if (statuses.includes("limited-data")) return "limited-data";

  const strongCount = statuses.filter((status) => status === "strong").length;
  const weakCount = statuses.filter((status) => status === "weak").length;

  if (strongCount === statuses.length) return "strong";
  if (weakCount >= 2 || (weakCount === 1 && strongCount === 0)) return "weak";
  return "moderate";
};

const getOverallEvidence = (statuses: TeamAnalysisHealthStatus[]) => {
  const labels: Record<TeamAnalysisHealthStatus, string> = {
    "limited-data": "limited",
    moderate: "moderate",
    strong: "strong",
    weak: "weak",
  };
  const displayOrder: TeamAnalysisHealthStatus[] = [
    "strong",
    "moderate",
    "weak",
    "limited-data",
  ];

  return displayOrder
    .flatMap((status) => {
      const count = statuses.filter((item) => item === status).length;
      return count ? [`${count} ${labels[status]}`] : [];
    })
    .join(" · ");
};

const getStatusSummary = (
  metric: TeamAnalysisHealthMetric["id"],
  status: TeamAnalysisHealthStatus,
) => {
  const summaries: Record<
    TeamAnalysisHealthMetric["id"],
    Record<TeamAnalysisHealthStatus, string>
  > = {
    "move-coverage": {
      "limited-data": "Record damaging moves to judge offensive coverage.",
      moderate: "Recorded moves cover a useful range, with visible gaps.",
      strong: "Recorded moves reach most generation-available types.",
      weak: "Recorded moves cover only a narrow range of opposing types.",
    },
    "team-health": {
      "limited-data": "Record more team evidence before judging the lineup.",
      moderate: "The lineup is workable, with clear areas to watch.",
      strong: "The recorded lineup is well rounded overall.",
      weak: "The lineup has several clear gaps to work on.",
    },
    "threat-response": {
      "limited-data": "Record every member's typing to judge threat response.",
      moderate: "Most threatening types have answers, but gaps remain.",
      strong: "Every threatening type has a recorded answer.",
      weak: "Several threatening types have no recorded answer.",
    },
    "weakness-control": {
      "limited-data": "Record every member's typing to judge weakness control.",
      moderate: "One concentrated type risk still lacks a clear answer.",
      strong: "Shared and severe weaknesses have recorded answers.",
      weak: "Several concentrated type risks have no recorded answer.",
    },
  };

  return summaries[metric][status];
};

export const buildTeamAnalysisHealth = ({
  coverageRows,
  defensiveRows,
  evidence,
}: {
  coverageRows: TeamAnalysisCoverageRow[];
  defensiveRows: TeamAnalysisDefensiveRow[];
  evidence: TeamAnalysisEvidence;
}): TeamAnalysisHealthMetric[] => {
  const typingComplete =
    evidence.activeCount > 0 &&
    evidence.typedMemberCount === evidence.activeCount;
  const coverageByTypeId = new Map(
    coverageRows.map((row) => [row.defendingType.id, row]),
  );
  const hasDefensiveAnswer = (row: TeamAnalysisDefensiveRow) =>
    row.resistCount + row.immuneCount > 0;
  const hasOffensiveAnswer = (row: TeamAnalysisDefensiveRow) =>
    (coverageByTypeId.get(row.attackingType.id)?.moveCount ?? 0) > 0;

  const threatRows = defensiveRows.filter((row) => row.weakCount > 0);
  const defensivelyAnsweredThreatRows = threatRows.filter(hasDefensiveAnswer);
  const offensivelyAnsweredThreatRows = threatRows.filter(
    (row) => !hasDefensiveAnswer(row) && hasOffensiveAnswer(row),
  );
  const answeredThreatRows = threatRows.filter(
    (row) => hasDefensiveAnswer(row) || hasOffensiveAnswer(row),
  );
  const threatResponseRatio = threatRows.length
    ? answeredThreatRows.length / threatRows.length
    : 1;
  const threatResponseStatus =
    !typingComplete || !defensiveRows.length
      ? "limited-data"
      : getRatioStatus({
          moderateAt: 0.75,
          ratio: threatResponseRatio,
          strongAt: 1,
        });

  const coveredRows = coverageRows.filter((row) => row.moveCount > 0);
  const coverageRatio = coverageRows.length
    ? coveredRows.length / coverageRows.length
    : 0;
  const moveCompleteness = evidence.possibleMoveCount
    ? evidence.recordedMoveCount / evidence.possibleMoveCount
    : 0;
  const rawCoverageStatus = getRatioStatus({
    moderateAt: 0.5,
    ratio: coverageRatio,
    strongAt: 0.8,
  });
  const moveCoverageStatus =
    !coverageRows.length || evidence.recordedMoveCount === 0
      ? "limited-data"
      : rawCoverageStatus === "strong" && moveCompleteness < 0.5
        ? "moderate"
        : rawCoverageStatus;

  const pressureRows = defensiveRows.filter(
    (row) =>
      row.weakCount >= 2 ||
      row.cells.some(
        (cell) => cell.multiplier !== null && cell.multiplier >= 4,
      ),
  );
  const controlledPressureRows = pressureRows.filter(
    (row) => hasDefensiveAnswer(row) || hasOffensiveAnswer(row),
  );
  const uncontrolledPressureRows = pressureRows.filter(
    (row) => !hasDefensiveAnswer(row) && !hasOffensiveAnswer(row),
  );
  const weaknessControlStatus =
    !typingComplete || !defensiveRows.length
      ? "limited-data"
      : uncontrolledPressureRows.length === 0
        ? "strong"
        : uncontrolledPressureRows.length === 1
          ? "moderate"
          : "weak";

  const threatResponseMetric: TeamAnalysisHealthMetric = {
    evidence: threatRows.length
      ? `${answeredThreatRows.length}/${threatRows.length} threats answered`
      : "No exposed types",
    explanation: {
      description:
        "Checks every type that threatens at least one member. A threat is answered by a teammate resistance or immunity, or by a recorded move that is super effective against that type.",
      note: `${defensivelyAnsweredThreatRows.length} ${
        defensivelyAnsweredThreatRows.length === 1
          ? "threat has"
          : "threats have"
      } a defensive answer; ${offensivelyAnsweredThreatRows.length} ${
        offensivelyAnsweredThreatRows.length === 1 ? "more is" : "more are"
      } answered only by recorded move coverage. Unrecorded moves are not assumed.`,
      rules: [
        "Strong: every threatening type is answered.",
        "Moderate: at least 75% of threats are answered.",
        "Weak: fewer than 75% of threats are answered.",
        "Limited data: one or more member typings are missing.",
      ],
    },
    id: "threat-response",
    status: threatResponseStatus,
    summary: getStatusSummary("threat-response", threatResponseStatus),
    title: "Threat response",
  };

  const moveCoverageMetric: TeamAnalysisHealthMetric = {
    evidence: `${coveredRows.length}/${coverageRows.length} types covered`,
    explanation: {
      description:
        "Checks how many generation-available defending types can be hit super effectively by at least one recorded damaging move.",
      note: "A Strong result is capped at Moderate until at least half of the possible move slots are recorded.",
      rules: [
        "Strong: at least 80% of available types are covered.",
        "Moderate: at least 50% of available types are covered.",
        "Weak: fewer than 50% of available types are covered.",
        "Limited data: no damaging moves are recorded.",
      ],
    },
    id: "move-coverage",
    status: moveCoverageStatus,
    summary: getStatusSummary("move-coverage", moveCoverageStatus),
    title: "Move coverage",
  };

  const uncontrolledPressureNames = uncontrolledPressureRows.map(
    (row) => row.attackingType.name,
  );
  const weaknessControlMetric: TeamAnalysisHealthMetric = {
    evidence: pressureRows.length
      ? `${uncontrolledPressureRows.length} uncontrolled · ${controlledPressureRows.length} covered`
      : "No concentrated risks",
    explanation: {
      description:
        "Checks shared weaknesses and 4× exposures. A concentrated risk is controlled when the lineup has a resistance, immunity, or recorded super-effective move against that type.",
      note: uncontrolledPressureNames.length
        ? `Current uncontrolled types: ${uncontrolledPressureNames.join(", ")}.`
        : pressureRows.length
          ? "Every concentrated risk has a defensive or recorded offensive answer."
          : "The recorded lineup has no shared weaknesses or 4× exposures.",
      rules: [
        "Strong: every shared weakness and 4× exposure has an answer.",
        "Moderate: one concentrated risk has no recorded answer.",
        "Weak: two or more concentrated risks have no recorded answer.",
        "Limited data: one or more member typings are missing.",
      ],
    },
    id: "weakness-control",
    status: weaknessControlStatus,
    summary: getStatusSummary("weakness-control", weaknessControlStatus),
    title: "Weakness control",
  };

  const componentStatuses = [
    threatResponseMetric.status,
    moveCoverageMetric.status,
    weaknessControlMetric.status,
  ];
  const overallStatus = getOverallStatus(componentStatuses);
  const overallMetric: TeamAnalysisHealthMetric = {
    evidence: getOverallEvidence(componentStatuses),
    explanation: {
      description:
        "Combines Threat response, Move coverage, and Weakness control. Strong requires all three dimensions to be Strong; mixed evidence remains Moderate.",
      note: "Team health summarizes recorded evidence. It does not predict battle outcomes.",
      rules: [
        "Strong: all three dimensions are Strong.",
        "Moderate: the dimensions are mixed, including one Weak result offset by at least one Strong result.",
        "Weak: at least two dimensions are Weak, or one is Weak and none are Strong.",
        "Limited data: any dimension lacks enough recorded evidence.",
      ],
    },
    id: "team-health",
    status: overallStatus,
    summary: getStatusSummary("team-health", overallStatus),
    title: "Team health",
  };

  return [
    overallMetric,
    threatResponseMetric,
    moveCoverageMetric,
    weaknessControlMetric,
  ];
};
