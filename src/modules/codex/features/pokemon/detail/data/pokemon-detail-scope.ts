import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultForm,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import {
  getFormAvailabilityInVersionGroup,
  getScopedAvailability,
  getScopedForms,
  getScopedLearnsets,
  getScopedPokedexEntries,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scoped-rows";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type {
  PokemonDetailData,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
} from "@/modules/reference/types";
import type {
  PokemonDetailGenerationForm,
  PokemonDetailScopeParams,
  PokemonDetailVersionGroupScope,
  ResolvedPokemonDetailScope,
} from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

/*
 * Every form found somewhere in the generation, in the generation's order,
 * each opening in the address's group when it is found there, else in the
 * first group that has it.
 */
const getGenerationForms = (
  generation: PokemonGenerationDetail,
  versionGroups: PokemonDetailVersionGroupScope[],
  current: {
    forms: PokemonGenerationFormSummary[];
    versionGroup: PokemonDetailVersionGroupScope;
  },
): PokemonDetailGenerationForm[] => {
  const formsByGroup = versionGroups.map((scope) => ({
    forms:
      scope === current.versionGroup
        ? current.forms
        : getScopedForms(generation, scope),
    scope,
  }));

  return generation.forms.flatMap((form) => {
    const home =
      formsByGroup.find(({ forms, scope }) => {
        return (
          scope === current.versionGroup &&
          forms.some((candidate) => candidate.form.id === form.form.id)
        );
      }) ??
      formsByGroup.find(({ forms }) => {
        return forms.some((candidate) => candidate.form.id === form.form.id);
      });

    return home
      ? [{ form, versionGroupSlug: home.scope.versionGroup.slug }]
      : [];
  });
};

/*
 * Reads the entry in one base version group (Sword and Shield, its
 * expansions included). Null when the Pokémon doesn't exist yet in that
 * group's generation.
 */
export const resolvePokemonDetailScope = (
  data: PokemonDetailData,
  params: PokemonDetailScopeParams,
): ResolvedPokemonDetailScope | null => {
  for (const generation of data.generationDetails) {
    const versionGroups = buildPokemonDetailVersionGroupScopes(generation);
    const versionGroup = versionGroups.find((scope) => {
      return scope.versionGroup.slug === params.versionGroup;
    });

    if (!versionGroup) {
      continue;
    }

    const scopedForms = getScopedForms(generation, versionGroup);
    const forms = scopedForms.length ? scopedForms : generation.forms;
    const form = getDefaultForm(forms, params.form);
    const availability = getScopedAvailability(generation, versionGroup, form);

    return {
      availability,
      form,
      forms,
      generation,
      generationAvailability: versionGroups.map((scope) => ({
        availability:
          scope === versionGroup
            ? availability
            : getFormAvailabilityInVersionGroup(generation, scope, form),
        versionGroup: scope,
      })),
      generationForms: getGenerationForms(generation, versionGroups, {
        forms,
        versionGroup,
      }),
      /* Another group's Pokédexes count only when the form is found there. */
      generationPokedexEntries: versionGroups.flatMap((scope) => {
        if (
          scope !== versionGroup &&
          form &&
          !getScopedForms(generation, scope).some(
            (candidate) => candidate.form.id === form.form.id,
          )
        ) {
          return [];
        }

        return getScopedPokedexEntries(scope, form, generation).map(
          (entry) => ({
            ...entry,
            versionGroupSlug: scope.versionGroup.slug,
          }),
        );
      }),
      learnsets: getScopedLearnsets(generation, versionGroup, form),
      mechanics: resolveVersionGroupMechanics({
        gameIds: versionGroup.games.map((game) => game.id),
        generationId: generation.generation.id,
        versionGroupId: versionGroup.versionGroup.id,
      }),
      pokedexEntries: getScopedPokedexEntries(versionGroup, form, generation),
      versionGroup,
      versionGroups,
    };
  }

  return null;
};
