import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultVersionGroup,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
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
 * The generation pills: every generation, always, so the row never shifts.
 * One the Pokémon is in opens that generation's first group it can be found
 * in; one it isn't in (before it existed, or a generation without it) shows
 * disabled.
 */
export const getPokemonDetailGenerationOptions = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): SegmentedControlOption<string>[] => {
  return data.generations.map((generationRow) => {
    const generation = data.generationDetails.find((detail) => {
      return detail.generation.id === generationRow.id;
    });
    const versionGroup = generation
      ? getDefaultVersionGroup(
          generation,
          buildPokemonDetailVersionGroupScopes(generation),
        )
      : null;
    const option = {
      label: getGenerationNumeral(generationRow.name),
      value: generationRow.slug,
    };

    return versionGroup
      ? {
          ...option,
          href: getPokemonDetailScopeHref(data.species.slug, {
            form: getScopedFormSlug(scope),
            versionGroup: versionGroup.versionGroup.slug,
          }),
        }
      : { ...option, disabled: true, href: "" };
  });
};
