// Mock data types for development and testing

export interface GameData {
  slug: string;
  name: string;
  version: string;
  color: string;
  year: number;
  description: string;
  features: string[];
}

export interface GenerationData {
  slug: string;
  name: string;
  region: string;
  years: string;
  pokemonCount: number;
  description: string;
  games: GameData[];
}

export interface PlaythroughData {
  id: string;
  title: string;
  status: "active" | "completed" | "paused";
  createdAt: string;
  updatedAt: string;
  progress: {
    badges: number;
    totalBadges: number;
    currentLocation: string;
    playtime: string;
  };
  team: {
    name: string;
    level: number;
    species: string;
  }[];
}

export interface GameInfo {
  slug: string;
  name: string;
  version: string;
  genSlug: string;
  genName: string;
  region: string;
  year?: number;
  description: string;
  features?: string[];
  playthroughs?: PlaythroughData[];
}

// Play page types
export interface Pokemon {
  id: string;
  nickname: string;
  species: string;
  level: number;
  types: string[];
  nature: string;
  ability: string;
  moves: string[];
}

export interface Badge {
  name: string;
  location: string;
  obtained: boolean;
  date?: string;
}

export interface Progress {
  badges: number;
  totalBadges: number;
  currentLocation: string;
  playtime: string;
  storyline: string;
}

export interface ProgressItem {
  id: string;
  type: "gym" | "elite4" | "champion" | "pokedex" | "story";
  name: string;
  description: string;
  completed: boolean;
  progress?: number;
  total?: number;
  completedDate?: string;
}

export interface Game {
  slug: string;
  name: string;
  genSlug: string;
  genName: string;
}

export interface Playthrough {
  id: string;
  title: string;
  game: Game;
  status: "active" | "completed" | "paused";
  createdAt: string;
  updatedAt: string;
  challenge: string;
  progress: Progress;
  team: Pokemon[];
  badges: Badge[];
  progressItems: ProgressItem[];
}
