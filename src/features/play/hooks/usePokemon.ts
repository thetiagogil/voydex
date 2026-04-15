import { referenceApi } from "@/shared/api/reference";
import { useQuery } from "@tanstack/react-query";

type PokemonForm = {
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
    queryFn: () => referenceApi.getPokemonForms<PokemonForm[]>(speciesId!),
    enabled: Boolean(speciesId),
    staleTime: 1000 * 60 * 5,
  });
};
