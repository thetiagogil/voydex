import type { BaseInfo, PlayStatusInfo } from "@/shared/types";

export interface PlaysPlay {
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

export interface PlaysPlayTeamMember {
  id: string;
  nickname: string | null;
  level: number;
  speciesId: number;
  species: BaseInfo | null;
  spriteUrl: string | null;
}

export interface PlaysPlayGame {
  id: number;
  slug: string;
  name: string;
  generation: BaseInfo;
  region: BaseInfo;
}

export interface PlaysPlayOverview extends PlaysPlay {
  pokemonTeam: PlaysPlayTeamMember[];
  game: PlaysPlayGame;
}
