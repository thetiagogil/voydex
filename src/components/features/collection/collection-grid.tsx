import { PokemonCard } from "./pokemon-card";

interface CollectionPokemon {
  id: string;
  playId: string;
  nickname: string | null;
  level: number;
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

interface CollectionGridProps {
  pokemon: CollectionPokemon[];
}

export const CollectionGrid = ({ pokemon }: CollectionGridProps) => {
  return (
    <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6">
      {pokemon.map((p) => (
        <PokemonCard key={p.id} pokemon={p} />
      ))}
    </div>
  );
};
