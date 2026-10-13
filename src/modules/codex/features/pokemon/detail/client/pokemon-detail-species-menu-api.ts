import type { PokemonDetailMenuPage } from "@/modules/reference/types";

export type PokemonMenuPageRequest = {
  versionGroupSlug: string;
  limit: number;
  offset: number;
  query: string;
};

export const POKEMON_MENU_PAGE_SIZE = 96;

const pokemonMenuRequests = new Map<string, Promise<PokemonDetailMenuPage>>();

const getPokemonMenuRequestKey = ({
  versionGroupSlug,
  limit,
  offset,
  query,
}: PokemonMenuPageRequest) => {
  return `${versionGroupSlug}:${query}:${offset}:${limit}`;
};

const getPokemonMenuApiHref = ({
  versionGroupSlug,
  limit,
  offset,
  query,
}: PokemonMenuPageRequest) => {
  const searchParams = new URLSearchParams({
    versionGroup: versionGroupSlug,
    limit: String(limit),
    offset: String(offset),
  });

  if (query) {
    searchParams.set("q", query);
  }

  return `/api/codex/pokemon-menu?${searchParams}`;
};

export const fetchPokemonMenuPage = (requestParams: PokemonMenuPageRequest) => {
  const requestKey = getPokemonMenuRequestKey(requestParams);
  const cachedRequest = pokemonMenuRequests.get(requestKey);

  if (cachedRequest) {
    return cachedRequest;
  }

  const request = fetch(getPokemonMenuApiHref(requestParams), {
    headers: { Accept: "application/json" },
  })
    .then(async (response) => {
      if (!response.ok) {
        throw new Error("Unable to load Pokemon menu.");
      }

      return (await response.json()) as PokemonDetailMenuPage;
    })
    .catch((error: unknown) => {
      pokemonMenuRequests.delete(requestKey);
      throw error;
    });

  pokemonMenuRequests.set(requestKey, request);

  return request;
};
