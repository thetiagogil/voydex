import { PokemonCard } from "@/shared/components/pokemon-card";
import { getPlaysRoute } from "@/shared/constants/routes";
import type { CollectionPokemon } from "../types";

type CollectionGridProps = {
  pokemon: CollectionPokemon[];
};

export const CollectionGrid = ({ pokemon }: CollectionGridProps) => {
  return (
    <div className="grid grid-cols-2 gap-3 md:grid-cols-3 xl:grid-cols-6">
      {pokemon.map((p) => (
        <PokemonCard key={p.id} pokemon={p} href={getPlaysRoute(p.playId)} />
      ))}
    </div>
  );
};
