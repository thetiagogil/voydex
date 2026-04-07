// =============================================================================
// TRACKING CATEGORY
// =============================================================================

export interface TrackingCategory {
  id: number;
  slug: string;
  name: string;
  sortOrder: number;
}

// =============================================================================
// TRACKING ITEM TYPE
// =============================================================================

export interface TrackingItemType {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// TRACKING ITEM
// =============================================================================

export interface TrackingItem {
  id: number;
  slug: string;
  name: string;
  description: string | null;
  versionGroupId: number;
  gameId: number | null;
  categoryId: number;
  itemTypeId: number;
  sortOrder: number;
  isOptional: boolean;
}

// =============================================================================
// TRACKING OPPONENT
// =============================================================================

export type OpponentRole =
  | "gym_leader"
  | "elite_four"
  | "champion"
  | "trial_captain"
  | "kahuna"
  | "titan"
  | "team_star_boss"
  | "story_boss";

export interface TrackingOpponent {
  id: number;
  slug: string;
  name: string;
  opponentRole: OpponentRole;
  specialtyType1: { id: number; slug: string; name: string } | null;
  specialtyType2: { id: number; slug: string; name: string } | null;
  spriteUrl: string | null;
  sortOrder: number;
}

// =============================================================================
// TRACKING BADGE
// =============================================================================

export interface TrackingBadge {
  id: number;
  slug: string;
  name: string;
  spriteUrl: string | null;
  sortOrder: number;
}

// =============================================================================
// TRACKING COLLECTIBLE
// =============================================================================

export interface TrackingCollectible {
  id: number;
  slug: string;
  name: string;
  collectibleType: string;
  totalCount: number | null;
  spriteUrl: string | null;
}

// =============================================================================
// COLLECTIBLE ENTRY
// =============================================================================

export interface CollectibleEntry {
  id: number;
  slug: string;
  name: string;
  locationName: string | null;
  subLocationName: string | null;
  description: string | null;
  sortOrder: number;
}

// =============================================================================
// ITEM DECISION OPTION
// =============================================================================

export interface TrackingDecisionOption {
  id: number;
  slug: string;
  name: string;
  pokemonSpeciesId: number | null;
  pokemonFormId: number | null;
  sortOrder: number;
}

// =============================================================================
// PLAY-LEVEL TRACKING (per-play state)
// =============================================================================

export interface PlayTrackingCategory {
  id: number;
  slug: string;
  name: string;
  sortOrder: number;
  totalItems: number;
  completedItems: number;
}

export interface PlayTrackingItem {
  id: number;
  slug: string;
  name: string;
  description: string | null;
  itemTypeSlug: string | null;
  itemTypeName: string | null;
  sortOrder: number;
  isCompleted: boolean;
  completedAt: string | null;
  // Enrichment from ref tables (populated when needed)
  opponent: TrackingOpponent | null;
  badge: TrackingBadge | null;
  decisionOptions: TrackingDecisionOption[] | null;
  selectedDecisionId: number | null;
  pokemonRefs: Array<{
    speciesId: number;
    formId: number;
    speciesName: string;
    formName: string;
    spriteUrl: string | null;
  }> | null;
}

// =============================================================================
// PLAY COLLECTIBLE (per-play collectible state)
// =============================================================================

export interface PlayCollectible {
  id: number;
  slug: string;
  name: string;
  collectibleType: string;
  totalCount: number | null;
  spriteUrl: string | null;
  entries: PlayCollectibleEntry[];
  collectedCount: number;
}

export interface PlayCollectibleEntry {
  id: number;
  slug: string;
  name: string;
  locationName: string | null;
  subLocationName: string | null;
  description: string | null;
  sortOrder: number;
  isCollected: boolean;
}
