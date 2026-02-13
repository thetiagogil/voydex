// =============================================================================
// GENERATION
// =============================================================================

import type { BaseInfo } from "./common";
import type { GameType } from "./game";

export interface Generation {
  id: number;
  slug: string;
  name: string;
  startYear: number;
  endYear: number | null;
  newPokemonCount: number;
  totalPokemonCount: number;
}

// =============================================================================
// GENERATION STATIC STATS (from generation_with_stats view)
// =============================================================================

export interface GenerationStaticStats {
  gameCount: number;
  mainGameCount: number;
  remakeCount: number;
  enhancedCount: number;
}

// =============================================================================
// GENERATION USER STATS (from generation_user_stats view)
// =============================================================================

export interface GenerationUserStats {
  totalPlays: number;
  activePlays: number;
  completedPlays: number;
  gamesPlayed: number;
  uniqueSpeciesCaught: number;
  lastPlayedAt: string | null;
}

// =============================================================================
// GENERATION WITH STATS (from dashboard service)
// =============================================================================

export interface GenerationWithStats extends Generation {
  gameCount: number;
  stats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
  };
}

// =============================================================================
// GENERATION WITH FULL DATA (for gen page)
// =============================================================================

export interface GenerationWithGames extends Generation {
  staticStats: GenerationStaticStats;
  userStats: GenerationUserStats | null;
  games: GameWithPlayStats[];
}

// =============================================================================
// GAME WITH PLAY STATS (for gen page game cards)
// =============================================================================

export interface GameWithPlayStats {
  id: number;
  slug: string;
  name: string;
  type: GameType;
  releaseYear: number;
  regionalDexCount: number;
  coverUrl: string | null;
  region: BaseInfo;
  stats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
  };
}
