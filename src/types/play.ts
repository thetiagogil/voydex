interface PlayProgressCategory {
  id: number;
  slug: string;
  name: string;
  items_total: number;
  items_completed: number;
  percentage_completed: number;
}

interface PlayProgressItem {
  id: number;
  slug: string;
  name: string;
  description?: string | null;
  userProgress?: {
    completed: boolean;
    completed_at?: string | null;
  } | null;
}

interface PlayPokemonCaught {
  regional_number: number;
  species_id: number;
  form_id: number | null;
  species: {
    id: number;
    slug: string;
    name: string;
  };
  form: {
    id: number;
    slug: string;
    name: string;
  } | null;
  caught: boolean;
}
