type GameType = "main" | "remake" | "enhanced" | "dlc" | "spin-off";

interface Game {
  id: number;
  slug: string;
  name: string;
  generation_id: number;
  region_id: number;
  version_group_id: number;
  type: GameType;
  regional_dex_count: number;
  national_dex_count: number;
  release_year: number;
  created_at: string;
  generation: {
    id: number;
    slug: string;
    name: string;
  };
  region: {
    id: number;
    slug: string;
    name: string;
  };
  plays: (Play & { pokemon_team: PlayPokemon[] })[];
  stats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
    averageCompletion: number;
    totalPokemonCaught: number;
  };
}

interface GameData {
  data: Game;
  breadcrumbs: Breadcrumbs[];
}
