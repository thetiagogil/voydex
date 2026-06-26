import { appRoutes } from "@/config/routes";
import type { PokemonDetailScopeParams } from "@/modules/codex/data/pokemon-detail-scope";

export const getPokemonDetailScopeHref = (
  speciesSlug: string,
  params: PokemonDetailScopeParams,
) => {
  const searchParams = new URLSearchParams();

  if (params.generation) {
    searchParams.set("generation", params.generation);
  }

  if (params.versionGroup) {
    searchParams.set("versionGroup", params.versionGroup);
  }

  if (params.game) {
    searchParams.set("game", params.game);
  }

  if (params.form) {
    searchParams.set("form", params.form);
  }

  const queryString = searchParams.toString();
  const baseHref = appRoutes.codexPokemonSpecies(speciesSlug);

  return queryString ? `${baseHref}?${queryString}` : baseHref;
};
