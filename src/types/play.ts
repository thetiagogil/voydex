// =============================================================================
// PLAY STATUS
// =============================================================================

type PlayStatus = "active" | "paused" | "completed" | "dropped";

interface PlayStatusInfo {
  id: number;
  slug: PlayStatus;
  name: string;
  description: string | null;
  is_terminal: boolean;
  sort_order: number;
}

// =============================================================================
// PLAY
// =============================================================================

interface Play {
  id: string;
  user_id: string;
  name: string;
  status: PlayStatus;
  notes: string | null;
  include_unique_pokemon: boolean;
  include_regional_dex: boolean;
  include_national_dex: boolean;
  include_mythical_pokemon: boolean;
  created_at: string;
  updated_at: string;
  game: {
    id: number;
    slug: string;
    name: string;
    type: string;
    regional_dex_count: number;
    national_dex_count: number;
    version_group_id: number;
    generation: BaseInfo;
    region: BaseInfo;
  };
}

// =============================================================================
// PLAY STATS
// =============================================================================

interface PlayStats {
  teamSize: number;
  highestLevel: number;
  shinyCount: number;
  pokemonCaughtCount: number;
  completedProgressItems: number;
}

// =============================================================================
// PLAY TEAM POKEMON
// =============================================================================

interface PlayPokemon {
  id: string;
  play_id: string;
  position: number;
  nickname: string | null;
  level: number;
  gender: string | null;
  is_shiny: boolean;
  species: BaseInfo;
  form: BaseInfo & { sprite_url: string | null };
  types: BaseInfo[];
  nature: BaseInfo | null;
  ability: BaseInfo | null;
  moves: (BaseInfo | null)[];
}

// =============================================================================
// PLAY PROGRESS
// =============================================================================

interface PlayProgressCategory {
  id: number;
  slug: string;
  name: string;
  type: string;
  description: string | null;
  sortOrder: number;
  totalItems: number;
  completedItems: number;
}

interface PlayProgressItem {
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

interface PlayPokemonCaught {
  regional_number: number;
  species_id: number;
  form_id: number | null;
  species: BaseInfo;
  form: BaseInfo & { sprite_url: string | null };
  caught: boolean;
  is_legendary: boolean;
  is_mythical: boolean;
}
