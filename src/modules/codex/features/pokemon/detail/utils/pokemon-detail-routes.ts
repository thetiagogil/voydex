import { appRoutes } from "@/config/routes";
import type { PokemonDetailScopeParams } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";

export const getPokemonDetailScopeHref = (
  speciesSlug: string,
  params: PokemonDetailScopeParams,
) => {
  const searchParams = new URLSearchParams();

  if (!params.game && params.generation) {
    searchParams.set("generation", params.generation);
  }

  if (!params.game && params.versionGroup) {
    searchParams.set("versionGroup", params.versionGroup);
  }

  if (params.form) {
    searchParams.set("form", params.form);
  }

  const queryString = searchParams.toString();
  const baseHref = params.game
    ? appRoutes.codexPokemonGameSpecies(params.game, speciesSlug)
    : appRoutes.codexPokemonSpecies(speciesSlug);

  return queryString ? `${baseHref}?${queryString}` : baseHref;
};
