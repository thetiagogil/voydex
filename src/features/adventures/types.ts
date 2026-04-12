import type { BaseInfo, PlayStatusInfo } from "@/shared/types";

export interface AdventuresPlay {
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
}

export interface AdventuresPlayTeamMember {
  id: string;
  nickname: string | null;
  level: number;
  speciesId: number;
  species: BaseInfo | null;
  spriteUrl: string | null;
}

export interface AdventuresPlayGame {
  id: number;
  slug: string;
  name: string;
  generation: BaseInfo;
  region: BaseInfo;
}

export interface AdventuresPlayOverview extends AdventuresPlay {
  pokemonTeam: AdventuresPlayTeamMember[];
  game: AdventuresPlayGame;
}
