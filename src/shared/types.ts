// =============================================================================
// BASE INFO - Common structure for entities with id, slug, name
// =============================================================================

export interface BaseInfo {
  id?: number;
  slug?: string;
  name?: string;
}

// =============================================================================
// USER STATS - Common structure for user statistics
// =============================================================================

export interface UserStats {
  totalPlays: number;
  activePlays: number;
  completedPlays: number;
}

// =============================================================================
// COLOR VARIANT - Structure for defining color variants used across the app
// =============================================================================

export interface ColorVariant {
  text?: string;
  icon?: string;
  bg?: string;
  bgSolid?: string;
  border?: string;
  hover?: string;
}
