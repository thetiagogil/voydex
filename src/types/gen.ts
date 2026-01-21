// =============================================================================
// GENERATION
// =============================================================================

interface Generation {
  id: number;
  slug: string;
  name: string;
  start_year: number;
  end_year: number | null;
  new_pokemon_count: number;
  total_pokemon_count: number;
}

// =============================================================================
// GENERATION STATIC STATS (from generation_with_stats view)
// =============================================================================

interface GenerationStaticStats {
  gameCount: number;
  mainGameCount: number;
  remakeCount: number;
  enhancedCount: number;
}

// =============================================================================
// GENERATION USER STATS (from generation_user_stats view)
// =============================================================================

interface GenerationUserStats {
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

interface GenerationWithStats extends Generation {
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

interface GenerationWithGames extends Generation {
  region: BaseInfo;
  staticStats: GenerationStaticStats;
  userStats: GenerationUserStats | null;
  games: GameWithPlayStats[];
}

// =============================================================================
// GAME WITH PLAY STATS (for gen page game cards)
// =============================================================================

interface GameWithPlayStats {
  id: number;
  slug: string;
  name: string;
  type: GameType;
  releaseYear: number;
  regionalDexCount: number;
  region: BaseInfo;
  stats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
  };
}
