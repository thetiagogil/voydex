import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisDefensiveRow,
  TeamAnalysisEvidence,
  TeamAnalysisHealthLinePart,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "../types";

export const teamAnalysisHealthStatusLabels: Record<
  TeamAnalysisHealthStatus,
  string
> = {
  "limited-data": "Not enough yet",
  moderate: "Moderate",
  strong: "Strong",
  weak: "Weak",
};

/* How a status reads inside a sentence about the other cards. */
const statusInSentence: Record<TeamAnalysisHealthStatus, string> = {
  "limited-data": "not readable yet",
  moderate: "Moderate",
  strong: "Strong",
  weak: "Weak",
};

const thresholds = {
  coverage: { moderateAt: 0.5, strongAt: 0.8 },
  threatResponse: { moderateAt: 0.75, strongAt: 1 },
};

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

/* The smallest count out of `total` that reaches a ratio, as the status rule compares it. */
const getCountForRatio = (total: number, ratio: number) => {
  for (let count = 0; count <= total; count += 1) {
    if (count / total >= ratio) return count;
  }

  return total;
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

/* "A, B and C": the list style of the analysis sentences. */
export const joinTeamAnalysisList = (
  items: string[],
  conjunction: "and" | "or",
) => {
  if (items.length <= 1) return items.join("");

  return `${items.slice(0, -1).join(", ")} ${conjunction} ${items.at(-1)}`;
};

const typeNames = (rows: TeamAnalysisDefensiveRow[]) =>
  rows.map((row) => row.attackingType.name);

const text = (value: string): TeamAnalysisHealthLinePart => ({ text: value });

const typePart = (type: Type): TeamAnalysisHealthLinePart => ({ type });

export const buildTeamAnalysisHealth = ({
  coverageRows,
  defensiveRows,
  evidence,
}: {
  coverageRows: TeamAnalysisCoverageRow[];
  /* In threat order: the types that hit the team hardest first. */
  defensiveRows: TeamAnalysisDefensiveRow[];
  evidence: TeamAnalysisEvidence;
}): TeamAnalysisHealthMetric[] => {
  const typingComplete =
    evidence.activeCount > 0 &&
    evidence.typedMemberCount === evidence.activeCount;
  const canReadTyping = typingComplete && defensiveRows.length > 0;
  const typingMissingLine = [
    text(typingComplete ? "No type chart" : "Typing missing"),
  ];
  const typingMissingReason = typingComplete
    ? "This Play's generation has no type chart to read."
    : `Every Pokémon needs its typing for this reading; ${evidence.typedMemberCount} of ${evidence.activeCount} have one.`;
  const coverageByTypeId = new Map(
    coverageRows.map((row) => [row.defendingType.id, row]),
  );
  const hasDefensiveAnswer = (row: TeamAnalysisDefensiveRow) =>
    row.resistCount + row.immuneCount > 0;
  const hasOffensiveAnswer = (row: TeamAnalysisDefensiveRow) =>
    (coverageByTypeId.get(row.attackingType.id)?.moveCount ?? 0) > 0;
  const isAnswered = (row: TeamAnalysisDefensiveRow) =>
    hasDefensiveAnswer(row) || hasOffensiveAnswer(row);

  const threatRows = defensiveRows.filter((row) => row.weakCount > 0);
  const openThreatRows = threatRows.filter((row) => !isAnswered(row));
  const answeredThreatCount = threatRows.length - openThreatRows.length;
  const threatResponseStatus = canReadTyping
    ? getRatioStatus({
        ...thresholds.threatResponse,
        ratio: threatRows.length ? answeredThreatCount / threatRows.length : 1,
      })
    : "limited-data";
  const threatResponseMetric: TeamAnalysisHealthMetric = {
    id: "threat-response",
    line: !canReadTyping
      ? typingMissingLine
      : threatRows.length
        ? [text(`${answeredThreatCount} of ${threatRows.length} answered`)]
        : [text("Nothing hits hard")],
    reason: !canReadTyping
      ? typingMissingReason
      : threatRows.length
        ? [
            `${threatRows.length} ${
              threatRows.length === 1 ? "type hits" : "types hit"
            } one of your Pokémon super effectively.`,
            openThreatRows.length
              ? `${answeredThreatCount} ${
                  answeredThreatCount === 1 ? "has" : "have"
                } an answer; nothing answers ${joinTeamAnalysisList(
                  typeNames(openThreatRows),
                  "or",
                )}.`
              : threatRows.length === 1
                ? "It has an answer."
                : "Each has an answer.",
            "An answer is another Pokémon that resists it, or a recorded move that hits it back super effectively.",
            "Strong when all are answered, Moderate from three in four, Weak below that.",
          ].join(" ")
        : "No type hits any of your Pokémon super effectively.",
    status: threatResponseStatus,
    title: "Threat response",
  };

  const coveredRows = coverageRows.filter((row) => row.moveCount > 0);
  const gapNames = coverageRows
    .filter((row) => row.moveCount === 0)
    .map((row) => row.defendingType.name);
  const moveCompleteness = evidence.possibleMoveCount
    ? evidence.recordedMoveCount / evidence.possibleMoveCount
    : 0;
  const rawCoverageStatus = getRatioStatus({
    ...thresholds.coverage,
    ratio: coverageRows.length ? coveredRows.length / coverageRows.length : 0,
  });
  const canReadCoverage =
    coverageRows.length > 0 && evidence.recordedMoveCount > 0;
  const moveCoverageStatus = !canReadCoverage
    ? "limited-data"
    : rawCoverageStatus === "strong" && moveCompleteness < 0.5
      ? "moderate"
      : rawCoverageStatus;
  const moveCoverageMetric: TeamAnalysisHealthMetric = {
    id: "move-coverage",
    line: canReadCoverage
      ? [text(`${coveredRows.length} of ${coverageRows.length} types`)]
      : [text("No moves recorded")],
    reason: canReadCoverage
      ? [
          `Your recorded moves hit ${coveredRows.length} of ${
            coverageRows.length
          } types super effectively${
            gapNames.length
              ? `; nothing lands on ${joinTeamAnalysisList(gapNames, "or")}`
              : ""
          }.`,
          `Strong from ${getCountForRatio(
            coverageRows.length,
            thresholds.coverage.strongAt,
          )} types, Moderate from ${getCountForRatio(
            coverageRows.length,
            thresholds.coverage.moderateAt,
          )}, and never Strong while fewer than half the move slots are recorded.`,
        ].join(" ")
      : "Record their moves to see which types they hit super effectively.",
    status: moveCoverageStatus,
    title: "Move coverage",
  };

  const pressureRows = defensiveRows.filter((row) => row.isPressure);
  const openPressureRows = pressureRows.filter((row) => !isAnswered(row));
  const weaknessControlStatus = !canReadTyping
    ? "limited-data"
    : openPressureRows.length === 0
      ? "strong"
      : openPressureRows.length === 1
        ? "moderate"
        : "weak";
  const weaknessControlMetric: TeamAnalysisHealthMetric = {
    id: "weakness-control",
    line: !canReadTyping
      ? typingMissingLine
      : !pressureRows.length
        ? [text("Nothing shared")]
        : openPressureRows[0]
          ? [typePart(openPressureRows[0].attackingType), text("unanswered")]
          : [text(`${pressureRows.length} shared, all answered`)],
    reason: !canReadTyping
      ? typingMissingReason
      : pressureRows.length
        ? [
            `${pressureRows.length} ${
              pressureRows.length === 1 ? "type hits" : "types hit"
            } two or more of your Pokémon, or one of them 4×: ${joinTeamAnalysisList(
              typeNames(pressureRows),
              "and",
            )}.`,
            openPressureRows.length
              ? `Nothing answers ${joinTeamAnalysisList(typeNames(openPressureRows), "or")}.`
              : pressureRows.length === 1
                ? "It has an answer on the team."
                : "Each has an answer on the team.",
            "Strong with none unanswered, Moderate with one, Weak with more.",
          ].join(" ")
        : "No type hits two of your Pokémon super effectively, or one of them 4×.",
    status: weaknessControlStatus,
    title: "Weakness control",
  };

  const componentStatuses = [
    threatResponseMetric.status,
    moveCoverageMetric.status,
    weaknessControlMetric.status,
  ];
  const overallStatus = getOverallStatus(componentStatuses);
  /* The type to watch: the first pressure type nothing answers, else the first pressure type. */
  const watchRow = openPressureRows[0] ?? pressureRows[0];
  const watchHits = watchRow
    ? watchRow.cells
        .filter((cell) => cell.multiplier !== null && cell.multiplier > 1)
        .sort((left, right) => (right.multiplier ?? 0) - (left.multiplier ?? 0))
        .map((cell) => `${cell.memberName} ${cell.multiplierLabel}`)
    : [];
  const overallMetric: TeamAnalysisHealthMetric = {
    id: "team-health",
    line: watchRow
      ? [text("Watch"), typePart(watchRow.attackingType)]
      : [text("No shared weak spot")],
    reason: [
      `It sums up the other three: Threat response is ${
        statusInSentence[threatResponseMetric.status]
      }, Move coverage ${statusInSentence[moveCoverageMetric.status]} and Weakness control ${
        statusInSentence[weaknessControlMetric.status]
      }.`,
      watchRow
        ? `${watchRow.attackingType.name} is the type to watch: it hits ${joinTeamAnalysisList(
            watchHits,
            "and",
          )}.`
        : null,
      "All three Strong reads Strong; two Weak, or a Weak with no Strong, reads Weak; anything else is Moderate.",
      overallStatus === "limited-data"
        ? "It needs all three to be readable."
        : null,
    ]
      .filter(Boolean)
      .join(" "),
    status: overallStatus,
    title: "Team health",
  };

  return [
    overallMetric,
    threatResponseMetric,
    moveCoverageMetric,
    weaknessControlMetric,
  ];
};
