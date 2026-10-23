import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisEvidence,
  TeamAnalysisHealthLinePart,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
  TeamAnalysisHealthTip,
  TeamAnalysisTipRow,
  TeamAnalysisTipTone,
} from "../types";
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

const text = (value: string): TeamAnalysisHealthLinePart => ({ text: value });

const typePart = (type: Type): TeamAnalysisHealthLinePart => ({ type });

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

const statusTones: Partial<
  Record<TeamAnalysisHealthStatus, TeamAnalysisTipTone>
> = { moderate: "warn", strong: "ok", weak: "danger" };

/* What the field is: a full team of six at your top level. */
const getFieldRow = (
  field: TeamFieldReading,
  yourCount: number,
): TeamAnalysisTipRow => ({
  detail: `A full team of six, one type each, as strong as yours, at ${
    field.unrecorded.levels >= yourCount
      ? `Lv. ${field.level} (your levels aren't recorded)`
      : `your top level (Lv. ${field.level})`
  }`,
  subject: { text: "Read against" },
});

/* How many of the types fit in a tip before the rest are counted. */
const TIP_TYPES = 5;

const typeRows = (
  readings: TeamFieldTypeReading[],
  detail: string,
): TeamAnalysisTipRow[] => [
  ...readings.slice(0, TIP_TYPES).map(
    (reading): TeamAnalysisTipRow => ({
      detail,
      subject: { type: reading.type },
    }),
  ),
  ...(readings.length > TIP_TYPES
    ? [{ subject: { text: `and ${readings.length - TIP_TYPES} more` } }]
    : []),
];

/*
 * The four Team health cards, read with the games' damage formula against
 * a full team of six at your level (`readTeamField`): Team health is what beating it costs
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
  const missingTip: TeamAnalysisHealthTip = {
    rated: [],
    yours: [{ subject: { text: missingReason } }],
  };
  /* What the team leaves out of the math closes what was found. */
  const withRoughNote = (rows: TeamAnalysisTipRow[]) =>
    roughNote ? [...rows, { subject: { text: roughNote } }] : rows;
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
  const watch = byCost[0] && byCost[0].answerCost > battleCostLimits.strong;
  const teamHealthMetric: TeamAnalysisHealthMetric = {
    id: "team-health",
    line: !canRead
      ? missingLine
      : field.lagging.length
        ? [
            text(
              field.lagging.length === 1
                ? `${field.lagging[0]} lags behind`
                : `${field.lagging.length} lag behind`,
            ),
          ]
        : watch
          ? [text("Watch"), typePart(byCost[0].type)]
          : [text("No type to watch")],
    tip: !canRead
      ? missingTip
      : {
          rated: [
            getFieldRow(field, evidence.activeCount),
            {
              chip: `${percent(battleCostLimits.strong)} or less`,
              subject: { text: "Strong" },
              tone: "ok",
            },
            {
              chip: `${percent(battleCostLimits.challenging)} or more`,
              subject: { text: "Weak" },
              tone: "danger",
            },
          ],
          yours: withRoughNote([
            {
              chip: field.share >= 1 ? "all of it" : percent(field.share),
              detail: "Of your team's HP to beat them",
              subject: { text: "Cost" },
              tone: statusTones[teamHealthStatus],
            },
            ...field.lagging.map(
              (name): TeamAnalysisTipRow => ({
                detail: "5 or more levels below your top",
                subject: { pokemon: name },
                tone: "warn",
              }),
            ),
            ...(evidence.activeCount < field.theirCount
              ? [
                  {
                    chip: `${evidence.activeCount} to ${field.theirCount}`,
                    detail: "You bring fewer than they do",
                    subject: { text: "Numbers" },
                    tone: "warn" as const,
                  },
                ]
              : []),
            ...(watch
              ? [
                  {
                    detail: "Costs you the most",
                    subject: { type: byCost[0].type },
                    tone: "danger" as const,
                  },
                ]
              : []),
          ]),
        },
    status: teamHealthStatus,
    title: "Team health",
  };

  const openReadings = byCost.filter((reading) => !isAnswered(reading));
  const answeredCount = total - openReadings.length;
  const threatResponseStatus: TeamAnalysisHealthStatus = canRead
    ? getRatioStatus({
        ...thresholds.threatResponse,
        ratio: total ? answeredCount / total : 1,
      })
    : "limited-data";
  const threatResponseMetric: TeamAnalysisHealthMetric = {
    id: "threat-response",
    line: canRead
      ? [text(`${answeredCount} of ${total} answered`)]
      : missingLine,
    tip: canRead
      ? {
          rated: [
            {
              detail: `Answered: beaten for less than ${percent(battleCostLimits.challenging)} of one Pokémon's HP, by your best answer mixed with your second best`,
              subject: { text: "Each type" },
            },
            { chip: "all", subject: { text: "Strong" }, tone: "ok" },
            { chip: "3 in 4", subject: { text: "Moderate" }, tone: "warn" },
            { chip: "fewer", subject: { text: "Weak" }, tone: "danger" },
          ],
          yours: withRoughNote([
            {
              chip: `${answeredCount} of ${total}`,
              detail: "Types answered",
              subject: { text: "Answered" },
              tone: statusTones[threatResponseStatus],
            },
            ...typeRows(openReadings, "Costs more to beat"),
          ]),
        }
      : missingTip,
    status: threatResponseStatus,
    title: "Threat response",
  };

  const coveredCount = field.types.filter(
    (reading) => reading.hitsToKnockOut <= COVERAGE_HITS,
  ).length;
  const slowTypes = field.types.filter(
    (reading) => reading.hitsToKnockOut > COVERAGE_HITS,
  );
  const moveCoverageStatus: TeamAnalysisHealthStatus = canRead
    ? getRatioStatus({
        ...thresholds.coverage,
        ratio: total ? coveredCount / total : 0,
      })
    : "limited-data";
  const moveCoverageMetric: TeamAnalysisHealthMetric = {
    id: "move-coverage",
    line: canRead ? [text(`${coveredCount} of ${total} types`)] : missingLine,
    tip: canRead
      ? {
          rated: [
            {
              detail: `Covered: a Pokémon of it falls in ${COVERAGE_HITS} hits or fewer to your hardest hit`,
              subject: { text: "Each type" },
            },
            {
              chip: `${getCountForRatio(total, thresholds.coverage.strongAt)}+ types`,
              subject: { text: "Strong" },
              tone: "ok",
            },
            {
              chip: `${getCountForRatio(total, thresholds.coverage.moderateAt)}+ types`,
              subject: { text: "Moderate" },
              tone: "warn",
            },
            { chip: "fewer", subject: { text: "Weak" }, tone: "danger" },
          ],
          yours: withRoughNote([
            {
              chip: `${coveredCount} of ${total}`,
              detail: `Types knocked out in ${COVERAGE_HITS} hits or fewer`,
              subject: { text: "Covered" },
              tone: statusTones[moveCoverageStatus],
            },
            ...typeRows(slowTypes, `Takes more than ${COVERAGE_HITS} hits`),
            ...(field.unrecorded.moves
              ? [
                  {
                    detail:
                      "Yours with no damaging move hit with their own types",
                    subject: { text: "Rough" },
                  },
                ]
              : []),
          ]),
        }
      : missingTip,
    status: moveCoverageStatus,
    title: "Move coverage",
  };

  /* A shared weak spot outclasses two of yours, or your only one. */
  const isAlone = evidence.activeCount === 1;
  const sharedWords = isAlone ? "your Pokémon" : "two or more of yours";
  const sharedPronoun = isAlone ? "it" : "them";
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
    tip: !canRead
      ? missingTip
      : {
          rated: [
            {
              detail: `A type that hits ${sharedWords} super effectively and beats ${sharedPronoun} one on one, with nothing on the team to answer it`,
              subject: { text: "Unanswered" },
            },
            { chip: "none", subject: { text: "Strong" }, tone: "ok" },
            { chip: "one", subject: { text: "Moderate" }, tone: "warn" },
            { chip: "more", subject: { text: "Weak" }, tone: "danger" },
          ],
          yours: withRoughNote(
            pressureReadings.length
              ? [
                  ...pressureReadings
                    .slice(0, TIP_TYPES)
                    .map((reading): TeamAnalysisTipRow => {
                      const open = !isAnswered(reading);

                      return {
                        chip: open ? "Unanswered" : "Answered",
                        detail: `Beats ${joinTeamAnalysisList(reading.beats, "and")}`,
                        subject: { type: reading.type },
                        tone: open ? "danger" : "ok",
                      };
                    }),
                  ...(pressureReadings.length > TIP_TYPES
                    ? [
                        {
                          subject: {
                            text: `and ${pressureReadings.length - TIP_TYPES} more`,
                          },
                        },
                      ]
                    : []),
                ]
              : [
                  {
                    subject: {
                      text: `No type outclasses ${sharedWords} with nothing to answer it`,
                    },
                  },
                ],
          ),
        },
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
