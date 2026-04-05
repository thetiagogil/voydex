export interface CollectionPokemon {
  id: string;
  playId: string;
  nickname: string | null;
  level: number;
  gender: string | null;
  isShiny: boolean;
  position: number;
  createdAt: string;
  updatedAt: string;
  play: {
    id: string;
    name: string;
    status: string;
  } | null;
  game: {
    id: number;
    slug: string;
    name: string;
    generation: {
      id: number;
      slug: string;
      name: string;
    };
  } | null;
  species: {
    id: number;
    slug: string;
    name: string;
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
  ability: {
    id: number;
    slug: string;
    name: string;
  } | null;
  nature: {
    id: number;
    slug: string;
    name: string;
  } | null;
}
