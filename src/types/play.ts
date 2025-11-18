type PlayStatus = "active" | "completed" | "dropped" | "paused";

interface Play {
  data: {
    id: string;
    user_id: string;
    game_id: number;
    name: string;
    status: PlayStatus;
    notes: string;
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
      generation_id: number;
      version_group_id: number;
      generation: {
        id: number;
        slug: string;
        name: string;
      };
    };
  };
  breadcrumbs: {
    label: string;
    href: string;
    menu?: {
      endpoint: string;
    };
  }[];
}

interface PlayPokemonTeam {
  id: string;
  play_id: string;
  position: number;
  nickname: string;
  level: number;
  gender: string;
  is_shiny: boolean;
  created_at: string;
  updated_at: string;
  species: BaseInfo;
  form: BaseInfo | null;
  types: BaseInfo[];
  nature: BaseInfo;
  ability: BaseInfo;
  moves: BaseInfo[];
}
[];

interface PlayProgressCategory {
  id: number;
  slug: string;
  name: string;
  description?: string | null;
  items_total: number;
  items_completed: number;
  percentage_completed: number;
}

interface PlayProgressItem {
  id: number;
  slug: string;
  name: string;
  description?: string | null;
  location?: string | null;
  userProgress?: {
    completed: boolean;
    completed_at?: string | null;
  } | null;
}

interface PlayPokemonCaught {
  regional_number: number;
  species_id: number;
  form_id: number | null;
  species: BaseInfo;
  form: BaseInfo | null;
  caught: boolean;
  types?: BaseInfo[];
}
