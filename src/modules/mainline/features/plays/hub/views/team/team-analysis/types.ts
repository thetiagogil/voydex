import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { TypeMatchupRow } from "@/modules/mainline/shared/data/type-matchup-rows";
import type { Generation, Type } from "@/modules/reference/types";

import type { StoryMatchupsModel } from "./data/story-matchups-model";

/* One attacking type against the team, as Mainline's shared matchups draw it. */
export type TeamAnalysisDefensiveRow = TypeMatchupRow<Type>;

/* One of yours and the recorded moves it hits a type super effectively with. */
export type TeamAnalysisCoverageHit = {
  imageUrl: string | null;
  memberId: string;
  memberName: string;
  /* `stab` when the move shares a type with its user. */
  moves: { name: string; stab: boolean; typeSlug: string }[];
};

export type TeamAnalysisCoverageRow = {
  defendingType: Type;
  /* Who hits it and with what, in team order. */
  hits: TeamAnalysisCoverageHit[];
  /* Recorded damaging moves across the team that hit this type super effectively. */
  moveCount: number;
};

export type TeamAnalysisEvidence = {
  activeCount: number;
  possibleMoveCount: number;
  recordedMoveCount: number;
  typedMemberCount: number;
};

export type TeamAnalysisHealthStatus =
  | "limited-data"
  | "moderate"
  | "weak"
  | "strong";

/* A card's specific line: words, and a type shown as its dot and name. */
export type TeamAnalysisHealthLinePart = { text: string } | { type: Type };

export type TeamAnalysisTipTone = "danger" | "ok" | "warn";

/*
 * One line of a card's tooltip: who it is about (a Pokémon of yours by name,
 * a type, or plain words), what is said of it, and a figure on a chip.
 */
export type TeamAnalysisTipRow = {
  chip?: string;
  detail?: string;
  subject: { pokemon: string } | { text: string } | { type: Type };
  tone?: TeamAnalysisTipTone;
};

/*
 * Why a card reads the way it does: a line saying it, what in your team
 * leads to it, then how the card is rated (its rule and where Strong,
 * Moderate and Weak start).
 */
export type TeamAnalysisHealthTip = {
  rows: TeamAnalysisTipRow[];
  rule: string | null;
  scale: { chip: string; label: string; tone: TeamAnalysisTipTone }[];
  summary: string;
};

export type TeamAnalysisHealthMetric = {
  id: "move-coverage" | "team-health" | "threat-response" | "weakness-control";
  line: TeamAnalysisHealthLinePart[];
  status: TeamAnalysisHealthStatus;
  /* Shown in the card's tooltip. */
  tip: TeamAnalysisHealthTip;
  title: string;
};

export type TeamAnalysisModel = {
  /* Whether this game has abilities, which the type reading leaves out. */
  abilitiesApply: boolean;
  coverageRows: TeamAnalysisCoverageRow[];
  defensiveRows: TeamAnalysisDefensiveRow[];
  evidence: TeamAnalysisEvidence;
  generation: Generation;
  healthMetrics: TeamAnalysisHealthMetric[];
  /* Whether this game has held items, which the type reading leaves out. */
  heldItemsApply: boolean;
  lineupLabel: string;
  members: MainlinePlayTeamMember[];
  /* What the team leaves out of the health cards' battle math; null when nothing. */
  roughNote: string | null;
};

export type TeamAnalysisReading = "overall" | "story";

export type MainlinePlayTeamAnalysisData = {
  analysis: TeamAnalysisModel | null;
  reading: TeamAnalysisReading;
  /* Read only for the Story matchups reading. */
  storyMatchups: StoryMatchupsModel | null;
};

export type MainlinePlayTeamAnalysisRows = {
  generation: Generation | null;
  teamRows: MainlinePlayTeamRows;
};
