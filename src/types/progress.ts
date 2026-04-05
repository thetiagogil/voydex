// =============================================================================
// PROGRESS CATEGORY
// =============================================================================

export interface ProgressCategory {
  id: number;
  slug: string;
  name: string;
  sortOrder: number;
}

// =============================================================================
// PROGRESS ITEM TYPE
// =============================================================================

export interface ProgressItemType {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// PROGRESS ITEM
// =============================================================================

export interface ProgressItem {
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
// PROGRESS OPPONENT
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

export interface ProgressOpponent {
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
// PROGRESS BADGE
// =============================================================================

export interface ProgressBadge {
  id: number;
  slug: string;
  name: string;
  spriteUrl: string | null;
  sortOrder: number;
}

// =============================================================================
// PROGRESS COLLECTIBLE
// =============================================================================

export interface ProgressCollectible {
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
// ITEM CHOICE OPTION
// =============================================================================

export interface ProgressChoiceOption {
  id: number;
  slug: string;
  name: string;
  pokemonSpeciesId: number | null;
  pokemonFormId: number | null;
  sortOrder: number;
}

// =============================================================================
// PLAY-LEVEL PROGRESS (per-play state)
// =============================================================================

export interface PlayProgressCategory {
  id: number;
  slug: string;
  name: string;
  sortOrder: number;
  totalItems: number;
  completedItems: number;
}

export interface PlayProgressItem {
  id: number;
  slug: string;
  name: string;
  description: string | null;
  sortOrder: number;
  isCompleted: boolean;
  completedAt: string | null;
  // Enrichment from ref tables (populated when needed)
  opponent: ProgressOpponent | null;
  badge: ProgressBadge | null;
  choiceOptions: ProgressChoiceOption[] | null;
  selectedChoiceId: number | null;
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
