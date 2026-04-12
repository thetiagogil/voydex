import { useQuery } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

export interface AvailablePokemon {
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

export interface PokemonAbility {
  id: number;
  slug: string;
  name: string;
  slot: "primary" | "secondary" | "hidden";
}

export interface LearnsetMove {
  moveId: number;
  moveName: string;
  moveSlug: string;
  learnMethod: string;
  learnMethodName: string;
  levelLearnedAt: number | null;
}

export interface NatureWithStats {
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
    queryFn: async () => {
      const params = new URLSearchParams();
      params.set("versionGroupId", String(versionGroupId));
      if (gameId) params.set("gameId", String(gameId));
      const res = await fetch(
        `/api/features/reference/pokemon/available?${params}`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch available pokemon");
      return data;
    },
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
    queryFn: async () => {
      const params = new URLSearchParams({
        speciesId: String(speciesId),
        formId: String(formId),
        generationId: String(generationId),
      });
      const res = await fetch(
        `/api/features/reference/pokemon/abilities?${params}`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch pokemon abilities");
      return data;
    },
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
    queryFn: async () => {
      const params = new URLSearchParams({
        speciesId: String(speciesId),
        formId: String(formId),
        versionGroupId: String(versionGroupId),
      });
      const res = await fetch(
        `/api/features/reference/pokemon/learnset?${params}`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch pokemon learnset");
      return data;
    },
    enabled: !!speciesId && !!formId && !!versionGroupId,
    staleTime: 1000 * 60 * 5,
  });
};

export const useNaturesWithStats = () => {
  return useQuery<NatureWithStats[]>({
    queryKey: ["natures", "withStats"],
    queryFn: async () => {
      const res = await fetch("/api/features/reference/natures");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch natures");
      return data;
    },
    staleTime: 1000 * 60 * 60,
  });
};
