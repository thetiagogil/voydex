import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultForm,
  getDefaultGame,
  getDefaultVersionGroup,
  getGenerationFromParams,
  getVersionGroupFromGame,
  matchesSlugOrId,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import {
  getScopedAvailability,
  getScopedForms,
  getScopedLearnsets,
  getScopedPokedexEntries,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scoped-rows";
import type {
  Game,
  PokemonDetailData,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
} from "@/modules/codex/shared/types";
import type {
  PokemonDetailScopeParams,
  PokemonDetailVersionGroupScope,
  ResolvedPokemonDetailScope,
} from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

export const getPokemonDetailScopeQuery = (
  generation: PokemonGenerationDetail,
  versionGroup?: PokemonDetailVersionGroupScope | null,
  game?: Game | null,
  form?: PokemonGenerationFormSummary | null,
) => {
  const defaultVersionGroup =
    versionGroup ??
    getDefaultVersionGroup(
      generation,
      buildPokemonDetailVersionGroupScopes(generation),
    );
  const defaultGame = game ?? getDefaultGame(generation, defaultVersionGroup);

  return {
    form: form?.form.slug,
    game: defaultGame?.slug,
    generation: generation.generation.slug,
    versionGroup: defaultVersionGroup?.versionGroup.slug,
  } satisfies PokemonDetailScopeParams;
};

export const resolvePokemonDetailScope = (
  data: PokemonDetailData,
  params: PokemonDetailScopeParams,
): ResolvedPokemonDetailScope | null => {
  const generation = getGenerationFromParams(data, params);

  if (!generation) {
    return null;
  }

  const versionGroups = buildPokemonDetailVersionGroupScopes(generation);
  const versionGroup =
    getVersionGroupFromGame(params.game, versionGroups) ??
    versionGroups.find((scope) => {
      return matchesSlugOrId(scope.versionGroup, params.versionGroup);
    }) ??
    getDefaultVersionGroup(generation, versionGroups);
  const game =
    versionGroup?.games.find((availableGame) => {
      return matchesSlugOrId(availableGame, params.game);
    }) ?? getDefaultGame(generation, versionGroup);
  const scopedForms = getScopedForms(generation, versionGroup, game);
  const forms = scopedForms.length ? scopedForms : generation.forms;
  const form = getDefaultForm(forms, params.form);

  return {
    availability: getScopedAvailability(generation, versionGroup, game, form),
    form,
    forms,
    game,
    generation,
    learnsets: getScopedLearnsets(generation, versionGroup, game, form),
    pokedexEntries: getScopedPokedexEntries(generation, versionGroup, form),
    versionGroup,
    versionGroups,
  };
};
