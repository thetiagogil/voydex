export interface CollectionPokemon {
  id: string;
  playId: string;
  nickname: string | null;
  level: number;
  gender: string;
  isShiny: boolean;
  play: {
    id: string;
    name: string;
    status: string;
  };
  game: {
    id: number;
    slug: string;
    name: string;
    generation: {
      id: number;
      slug: string;
      name: string;
    };
  };
  species: {
    id: number;
    slug: string;
    name: string;
    nationalNumber: number;
    isLegendary: boolean;
    isMythical: boolean;
  };
  form: {
    id: number;
    slug: string;
    name: string;
    spriteUrl: string | null;
  };
  types: Array<{
    id: number;
    slug: string;
    name: string;
  }>;
}
