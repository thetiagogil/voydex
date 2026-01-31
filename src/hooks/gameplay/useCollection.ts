import { useQuery } from "@tanstack/react-query";

interface CollectionPokemon {
  id: string;
  playId: string;
  source: string;
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

export const useCollection = () => {
  return useQuery({
    queryKey: ["collection"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/collection");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch collection");
      return data as CollectionPokemon[];
    },
    staleTime: 1000 * 30,
  });
};
