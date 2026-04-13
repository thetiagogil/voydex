import { useQuery } from "@tanstack/react-query";

interface PokemonForm {
  id: number;
  slug: string;
  name: string;
  speciesId: number;
  isDefault: boolean;
  pokemonDbSpriteSlug: string | null;
}

export const usePokemonForms = (speciesId?: number) => {
  return useQuery<PokemonForm[]>({
    queryKey: ["pokemon", "species", speciesId, "forms"],
    queryFn: async () => {
      const res = await fetch(
        `/api/reference/pokemon/species/${speciesId}/forms`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch forms");
      return data;
    },
    enabled: Boolean(speciesId),
    staleTime: 1000 * 60 * 5,
  });
};
