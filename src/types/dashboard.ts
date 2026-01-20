// =============================================================================
// DASHBOARD STATS
// =============================================================================

export interface DashboardStats {
  total_plays: number;
  active_plays: number;
  completed_plays: number;
  unique_games_played: number;
  generations_played: number;
  total_unique_species: number;
  total_shinies: number;
  last_activity: string | null;
}

// =============================================================================
// GENERATION WITH USER STATS
// =============================================================================

export interface GenerationWithUserStats {
  id: number;
  slug: string;
  name: string;
  startYear: number;
  endYear: number | null;
  newPokemonCount: number;
  totalPokemonCount: number;
  gameCount: number;
  mainGameCount: number;
  remakeCount: number;
  enhancedCount: number;
  userStats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
    gamesPlayed: number;
    uniqueSpeciesCaught: number;
    lastPlayedAt: string | null;
  };
}

// =============================================================================
// RECENT ACTIVITY ITEM
// =============================================================================

export interface RecentActivityItem {
  id: string;
  type: "progress" | "team_add";
  message: string;
  activityAt: string;
  play: {
    id: string;
    name: string;
  };
  game: {
    slug: string;
    name: string;
  };
  generation: {
    id: number;
    slug: string;
  };
  category: {
    id: number;
    slug: string;
    name: string;
  } | null;
  pokemon: {
    speciesId: number;
    speciesSlug: string;
    formId: number;
    formSlug: string;
    name: string;
    spriteUrl: string;
  } | null;
  href: string;
}
