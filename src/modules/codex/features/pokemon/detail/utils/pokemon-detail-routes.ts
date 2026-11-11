import { appRoutes } from "@/config/routes";
import type { PokemonDetailScopeParams } from "@/modules/codex/features/pokemon/detail/types";

/* A Pokémon's entry in a version group, with a non-default form as `&form=`. */
export const getPokemonDetailScopeHref = (
  speciesSlug: string,
  params: PokemonDetailScopeParams,
) =>
  appRoutes.codexPokemonEntry(
    params.versionGroup,
    speciesSlug,
    params.form || undefined,
  );
