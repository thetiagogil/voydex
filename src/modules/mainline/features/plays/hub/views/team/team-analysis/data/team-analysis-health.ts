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
  detail: `Not a real trainer: six typical Pokémon with every type mixed in, as strong as yours, at ${
    field.unrecorded.levels >= yourCount
      ? `Lv. ${field.level} (your levels aren't recorded)`
      : `your top level (Lv. ${field.level})`
  }`,
  subject: { text: "Yardstick" },
});

/* How many of the types fit in a tip before the rest are counted. */
const TIP_TYPES = 3;

/* A share of your team's HP in plain words: "about half". */
const shareWords = (share: number) => {
  if (share >= 0.95) return "all of it";
  if (share < 0.15) return "very little";

  const [, words] = [
    [0.25, "a quarter"],
    [1 / 3, "a third"],
    [0.5, "half"],
    [2 / 3, "two thirds"],
    [0.75, "three quarters"],
  ].reduce((closest, entry) =>
    Math.abs(Number(entry[0]) - share) < Math.abs(Number(closest[0]) - share)
      ? entry
      : closest,
  );

  return `about ${words}`;
};

/* What beating one of a type does to your best answers, in words. */
const answerCostWords = (answerCost: number) =>
  answerCost >= 1
    ? "Takes more than one of yours to beat"
    : answerCost >= 0.5
      ? "Your best answers lose most of their HP to one"
      : "Your best answers lose some HP to one";

/* Types tied with or behind the hardest are close calls, not "the one to watch". */
const CLEAR_LEAD = 0.1;

/* How much more than an average type one costs before it stands out. */
const STANDOUT_COST = 0.15;

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
 * cheaply, Knockout power which types your hardest hits knock out quickly,
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
  /*
   * The types to watch: they cost your best answers more than a scratch and
   * clearly more than a type usually does, hardest first. When the field is
   * evenly hard, none stands out.
   */
  const meanCost =
    byCost.reduce((sum, reading) => sum + reading.answerCost, 0) /
    Math.max(1, byCost.length);
  const toWatch = byCost.filter(
    (reading) =>
      reading.answerCost > battleCostLimits.strong &&
      reading.answerCost >= meanCost + STANDOUT_COST,
  );
  /* One type is named only when it clearly costs more than the next. */
  const clearLeader =
    toWatch[0] &&
    (!toWatch[1] || toWatch[0].answerCost - toWatch[1].answerCost >= CLEAR_LEAD)
      ? toWatch[0]
      : null;
  const teamHealthMetric: TeamAnalysisHealthMetric = {
    id: "team-health",
    line: !canRead
      ? missingLine
      : field.lagging.length
        ? [
            text(
              field.lagging.length === 1
                ? `${field.lagging[0].name} lags behind`
                : `${field.lagging.length} lag behind`,
            ),
          ]
        : clearLeader
          ? [text("Watch"), typePart(clearLeader.type)]
          : toWatch.length
            ? [text(`${toWatch.length} types to watch`)]
            : [text("No type to watch")],
    tip: !canRead
      ? missingTip
      : {
          rated: [
            getFieldRow(field, evidence.activeCount),
            {
              chip: "a third or less",
              detail: "Of your team's HP used up",
              subject: { text: "Strong" },
              tone: "ok",
            },
            {
              chip: "nearly all",
              detail: "Of your team's HP used up",
              subject: { text: "Weak" },
              tone: "danger",
            },
          ],
          yours: withRoughNote([
            {
              chip: shareWords(field.share),
              detail: "Of your team's HP used up beating six typical Pokémon",
              subject: { text: "HP used" },
              tone: statusTones[teamHealthStatus],
            },
            ...field.lagging.map(
              (pokemon): TeamAnalysisTipRow => ({
                chip: `Lv. ${pokemon.level}`,
                detail: `${field.level - pokemon.level} levels below your top (Lv. ${field.level})`,
                subject: { pokemon: pokemon.name },
                tone: "warn",
              }),
            ),
            ...(evidence.activeCount < field.theirCount
              ? [
                  {
                    chip: `${evidence.activeCount} of ${field.theirCount}`,
                    detail: `A full team has ${field.theirCount}; you have ${evidence.activeCount}`,
                    subject: { text: "Team size" },
                    tone: "warn" as const,
                  },
                ]
              : []),
            ...toWatch.slice(0, TIP_TYPES).map(
              (reading): TeamAnalysisTipRow => ({
                detail: answerCostWords(reading.answerCost),
                subject: { type: reading.type },
                tone: "danger",
              }),
            ),
            ...(toWatch.length > TIP_TYPES
              ? [
                  {
                    subject: {
                      text: `and ${toWatch.length - TIP_TYPES} more as hard`,
                    },
                  },
                ]
              : toWatch.length ||
                  !byCost.some(
                    (reading) => reading.answerCost > battleCostLimits.strong,
                  )
                ? []
                : [
                    {
                      subject: {
                        text: "No type stands out: they all cost about the same",
                      },
                    },
                  ]),
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
              detail:
                "Answered: your best Pokémon against it beats one without fainting",
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
    line: canRead
      ? [text(`${coveredCount} of ${total} types in two hits`)]
      : missingLine,
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
    title: "Knockout power",
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
