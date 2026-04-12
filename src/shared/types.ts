// =============================================================================
// BREADCRUMBS - Navigation breadcrumb item
// =============================================================================

export interface Breadcrumb {
  label: string;
  href: string;
  current?: boolean;
}

// =============================================================================
// BASE INFO - Common structure for entities with id, slug, name
// =============================================================================

export interface BaseInfo {
  id: number;
  slug: string;
  name: string;
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

// =============================================================================
// PLAY STATUS
// =============================================================================

export interface PlayStatusInfo extends BaseInfo {
  isTerminal: boolean;
  sortOrder: number;
}

// =============================================================================
// PLAY CATEGORY TYPES
// =============================================================================

export type PlayCategorySlug = "main-story" | "post-game" | "side-content";
