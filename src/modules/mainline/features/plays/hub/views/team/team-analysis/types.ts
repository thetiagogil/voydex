import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRows,
} from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
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
  multiplier: number | null;
  multiplierLabel: string;
};

export type TeamAnalysisDefensiveRow = {
  attackingType: Type;
  cells: TeamAnalysisDefensiveCell[];
  immuneCount: number;
  resistCount: number;
  weakCount: number;
};

export type TeamAnalysisCoverageMove = {
  damageClass: string;
  id: number;
  name: string;
  receivesStab: boolean;
  type: Type;
};

export type TeamAnalysisCoverageCell = {
  memberId: string;
  moves: TeamAnalysisCoverageMove[];
};

export type TeamAnalysisCoverageRow = {
  cells: TeamAnalysisCoverageCell[];
  coveredByMemberCount: number;
  defendingType: Type;
  moveCount: number;
  stabMoveCount: number;
};

export type TeamAnalysisEvidence = {
  abilityRecordedCount: number | null;
  activeCount: number;
  heldItemRecordedCount: number | null;
  possibleActiveCount: number;
  possibleMoveCount: number;
  recordedMoveCount: number;
  typedMemberCount: number;
};

export type TeamAnalysisHealthStatus =
  | "limited-data"
  | "moderate"
  | "weak"
  | "strong";

export type TeamAnalysisHealthMetric = {
  evidence: string;
  explanation: {
    description: string;
    note?: string;
    rules: string[];
  };
  id: "move-coverage" | "team-health" | "threat-response" | "weakness-control";
  status: TeamAnalysisHealthStatus;
  summary: string;
  title: string;
};

export type TeamAnalysisModel = {
  coverageRows: TeamAnalysisCoverageRow[];
  defensiveRows: TeamAnalysisDefensiveRow[];
  evidence: TeamAnalysisEvidence;
  generation: Generation;
  healthMetrics: TeamAnalysisHealthMetric[];
  lineupLabel: string;
  mechanics: GameMechanicsProfile;
  members: MainlinePlayTeamMember[];
};

export type MainlinePlayTeamAnalysisData = {
  analysis: TeamAnalysisModel | null;
  play: MainlinePlaySummary;
};

export type MainlinePlayTeamAnalysisRows = {
  generation: Generation | null;
  teamRows: MainlinePlayTeamRows;
};
