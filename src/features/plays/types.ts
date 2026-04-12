import type { BaseInfo, PlayStatusInfo } from "@/shared/types";

// =============================================================================
// PLAYS LIST ITEM (summary returned by /api/features/plays)
// =============================================================================

export interface PlaySummary {
  id: string;
  name: string;
  status: PlayStatusInfo;
  createdAt: string;
  updatedAt: string;
  teamSize: number;
  highestLevel: number;
  pokemonCaughtCount: number;
  completedProgressItems: number;
  totalProgressItems: number;
  regionalDexCount: number;
  pokemonTeam: PlaySummaryTeamMember[];
  game: PlaySummaryGame;
}

export interface PlaySummaryTeamMember {
  id: string;
  nickname: string | null;
  level: number;
  speciesId: number;
  species: BaseInfo | null;
  spriteUrl: string | null;
}

export interface PlaySummaryGame {
  id: number;
  slug: string;
  name: string;
  generation: BaseInfo;
  region: BaseInfo;
}
