export type PokemonDetailGameNavigationItem = {
  href: string;
  id: number;
  imageUrl: string | null;
  isActive: boolean;
  isAvailable: boolean;
  name: string;
  slug: string;
};

export type PokemonDetailGenerationNavigationItem = {
  games: PokemonDetailGameNavigationItem[];
  id: number;
  isActive: boolean;
  label: string;
};
