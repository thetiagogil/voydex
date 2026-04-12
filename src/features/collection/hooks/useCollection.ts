import { useQuery } from "@tanstack/react-query";
import type { CollectionPokemon } from "../types";

export const useCollection = () => {
  return useQuery<CollectionPokemon[]>({
    queryKey: ["collection"],
    queryFn: async () => {
      const res = await fetch("/api/features/collection");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch collection");
      return data;
    },
    staleTime: 1000 * 30,
  });
};
