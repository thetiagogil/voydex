import type { BaseInfo } from "@/types/common";
import { useQuery } from "@tanstack/react-query";

interface PokemonSpecies extends BaseInfo {
  introduced_generation_id: number;
}

interface PokemonForm extends BaseInfo {
  speciesId: number;
  isDefault: boolean;
  pokemonDbSpriteSlug: string | null;
}

export const usePokemonSpecies = (generationId?: number, enabled = true) => {
  return useQuery<PokemonSpecies[]>({
    queryKey: ["pokemon", "species", generationId],
    queryFn: async () => {
      const url = generationId
        ? `/api/reference/pokemon/species?generation=${generationId}`
        : `/api/reference/pokemon/species`;
      const res = await fetch(url);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch species");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 5, // 5 minutes
  });
};

export const usePokemonForms = (speciesId?: number) => {
  const enabled = Boolean(speciesId);
  return useQuery<PokemonForm[]>({
    queryKey: ["pokemon", "species", speciesId, "forms"],
    queryFn: async () => {
      const res = await fetch(`/api/reference/pokemon/species/${speciesId}/forms`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch forms");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 5,
  });
};

export const useAllPokemonForms = () => {
  return useQuery<PokemonForm[]>({
    queryKey: ["pokemon", "forms", "all"],
    queryFn: async () => {
      const res = await fetch(`/api/reference/pokemon/forms`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch all forms");
      return data;
    },
    staleTime: 1000 * 60 * 5,
  });
};
