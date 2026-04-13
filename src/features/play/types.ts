import type { BaseInfo, PlayStatusInfo } from "@/shared/types";

// =============================================================================
// PLAY GAME
// =============================================================================

export interface PlayGame {
  id: number;
  slug: string;
  name: string;
  type: string;
  versionGroupId: number;
  generation: BaseInfo;
  region: BaseInfo;
  availableDlcs?: DlcVersionGroup[];
}

// =============================================================================
// PLAY
// =============================================================================

export interface Play {
  id: string;
  userId: string;
  name: string;
  status: PlayStatusInfo;
  notes: string | null;
  includePokedex: boolean;
  includeOtherPokedex: boolean;
  includeMythicalPokemon: boolean;
  createdAt: string;
  updatedAt: string;
  game: PlayGame;
  selectedDlcs?: number[];
}

// =============================================================================
// PLAY STATS
// =============================================================================
// PLAY POKEMON (Team Member)
// =============================================================================

export interface PlayPokemon {
  id: string;
  playId: string;
  position: number;
  nickname: string | null;
  level: number;
  gender: string | null;
  isShiny: boolean;
  species: BaseInfo;
  form: BaseInfo & { pokemonDbSpriteSlug: string | null };
  types: BaseInfo[];
  nature: BaseInfo | null;
  ability: BaseInfo | null;
  moves: (BaseInfo | null)[];
}

// =============================================================================
// TRACKING TYPES
// =============================================================================

export interface PlayTrackingCategory {
  id: number;
  slug: string;
  name: string;
  sortOrder: number;
  totalItems: number;
  completedItems: number;
  versionGroupId: number;
  versionGroupName: string;
  isDlc: boolean;
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

export interface TrackingOpponent {
  id: number;
  slug: string;
  name: string;
  opponentRole: string;
  specialtyType1: BaseInfo | null;
  specialtyType2: BaseInfo | null;
  spriteUrl: string | null;
  sortOrder: number;
}

export interface TrackingBadge {
  id: number;
  slug: string;
  name: string;
  spriteUrl: string | null;
  sortOrder: number;
}

export interface TrackingDecisionOption {
  id: number;
  slug: string;
  name: string;
  pokemonSpeciesId: number | null;
  pokemonFormId: number | null;
  sortOrder: number;
}

// =============================================================================
// COLLECTIBLE TYPES
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
  versionGroupId: number;
  versionGroupName: string;
  isDlc: boolean;
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

// =============================================================================
// COLLECTIBLE SUMMARY (without entries — used in overview)
// =============================================================================

export interface PlayCollectibleSummary {
  id: number;
  slug: string;
  name: string;
  collectibleType: string;
  totalCount: number | null;
  spriteUrl: string | null;
  collectedCount: number;
  totalEntries: number;
  versionGroupId: number;
  versionGroupName: string;
  isDlc: boolean;
}

// =============================================================================
// POKEDEX TYPES
// =============================================================================

export interface PlayPokedexEntry {
  pokedexEntryId: number;
  pokedexNumber: number;
  pokedex: {
    id: number;
    slug: string;
    name: string;
    kind: string;
  };
  speciesId: number;
  formId: number;
  species: BaseInfo & { isLegendary: boolean; isMythical: boolean };
  form: BaseInfo & { pokemonDbSpriteSlug: string | null };
  isSeen: boolean;
  isCaught: boolean;
  versionGroupId: number;
  versionGroupName: string;
  isDlc: boolean;
}

export interface PlayPokedexSummary {
  pokedexId: number;
  pokedexSlug: string;
  pokedexName: string;
  pokedexKind: string;
  totalEntries: number;
  seenCount: number;
  caughtCount: number;
  entries: PlayPokedexEntry[];
  versionGroupId: number;
  versionGroupName: string;
  isDlc: boolean;
}

// =============================================================================
// COMPLETION
// =============================================================================

export interface PlayCompletionData {
  percentage: number;
  isFullyComplete: boolean;
}

// =============================================================================
// DLC
// =============================================================================

export interface DlcVersionGroup {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// PLAY OVERVIEW — single response for the Play page
// =============================================================================

export interface PlayOverview {
  play: Play;
  pokemonTeam: PlayPokemon[];
  trackingCategories: PlayTrackingCategory[];
  collectiblesSummary: PlayCollectibleSummary[];
  completion: PlayCompletionData;
}

// =============================================================================
// DECISION
// =============================================================================

export interface DecisionOption {
  id: number;
  slug: string;
  name: string;
  pokemon_species_id: number | null;
  pokemon_form_id: number | null;
  pokemondb_sprite_slug: string | null;
  sort_order: number;
}
