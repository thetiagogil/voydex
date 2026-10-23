import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisEvidence,
  TeamAnalysisHealthLinePart,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
} from "../types";
import { formatLevelRange, getLevelRange } from "./story-battle-reading";
import { battleCostLimits } from "./team-battlers";
import type {
  TeamFieldReading,
  TeamFieldTypeReading,
} from "./team-field-reading";

export const teamAnalysisHealthStatusLabels: Record<
  TeamAnalysisHealthStatus,
  string
> = {
  "limited-data": "Not enough yet",
  moderate: "Moderate",
  strong: "Strong",
  weak: "Weak",
};

const thresholds = {
  coverage: { moderateAt: 0.5, strongAt: 0.8 },
  threatResponse: { moderateAt: 0.75, strongAt: 1 },
};

/* The most hits that still count as knocking a type out quickly. */
const COVERAGE_HITS = 2;

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

/* "A, B and C": the list style of the analysis sentences. */
export const joinTeamAnalysisList = (
  items: string[],
  conjunction: "and" | "or",
) => {
  if (items.length <= 1) return items.join("");

  return `${items.slice(0, -1).join(", ")} ${conjunction} ${items.at(-1)}`;
};

/* The most items a sentence names before it counts the rest. */
const LISTED_COUNT = 3;

/* "A, B and C", or "A, B, C and 4 more" past three. */
const listNames = (names: string[], conjunction: "and" | "or") =>
  names.length > LISTED_COUNT + 1
    ? `${names.slice(0, LISTED_COUNT).join(", ")} ${conjunction} ${names.length - LISTED_COUNT} more`
    : joinTeamAnalysisList(names, conjunction);

const typeNames = (readings: TeamFieldTypeReading[]) =>
  readings.map((reading) => reading.type.name);

const text = (value: string): TeamAnalysisHealthLinePart => ({ text: value });

const typePart = (type: Type): TeamAnalysisHealthLinePart => ({ type });

const levelWord = (count: number) => (count === 1 ? "level" : "levels");

const percent = (share: number) => `${Math.round(share * 100)}%`;

/* A type is answered while your best answers beat one for less than most of a Pokémon's HP. */
const isAnswered = (reading: TeamFieldTypeReading) =>
  reading.answerCost < battleCostLimits.challenging;

/*
 * The note every card ends with while the team leaves out what the math
 * reads: "A rough read: 2 of yours have no level and 1 has no damaging move
 * recorded."
 */
export const getTeamFieldRoughNote = ({
  unrecorded: { levels, moves },
}: TeamFieldReading) => {
  const has = (count: number) => (count === 1 ? "has" : "have");
  const parts = [
    levels ? `${levels} of yours ${has(levels)} no level` : null,
    moves
      ? `${moves}${levels ? "" : " of yours"} ${has(moves)} no damaging move`
      : null,
  ].filter(Boolean);

  return parts.length ? `A rough read: ${parts.join(" and ")} recorded.` : null;
};

/* What the field is, in words: its Pokémon, their levels and how many. */
const getFieldSentence = ({ benchmark }: TeamFieldReading) => {
  const count = benchmark.levels.length;
  const range = getLevelRange(benchmark.levels);
  const levels = range ? formatLevelRange(range) : `Lv. ${benchmark.level}`;
  const field = "Your team against a Pokémon of each type, as strong as yours";

  return benchmark.kind === "battle"
    ? `${field}, at the levels of ${benchmark.name}'s ${count === 1 ? "Pokémon" : count} (${levels}), your next leader battle.`
    : benchmark.kind === "team"
      ? `${field}, at your top level (${levels}), as many as you have: no leader battle is left.`
      : `${field}, at ${levels}, as many as you have: your levels aren't recorded.`;
};

/* Level first, then numbers: "Your top level is 5 below their ace, and you bring 3 to their 6." */
const getEdgeSentence = ({
  levelGap,
  theirCount,
  yourCount,
}: {
  levelGap: number | null;
  theirCount: number;
  yourCount: number;
}) => {
  const level =
    levelGap === null
      ? null
      : levelGap === 0
        ? "your top level matches their ace"
        : `your top level is ${Math.abs(levelGap)} ${levelGap < 0 ? "below" : "above"} their ace`;
  const count =
    theirCount === yourCount
      ? null
      : `you bring ${yourCount} to their ${theirCount}`;
  const sentence = [level, count].filter(Boolean).join(", and ");

  return sentence ? `${sentence[0].toUpperCase()}${sentence.slice(1)}.` : null;
};

/*
 * The four Team health cards, read with the games' damage formula against
 * the game's field (`readTeamField`): Team health is what beating it costs
 * your whole team, Threat response which types your best answers beat
 * cheaply, Move coverage which types your hardest hits knock out quickly,
 * and Weakness control which types outclass several of yours with nothing
 * to answer them.
 */
export const buildTeamAnalysisHealth = ({
  evidence,
  field,
}: {
  evidence: TeamAnalysisEvidence;
  field: TeamFieldReading;
}): TeamAnalysisHealthMetric[] => {
  const typingComplete =
    evidence.activeCount > 0 &&
    evidence.typedMemberCount === evidence.activeCount;
  const canRead = typingComplete && field.types.length > 0;
  const missingLine = [
    text(typingComplete ? "No type chart" : "Typing missing"),
  ];
  const missingReason = typingComplete
    ? "This Play's generation has no type chart to read."
    : `Every Pokémon needs its typing for this reading; ${evidence.typedMemberCount} of ${evidence.activeCount} have one.`;
  const roughNote = getTeamFieldRoughNote(field);
  const withRoughNote = (sentences: (string | null)[]) =>
    [...sentences, roughNote].filter(Boolean).join(" ");
  const total = field.types.length;
  /* Hardest first: what each type costs your best answers. */
  const byCost = [...field.types].sort(
    (left, right) => right.answerCost - left.answerCost,
  );

  const teamHealthStatus: TeamAnalysisHealthStatus = !canRead
    ? "limited-data"
    : field.share <= battleCostLimits.strong
      ? "strong"
      : field.share >= battleCostLimits.challenging
        ? "weak"
        : "moderate";
  const { levelGap } = field;
  const watch = byCost[0] && byCost[0].answerCost > battleCostLimits.strong;
  const theirCount = field.benchmark.levels.length;
  const teamHealthMetric: TeamAnalysisHealthMetric = {
    id: "team-health",
    line: !canRead
      ? missingLine
      : levelGap !== null && levelGap <= -2
        ? [text(`${-levelGap} ${levelWord(-levelGap)} behind`)]
        : levelGap !== null && levelGap >= 2
          ? [text(`${levelGap} ${levelWord(levelGap)} ahead`)]
          : watch
            ? [text("Watch"), typePart(byCost[0].type)]
            : [text("No type to watch")],
    reason: !canRead
      ? missingReason
      : withRoughNote([
          getFieldSentence(field),
          `Beating them costs about ${percent(field.share)} of your team's HP.`,
          getEdgeSentence({
            levelGap,
            theirCount,
            yourCount: evidence.activeCount,
          }),
          watch ? `${byCost[0].type.name} costs you the most.` : null,
          `Strong at ${percent(battleCostLimits.strong)} or less, Weak at ${percent(battleCostLimits.challenging)} or more.`,
        ]),
    status: teamHealthStatus,
    title: "Team health",
  };

  const openReadings = byCost.filter((reading) => !isAnswered(reading));
  const answeredCount = total - openReadings.length;
  const threatResponseMetric: TeamAnalysisHealthMetric = {
    id: "threat-response",
    line: canRead
      ? [text(`${answeredCount} of ${total} answered`)]
      : missingLine,
    reason: canRead
      ? withRoughNote([
          `Your best answers beat a Pokémon of ${answeredCount} of the ${total} types for less than ${percent(battleCostLimits.challenging)} of one Pokémon's HP${
            openReadings.length
              ? `; ${listNames(typeNames(openReadings), "and")} cost more`
              : ""
          }.`,
          "Each answer mixes your best Pokémon against it with your second best.",
          "Strong when all are answered, Moderate from three in four, Weak below that.",
        ])
      : missingReason,
    status: canRead
      ? getRatioStatus({
          ...thresholds.threatResponse,
          ratio: total ? answeredCount / total : 1,
        })
      : "limited-data",
    title: "Threat response",
  };

  const coveredCount = field.types.filter(
    (reading) => reading.hitsToKnockOut <= COVERAGE_HITS,
  ).length;
  const slowNames = field.types
    .filter((reading) => reading.hitsToKnockOut > COVERAGE_HITS)
    .map((reading) => reading.type.name);
  const moveCoverageMetric: TeamAnalysisHealthMetric = {
    id: "move-coverage",
    line: canRead ? [text(`${coveredCount} of ${total} types`)] : missingLine,
    reason: canRead
      ? withRoughNote([
          `Your hardest hits knock out a Pokémon of ${coveredCount} of the ${total} types in two hits or fewer${
            slowNames.length ? `; ${listNames(slowNames, "and")} take more` : ""
          }.`,
          field.unrecorded.moves
            ? "Yours without a damaging move recorded hit with their own types."
            : null,
          `Strong from ${getCountForRatio(
            total,
            thresholds.coverage.strongAt,
          )} types, Moderate from ${getCountForRatio(
            total,
            thresholds.coverage.moderateAt,
          )}.`,
        ])
      : missingReason,
    status: canRead
      ? getRatioStatus({
          ...thresholds.coverage,
          ratio: total ? coveredCount / total : 0,
        })
      : "limited-data",
    title: "Move coverage",
  };

  /* A shared weak spot outclasses two of yours, or your only one. */
  const sharedWords =
    evidence.activeCount === 1 ? "your Pokémon" : "two or more of yours";
  const pressureReadings = byCost.filter(
    (reading) => reading.beats.length >= Math.min(2, evidence.activeCount),
  );
  const openPressure = pressureReadings.filter(
    (reading) => !isAnswered(reading),
  );
  const weaknessControlMetric: TeamAnalysisHealthMetric = {
    id: "weakness-control",
    line: !canRead
      ? missingLine
      : !pressureReadings.length
        ? [text("Nothing shared")]
        : openPressure[0]
          ? [typePart(openPressure[0].type), text("unanswered")]
          : [text(`${pressureReadings.length} shared, all answered`)],
    reason: !canRead
      ? missingReason
      : withRoughNote([
          pressureReadings.length
            ? `${pressureReadings.length} ${
                pressureReadings.length === 1 ? "type hits" : "types hit"
              } ${sharedWords} super effectively and ${pressureReadings.length === 1 ? "beats" : "beat"} them one on one: ${listNames(
                pressureReadings.map(
                  (reading) =>
                    `${reading.type.name} (${joinTeamAnalysisList(reading.beats, "and")})`,
                ),
                "and",
              )}.`
            : `No type hits ${sharedWords} super effectively and beats them one on one.`,
          !pressureReadings.length
            ? null
            : openPressure.length
              ? `Nothing on the team answers ${listNames(typeNames(openPressure), "or")}.`
              : pressureReadings.length === 1
                ? "It has an answer on the team."
                : "Each has an answer on the team.",
          "Strong with none unanswered, Moderate with one, Weak with more.",
        ]),
    status: !canRead
      ? "limited-data"
      : openPressure.length === 0
        ? "strong"
        : openPressure.length === 1
          ? "moderate"
          : "weak",
    title: "Weakness control",
  };

  return [
    teamHealthMetric,
    threatResponseMetric,
    moveCoverageMetric,
    weaknessControlMetric,
  ];
};
