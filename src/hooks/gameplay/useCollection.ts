import type { CollectionPokemon } from "@/types/collection";
import { useQuery } from "@tanstack/react-query";

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
