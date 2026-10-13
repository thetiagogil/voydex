import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultVersionGroup,
  isPokemonInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import { getVersionGroupShortName } from "@/modules/codex/shared/utils/game-names";
import { getGenerationNumeral } from "@/modules/reference/features/games/utils/game-display";
import type { PokemonDetailData } from "@/modules/reference/types";
import type { SegmentedControlOption } from "@/shared/components/segmented-control";

/* A form other than the default carries over between pages. */
const getScopedFormSlug = (scope: ResolvedPokemonDetailScope) => {
  return scope.form && !scope.form.form.is_default
    ? scope.form.form.slug
    : undefined;
};

/*
 * The generation pills: each opens the entry in that generation's first
 * group the Pokémon can be found in.
 */
export const getPokemonDetailGenerationOptions = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): SegmentedControlOption<string>[] => {
  return data.generationDetails.flatMap((generation) => {
    const versionGroup = getDefaultVersionGroup(
      generation,
      buildPokemonDetailVersionGroupScopes(generation),
    );

    if (!versionGroup) {
      return [];
    }

    return [
      {
        href: getPokemonDetailScopeHref(data.species.slug, {
          form: getScopedFormSlug(scope),
          versionGroup: versionGroup.versionGroup.slug,
        }),
        label: getGenerationNumeral(generation.generation.name),
        value: generation.generation.slug,
      },
    ];
  });
};

/*
 * The version group switch, when a generation has several (Ruby and
 * Sapphire, FireRed and LeafGreen, Emerald). A group the Pokémon can't be
 * found in is shown but not offered.
 */
export const getPokemonDetailVersionGroupOptions = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): SegmentedControlOption<string>[] => {
  if (scope.versionGroups.length <= 1) {
    return [];
  }

  return scope.versionGroups.map((versionGroup) => {
    const isCurrent =
      versionGroup.versionGroup.id === scope.versionGroup.versionGroup.id;

    return {
      disabled:
        !isCurrent &&
        !isPokemonInVersionGroupScope(scope.generation, versionGroup),
      href: getPokemonDetailScopeHref(data.species.slug, {
        form: getScopedFormSlug(scope),
        versionGroup: versionGroup.versionGroup.slug,
      }),
      label: getVersionGroupShortName(versionGroup.versionGroup.name),
      value: versionGroup.versionGroup.slug,
    };
  });
};
