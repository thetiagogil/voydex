// =============================================================================
// GAME TYPE
// =============================================================================

import type { BaseInfo } from "./common";
import type { PlayStatus } from "./play";

export type GameType = "main" | "remake" | "enhanced" | "dlc" | "spin-off";

// =============================================================================
// GAME
// =============================================================================

export interface Game {
  id: number;
  slug: string;
  name: string;
  type: GameType | null;
  typeId: number;
  generationId: number;
  regionId: number;
  versionGroupId: number;
  regionalDexCount: number;
  nationalDexCount: number;
  releaseYear: number;
  createdAt: string;
  coverUrl: string | null;
  generation: BaseInfo;
  region: BaseInfo;
}

// =============================================================================
// GAME WITH PLAYS (from getGame service)
// =============================================================================

export interface GameWithPlays extends Game {
  plays: GamePlaySummary[];
  stats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
    totalPokemonCaught: number;
  };
}

export interface GamePlaySummary {
  id: string;
  name: string;
  status: PlayStatus;
  createdAt: string;
  updatedAt: string;
  teamSize: number;
  highestLevel: number;
  pokemonCaughtCount: number;
  completedProgressItems: number;
  totalProgressItems: number;
  regionalDexCount: number;
  pokemonTeam: {
    id: string;
    nickname: string | null;
    level: number;
    speciesId: number;
    species: BaseInfo | null;
    spriteUrl: string | null;
  }[];
  game: Game;
}

// =============================================================================
// GAME WITH FULL DATA (for game page)
// =============================================================================

export interface GameWithFullData extends Game {
  type: GameType;
  plays: GamePlaySummary[];
  staticStats: {
    progressCategoryCount: number;
    progressItemCount: number;
  };
  userStats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
    totalPokemonCaught: number;
  };
}
