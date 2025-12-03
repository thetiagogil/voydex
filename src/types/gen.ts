interface Gen {
  id: number;
  slug: string;
  name: string;
  start_year: number;
  end_year: number;
  new_pokemon_count: number;
  total_pokemon_count: number;
  created_at: string;
  games: Game[];
}

interface GenData {
  data: Gen;
  breadcrumbs: Breadcrumbs[];
}
