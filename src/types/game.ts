// =============================================================================
// GAME TYPE
// =============================================================================

type GameType = "main" | "remake" | "enhanced" | "dlc" | "spin-off";

// =============================================================================
// GAME
// =============================================================================

interface Game {
  id: number;
  slug: string;
  name: string;
  type: GameType | null;
  type_id: number;
  generation_id: number;
  region_id: number;
  version_group_id: number;
  regional_dex_count: number;
  national_dex_count: number;
  release_year: number;
  created_at: string;
  generation: BaseInfo;
  region: BaseInfo;
}

// =============================================================================
// GAME WITH PLAYS (from getGame service)
// =============================================================================

interface GameWithPlays extends Game {
  plays: GamePlaySummary[];
  stats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
    totalPokemonCaught: number;
  };
}

interface GamePlaySummary {
  id: string;
  name: string;
  status: PlayStatus;
  created_at: string;
  updated_at: string;
  team_size: number;
  highest_level: number;
  pokemon_caught_count: number;
  completed_progress_items: number;
  total_progress_items: number;
  regional_dex_count: number;
  pokemon_team: {
    id: string;
    nickname: string | null;
    level: number;
    species_id: number;
    species: BaseInfo | null;
    sprite_url: string | null;
  }[];
}

// =============================================================================
// GAME WITH FULL DATA (for game page)
// =============================================================================

interface GameWithFullData extends Game {
  type: GameType;
  plays: GamePlaySummary[];
  staticStats: {
    progressCategoryCount: number;
    progressItemCount: number;
  };
  userStats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
    totalPokemonCaught: number;
  };
}
