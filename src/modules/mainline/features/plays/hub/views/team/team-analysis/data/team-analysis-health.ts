import type { Type } from "@/modules/reference/types";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisEvidence,
  TeamAnalysisHealthLinePart,
  TeamAnalysisHealthMetric,
  TeamAnalysisHealthStatus,
  TeamAnalysisHealthTip,
  TeamAnalysisTipRow,
  TeamAnalysisVerdict,
} from "../types";
import { battleCostLimits } from "@/modules/mainline/features/plays/hub/data/team-battlers";
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

/* A card's bar, kept between empty and full. */
const toFill = (value: number) => Math.min(1, Math.max(0, value));

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

/* How many of the types fit in a tip before the rest are counted. */
const TIP_TYPES = 3;

/* Types tied with or behind the hardest are close calls, not "the one to watch". */
const CLEAR_LEAD = 0.1;

/* How much more than an average type one costs before it stands out. */
const STANDOUT_COST = 0.15;

/* Three types at most, then how many more. */
const firstTypes = (
  readings: TeamFieldTypeReading[],
  toRow: (reading: TeamFieldTypeReading) => TeamAnalysisTipRow,
): TeamAnalysisTipRow[] => [
  ...readings.slice(0, TIP_TYPES).map(toRow),
  ...(readings.length > TIP_TYPES
    ? [
        {
          more: readings.length - TIP_TYPES,
          subject: { text: `and ${readings.length - TIP_TYPES} more` },
        },
      ]
    : []),
];

/* Team health in general words: how the team holds up, no figures. */
const teamHealthSummaries: Record<
  Exclude<TeamAnalysisHealthStatus, "limited-data">,
  string
> = {
  moderate: "Your team holds its own against most types, but not easily.",
  strong: "Your team handles every type comfortably.",
  weak: "Your team struggles against many types.",
};

/* How the whole team holds up against the yardstick. */
const readTeamHealthStatus = (
  field: TeamFieldReading,
): Exclude<TeamAnalysisHealthStatus, "limited-data"> =>
  field.share <= battleCostLimits.strong
    ? "strong"
    : field.share >= battleCostLimits.challenging
      ? "weak"
      : "moderate";

/* A shared weak spot outclasses two of yours, or your only one. */
const isSharedWeakness = (
  reading: TeamFieldTypeReading,
  evidence: TeamAnalysisEvidence,
) => reading.beats.length >= Math.min(2, evidence.activeCount);

/*
 * Why a type is slow to knock out: no super-effective move at all, only
 * super-effective moves outside your Pokémon's own types (no STAB), or
 * super-effective moves that still aren't strong enough.
 */
const getSlowReason = (coverage: TeamAnalysisCoverageRow | undefined) => {
  if (!coverage?.hits.length) return "No super-effective move";

  return coverage.hits.some((hit) => hit.moves.some((move) => move.stab))
    ? "Super effective, but not strong enough for two hits"
    : "Super effective, but no move of the user's own type (STAB)";
};

/*
 * The four Team health cards, read with the games' damage formula against
 * a yardstick of six typical Pokémon at your level (`readTeamField`): Team
 * health is how the team holds up overall, Threat response which types your
 * best answers beat, Knockout power which types your hardest hits knock out
 * quickly, and Weakness control which types outclass several of yours with
 * nothing to answer them. Each tooltip says it in a line, lists what in your
 * team leads to it, then how the card is rated.
 */
export const buildTeamAnalysisHealth = ({
  coverageRows = [],
  evidence,
  field,
}: {
  /* The move coverage rows, for why a type is slow to knock out. */
  coverageRows?: TeamAnalysisCoverageRow[];
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
  const missingTip: TeamAnalysisHealthTip = {
    rows: [],
    rule: null,
    scale: [],
    summary: typingComplete
      ? "This Play's generation has no type chart to read."
      : `Every Pokémon needs its typing for this reading; ${evidence.typedMemberCount} of ${evidence.activeCount} have one.`,
  };
  const roughNote = getTeamFieldRoughNote(field);
  /* What the team leaves out of the math closes what was found. */
  const withRoughNote = (rows: TeamAnalysisTipRow[]) =>
    roughNote ? [...rows, { subject: { text: roughNote } }] : rows;
  const total = field.types.length;
  /* Hardest first: what each type costs your best answers. */
  const byCost = [...field.types].sort(
    (left, right) => right.answerCost - left.answerCost,
  );
  /* Hardest first for the whole team, as Team health reads it. */
  const byTeamCost = [...field.types].sort(
    (left, right) => right.sharedCost - left.sharedCost,
  );

  const teamHealthStatus: TeamAnalysisHealthStatus = canRead
    ? readTeamHealthStatus(field)
    : "limited-data";
  /*
   * The types to watch: they cost your whole team more than a scratch and
   * clearly more than a type usually does, hardest first. When the field is
   * evenly hard, none stands out.
   */
  const meanCost =
    byTeamCost.reduce((sum, reading) => sum + reading.sharedCost, 0) /
    Math.max(1, byTeamCost.length);
  const toWatch = byTeamCost.filter(
    (reading) =>
      reading.sharedCost > battleCostLimits.strong &&
      reading.sharedCost >= meanCost + STANDOUT_COST,
  );
  /* One type is named only when it clearly costs more than the next. */
  const clearLeader =
    toWatch[0] &&
    (!toWatch[1] || toWatch[0].sharedCost - toWatch[1].sharedCost >= CLEAR_LEAD)
      ? toWatch[0]
      : null;
  const yardstick = `Measured against a yardstick, not a real trainer: six typical Pokémon of mixed types, as strong as yours, at ${
    field.unrecorded.levels >= evidence.activeCount
      ? `Lv. ${field.level} (your levels aren't recorded)`
      : `your top level (Lv. ${field.level})`
  }. The types are shared across your whole team, so every Pokémon counts.`;
  const teamHealthMetric: TeamAnalysisHealthMetric = {
    /* What beating the yardstick leaves of your team: the less it costs, the fuller. */
    fill: canRead ? toFill(1 - field.share) : null,
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
    tip:
      teamHealthStatus === "limited-data"
        ? missingTip
        : {
            rows: withRoughNote([
              ...field.lagging.map((pokemon): TeamAnalysisTipRow => ({
                chip: `Lv. ${pokemon.level}`,
                detail: `${field.level - pokemon.level} levels below your top (Lv. ${field.level})`,
                subject: { pokemon: pokemon.name },
                tone: "warn",
              })),
              ...(evidence.activeCount < field.theirCount
                ? [
                    {
                      chip: `${evidence.activeCount} of ${field.theirCount}`,
                      detail: `A full team has ${field.theirCount}`,
                      subject: { text: "Team size" },
                      tone: "warn" as const,
                    },
                  ]
                : []),
              ...firstTypes(toWatch, (reading) => ({
                detail: "Harder to beat than the rest",
                subject: { type: reading.type },
                tone: "danger",
              })),
            ]),
            rule: yardstick,
            scale: [
              { chip: "struggles", label: "Weak", tone: "danger" },
              { chip: "with effort", label: "Moderate", tone: "warn" },
              { chip: "easily", label: "Strong", tone: "ok" },
            ],
            summary: teamHealthSummaries[teamHealthStatus],
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
    fill: canRead ? toFill(total ? answeredCount / total : 1) : null,
    id: "threat-response",
    line: canRead
      ? [text(`${answeredCount} of ${total} answered`)]
      : missingLine,
    tip: canRead
      ? {
          rows: withRoughNote(
            firstTypes(openReadings, (reading) => ({
              detail: "Your best Pokémon against it faints beating one",
              subject: { type: reading.type },
              tone: "danger",
            })),
          ),
          rule: "A type is answered when your best Pokémon against it beats one without fainting.",
          scale: [
            { chip: "fewer", label: "Weak", tone: "danger" },
            { chip: "3 in 4", label: "Moderate", tone: "warn" },
            { chip: "all", label: "Strong", tone: "ok" },
          ],
          summary: openReadings.length
            ? `${answeredCount} of ${total} types answered.`
            : `All ${total} types answered.`,
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
  const coverageBySlug = new Map(
    coverageRows.map((row) => [row.defendingType.slug, row]),
  );
  const moveCoverageStatus: TeamAnalysisHealthStatus = canRead
    ? getRatioStatus({
        ...thresholds.coverage,
        ratio: total ? coveredCount / total : 0,
      })
    : "limited-data";
  const moveCoverageMetric: TeamAnalysisHealthMetric = {
    fill: canRead ? toFill(total ? coveredCount / total : 0) : null,
    id: "move-coverage",
    line: canRead
      ? [text(`${coveredCount} of ${total} types in two hits`)]
      : missingLine,
    tip: canRead
      ? {
          rows: withRoughNote([
            ...firstTypes(slowTypes, (reading) => ({
              detail: getSlowReason(coverageBySlug.get(reading.type.slug)),
              subject: { type: reading.type },
              tone: "warn",
            })),
            ...(field.unrecorded.moves
              ? [
                  {
                    subject: {
                      text: "Yours with no damaging move hit with their own types.",
                    },
                  },
                ]
              : []),
          ]),
          rule: "A type counts when your hardest hit knocks one out in two hits or fewer.",
          scale: [
            { chip: "fewer", label: "Weak", tone: "danger" },
            {
              chip: `${getCountForRatio(total, thresholds.coverage.moderateAt)}+`,
              label: "Moderate",
              tone: "warn",
            },
            {
              chip: `${getCountForRatio(total, thresholds.coverage.strongAt)}+`,
              label: "Strong",
              tone: "ok",
            },
          ],
          summary: slowTypes.length
            ? `${coveredCount} of ${total} types fall in two hits.`
            : `All ${total} types fall in two hits.`,
        }
      : missingTip,
    status: moveCoverageStatus,
    title: "Knockout power",
  };

  /* A shared weak spot outclasses two of yours, or your only one. */
  const isAlone = evidence.activeCount === 1;
  const sharedWords = isAlone ? "your Pokémon" : "two or more of yours";
  const sharedPronoun = isAlone ? "it" : "them";
  const pressureReadings = byCost.filter((reading) =>
    isSharedWeakness(reading, evidence),
  );
  const openPressure = pressureReadings.filter(
    (reading) => !isAnswered(reading),
  );
  const weaknessControlMetric: TeamAnalysisHealthMetric = {
    /* The shared weaknesses with an answer; full when nothing is shared. */
    fill: !canRead
      ? null
      : toFill(
          pressureReadings.length
            ? 1 - openPressure.length / pressureReadings.length
            : 1,
        ),
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
          rows: withRoughNote(
            firstTypes(pressureReadings, (reading) => {
              const open = !isAnswered(reading);

              return {
                chip: open ? "Unanswered" : "Answered",
                detail: `Beats ${joinTeamAnalysisList(reading.beats, "and")}`,
                subject: { type: reading.type },
                tone: open ? "danger" : "ok",
              };
            }),
          ),
          rule: `A shared weakness is a type that hits ${sharedWords} super effectively and beats ${sharedPronoun} one on one.`,
          scale: [
            { chip: "more", label: "Weak", tone: "danger" },
            { chip: "one", label: "Moderate", tone: "warn" },
            { chip: "none open", label: "Strong", tone: "ok" },
          ],
          summary: pressureReadings.length
            ? `${pressureReadings.length} shared ${
                pressureReadings.length === 1 ? "weakness" : "weaknesses"
              }, ${openPressure.length ? `${openPressure.length} unanswered` : "all answered"}.`
            : `No type hits ${sharedWords} super effectively and beats ${sharedPronoun} one on one.`,
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

/* Below this many Pokémon the verdict says it is early. */
const SMALL_TEAM = 3;

/*
 * The verdict above the four cards: how the team holds up, in one plain
 * sentence, then the one thing to do first, so the reading never opens on
 * four badges alone. The first thing is the worst of what the cards found:
 * a shared weakness nothing answers, then a Pokémon far below the rest,
 * then slow knockouts, then any type left unanswered. A team of one or two
 * is only told it is early. Null while the team can't be read.
 */
export const buildTeamAnalysisVerdict = ({
  evidence,
  field,
}: {
  evidence: TeamAnalysisEvidence;
  field: TeamFieldReading;
}): TeamAnalysisVerdict | null => {
  const typingComplete =
    evidence.activeCount > 0 &&
    evidence.typedMemberCount === evidence.activeCount;

  if (!typingComplete || !field.types.length) return null;

  const status = readTeamHealthStatus(field);

  /* A Play that has just begun: say it is early, not that the team fails. */
  if (evidence.activeCount < SMALL_TEAM) {
    return {
      next: [text("Add the Pokémon you catch and this reading fills in.")],
      status,
      summary:
        evidence.activeCount === 1
          ? "It's early: one Pokémon can't cover much yet."
          : `It's early: ${evidence.activeCount} Pokémon can't cover much yet.`,
    };
  }

  const open = [...field.types]
    .sort((left, right) => right.answerCost - left.answerCost)
    .filter((reading) => !isAnswered(reading));
  const sharedOpen = open.find((reading) =>
    isSharedWeakness(reading, evidence),
  );
  const slowCount = field.types.filter(
    (reading) => reading.hitsToKnockOut > COVERAGE_HITS,
  ).length;

  const next = sharedOpen
    ? [
        text("Nothing answers"),
        typePart(sharedOpen.type),
        text(
          evidence.activeCount === 1
            ? "and it beats your Pokémon: start there."
            : "and it beats several of yours: start there.",
        ),
      ]
    : field.lagging.length
      ? [
          text(
            `Start by levelling up ${joinTeamAnalysisList(
              field.lagging.map((pokemon) => pokemon.name),
              "and",
            )}, well below your top level.`,
          ),
        ]
      : slowCount > field.types.length / 2
        ? [
            text(
              "Start with stronger moves: most types take more than two hits.",
            ),
          ]
        : open.length
          ? [
              text(
                `Start with the ${open.length} ${
                  open.length === 1 ? "type" : "types"
                } nothing in your team answers.`,
              ),
            ]
          : [text("Nothing needs fixing first.")];

  return { next, status, summary: teamHealthSummaries[status] };
};
