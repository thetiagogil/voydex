import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { Generation, Type } from "@/modules/reference/types";

export type TeamAnalysisEffectiveness =
  | "immune"
  | "neutral"
  | "resistant"
  | "unknown"
  | "weak";

export type TeamAnalysisDefensiveCell = {
  effectiveness: TeamAnalysisEffectiveness;
  memberId: string;
  memberName: string;
  multiplier: number | null;
  multiplierLabel: string;
};

export type TeamAnalysisDefensiveRow = {
  attackingType: Type;
  cells: TeamAnalysisDefensiveCell[];
  immuneCount: number;
  /* Hits two or more of the team super effectively, or one of them 4×. */
  isPressure: boolean;
  resistCount: number;
  weakCount: number;
};

export type TeamAnalysisCoverageRow = {
  defendingType: Type;
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

export type TeamAnalysisHealthMetric = {
  id: "move-coverage" | "team-health" | "threat-response" | "weakness-control";
  line: TeamAnalysisHealthLinePart[];
  /* Why the card reads the way it does, shown in its tooltip. */
  reason: string;
  status: TeamAnalysisHealthStatus;
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
};

export type MainlinePlayTeamAnalysisData = {
  analysis: TeamAnalysisModel | null;
};

export type MainlinePlayTeamAnalysisRows = {
  generation: Generation | null;
  teamRows: MainlinePlayTeamRows;
};
