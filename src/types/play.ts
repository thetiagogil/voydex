// =============================================================================
// PLAY STATUS
// =============================================================================

import type { BaseInfo } from "./common";

export type PlayStatus = "active" | "paused" | "completed" | "dropped";

export interface PlayStatusInfo {
  id: number;
  slug: PlayStatus;
  name: string;
  isTerminal: boolean;
  sortOrder: number;
}

// =============================================================================
// PLAY
// =============================================================================

export interface Play {
  id: string;
  userId: string;
  name: string;
  status: {
    id: number;
    slug: PlayStatus;
    name: string;
    isTerminal: boolean;
  };
  notes: string | null;
  includePokedex: boolean;
  includeOtherPokedex: boolean;
  includeMythicalPokemon: boolean;
  createdAt: string;
  updatedAt: string;
  game: {
    id: number;
    slug: string;
    name: string;
    type: string;
    versionGroupId: number;
    generation: BaseInfo;
    region: BaseInfo;
  };
}

// =============================================================================
// PLAY STATS
// =============================================================================

export interface PlayStats {
  teamSize: number;
  highestLevel: number;
  shinyCount: number;
  pokedexCaughtCount: number;
  completedTrackingItems: number;
}

// =============================================================================
// PLAY TEAM POKEMON
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
// PLAY POKEDEX ENTRY (from views.play_pokedex_detail)
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

// =============================================================================
// PLAY POKEDEX SUMMARY (aggregated per pokedex)
// =============================================================================

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
