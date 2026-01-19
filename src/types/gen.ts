// =============================================================================
// GENERATION
// =============================================================================

interface Generation {
  id: number;
  slug: string;
  name: string;
  start_year: number;
  end_year: number | null;
  new_pokemon_count: number;
  total_pokemon_count: number;
}

// =============================================================================
// GENERATION WITH STATS (from dashboard service)
// =============================================================================

interface GenerationWithStats extends Generation {
  gameCount: number;
  stats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
  };
}
