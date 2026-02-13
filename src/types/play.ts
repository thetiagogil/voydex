// =============================================================================
// PLAY STATUS
// =============================================================================

import type { BaseInfo } from "./common";

export type PlayStatus = "active" | "paused" | "completed" | "dropped";

export interface PlayStatusInfo {
  id: number;
  slug: PlayStatus;
  name: string;
  description: string | null;
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
  status: PlayStatus;
  notes: string | null;
  includeUniquePokemon: boolean;
  includeRegionalDex: boolean;
  includeNationalDex: boolean;
  includeMythicalPokemon: boolean;
  createdAt: string;
  updatedAt: string;
  game: {
    id: number;
    slug: string;
    name: string;
    type: string;
    regionalDexCount: number;
    nationalDexCount: number;
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
  pokemonCaughtCount: number;
  completedProgressItems: number;
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
  form: BaseInfo & { spriteUrl: string | null };
  types: BaseInfo[];
  nature: BaseInfo | null;
  ability: BaseInfo | null;
  moves: (BaseInfo | null)[];
}

// =============================================================================
// PLAY PROGRESS
// =============================================================================

export interface PlayProgressCategory {
  id: number;
  slug: string;
  name: string;
  type: string;
  description: string | null;
  sortOrder: number;
  totalItems: number;
  completedItems: number;
}

export interface PlayProgressItem {
  id: number;
  slug: string;
  name: string;
  description: string | null;
  location: string | null;
  sortOrder: number;
  completed: boolean;
  completedAt: string | null;
}

// =============================================================================
// PLAY REGIONAL DEX
// =============================================================================

export interface PlayPokemonCaught {
  regionalNumber: number;
  speciesId: number;
  formId: number | null;
  species: BaseInfo;
  form: BaseInfo & { spriteUrl: string | null };
  caught: boolean;
  isLegendary: boolean;
  isMythical: boolean;
}
