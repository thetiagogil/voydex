import { UserStats } from "@/shared/types";

export interface Generation {
  id: number;
  slug: string;
  name: string;
  startYear: number;
  newPokemonCount: number;
  totalPokemonCount: number;
  gameCount: number;
}

export interface GenerationGame {
  id: number;
  slug: string;
  name: string;
  type: string;
  releaseYear: number;
  coverUrl: string;
  region: {
    id: number;
    slug: string;
    name: string;
  };
  stats: {
    totalPlays: number;
    activePlays: number;
    completedPlays: number;
  };
}

export interface GenerationData extends Generation {
  games: GenerationGame[];
  userStats: UserStats | null;
}
