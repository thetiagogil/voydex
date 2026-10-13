import {
  buildPokemonDetailVersionGroupScopes,
  getDefaultForm,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope-defaults";
import {
  getScopedAvailability,
  getScopedForms,
  getScopedLearnsets,
  getScopedPokedexEntries,
} from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scoped-rows";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import type { PokemonDetailData } from "@/modules/reference/types";
import type {
  PokemonDetailScopeParams,
  ResolvedPokemonDetailScope,
} from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

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

    return {
      availability: getScopedAvailability(generation, versionGroup, form),
      form,
      forms,
      generation,
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
