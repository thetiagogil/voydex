import { fetcher } from "@/lib/utils/fetcher";
import type { BaseInfo } from "@/shared/types";

const withParams = (
  path: string,
  params: Record<string, string | number | undefined>,
) => {
  const searchParams = new URLSearchParams();

  Object.entries(params).forEach(([key, value]) => {
    if (value !== undefined) {
      searchParams.set(key, String(value));
    }
  });

  const query = searchParams.toString();
  return query ? `${path}?${query}` : path;
};

export const referenceApi = {
  getTypes: () => fetcher<BaseInfo[]>("/api/reference/types"),
  getGenerations: () => fetcher<BaseInfo[]>("/api/reference/generations"),
  getNatures: <T>() => fetcher<T>("/api/reference/natures"),
  getAllPokemonForms: <T>() => fetcher<T>("/api/reference/pokemon/forms"),
  getPokemonForms: <T>(speciesId: number) => {
    return fetcher<T>(
      `/api/reference/pokemon/species/${encodeURIComponent(String(speciesId))}/forms`,
    );
  },
  getAvailablePokemon: <T>(versionGroupId: number, gameId?: number) => {
    return fetcher<T>(
      withParams("/api/reference/pokemon/available", {
        versionGroupId,
        gameId,
      }),
    );
  },
  getPokemonAbilities: <T>(
    speciesId: number,
    formId: number,
    generationId: number,
  ) => {
    return fetcher<T>(
      withParams("/api/reference/pokemon/abilities", {
        speciesId,
        formId,
        generationId,
      }),
    );
  },
  getPokemonLearnset: <T>(
    speciesId: number,
    formId: number,
    versionGroupId: number,
  ) => {
    return fetcher<T>(
      withParams("/api/reference/pokemon/learnset", {
        speciesId,
        formId,
        versionGroupId,
      }),
    );
  },
};
