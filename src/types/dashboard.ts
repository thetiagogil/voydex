// =============================================================================
// DASHBOARD STATS
// =============================================================================

export interface DashboardStats {
  total_plays: number;
  active_plays: number;
  completed_plays: number;
  last_activity: string | null;
}

// =============================================================================
// GENERATION WITH USER STATS
// =============================================================================

export interface GenerationWithUserStats {
  id: number;
  slug: string;
  name: string;
  gameCount: number;
  userStats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
    gamesPlayed: number;
  };
}

// =============================================================================
// RECENT ACTIVITY ITEM
// =============================================================================

export interface RecentActivityItem {
  id: string;
  type: string;
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
  href: string;
}
