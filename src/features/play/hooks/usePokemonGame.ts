import { referenceApi } from "@/shared/api/reference";
import { useQuery } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

export type AvailablePokemon = {
  speciesId: number;
  formId: number;
  context: "native" | "transfer" | "event";
  species: {
    id: number;
    slug: string;
    name: string;
    nationalNumber: number;
  };
  form: {
    id: number;
    slug: string;
    name: string;
    pokemonDbSpriteSlug: string | null;
    isDefault: boolean;
  };
}

export type PokemonAbility = {
  id: number;
  slug: string;
  name: string;
  slot: "primary" | "secondary" | "hidden";
}

export type LearnsetMove = {
  moveId: number;
  moveName: string;
  moveSlug: string;
  learnMethod: string;
  learnMethodName: string;
  levelLearnedAt: number | null;
}

export type NatureWithStats = {
  id: number;
  slug: string;
  name: string;
  increasedStat: string | null;
  decreasedStat: string | null;
}

// =============================================================================
// HOOKS
// =============================================================================

export const useAvailablePokemon = (
  versionGroupId?: number,
  gameId?: number,
) => {
  return useQuery<AvailablePokemon[]>({
    queryKey: ["pokemon", "available", versionGroupId, gameId],
    queryFn: () =>
      referenceApi.getAvailablePokemon<AvailablePokemon[]>(
        versionGroupId!,
        gameId,
      ),
    enabled: !!versionGroupId,
    staleTime: 1000 * 60 * 5,
  });
};

export const usePokemonAbilities = (
  speciesId?: number,
  formId?: number,
  generationId?: number,
) => {
  return useQuery<PokemonAbility[]>({
    queryKey: ["pokemon", "abilities", speciesId, formId, generationId],
    queryFn: () =>
      referenceApi.getPokemonAbilities<PokemonAbility[]>(
        speciesId!,
        formId!,
        generationId!,
      ),
    enabled: !!speciesId && !!formId && !!generationId,
    staleTime: 1000 * 60 * 5,
  });
};

export const usePokemonLearnset = (
  speciesId?: number,
  formId?: number,
  versionGroupId?: number,
) => {
  return useQuery<LearnsetMove[]>({
    queryKey: ["pokemon", "learnset", speciesId, formId, versionGroupId],
    queryFn: () =>
      referenceApi.getPokemonLearnset<LearnsetMove[]>(
        speciesId!,
        formId!,
        versionGroupId!,
      ),
    enabled: !!speciesId && !!formId && !!versionGroupId,
    staleTime: 1000 * 60 * 5,
  });
};

export const useNaturesWithStats = () => {
  return useQuery<NatureWithStats[]>({
    queryKey: ["natures", "withStats"],
    queryFn: () => referenceApi.getNatures<NatureWithStats[]>(),
    staleTime: 1000 * 60 * 60,
  });
};
