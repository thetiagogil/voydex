import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type {
  Game,
  PokemonGenerationFormSummary,
  PokemonLearnsetSummary,
  VersionGroup,
} from "@/modules/reference/types";

const getPokemonLearnsetVersionGroups = (
  row: PokemonLearnsetSummary,
): VersionGroup[] => {
  return [row.sourceVersionGroup, row.targetVersionGroup].filter(
    (versionGroup): versionGroup is VersionGroup => versionGroup !== null,
  );
};

export const doesPokemonLearnsetMatchForm = (
  row: PokemonLearnsetSummary,
  form: PokemonGenerationFormSummary | null,
) => {
  if (!form) {
    return true;
  }

  if (!row.learnset.form_id) {
    return form.form.is_default;
  }

  return row.learnset.form_id === form.form.id;
};

export const doesPokemonLearnsetMatchGame = (
  row: PokemonLearnsetSummary,
  game: Game,
) => {
  return !row.game || row.game.id === game.id;
};

export const isPokemonLearnsetInVersionGroupScope = (
  row: PokemonLearnsetSummary,
  versionGroup: PokemonDetailVersionGroupScope,
) => {
  return getPokemonLearnsetVersionGroups(row).some((learnsetScope) => {
    return (
      learnsetScope.id === versionGroup.versionGroup.id ||
      learnsetScope.parent_version_group_id === versionGroup.versionGroup.id
    );
  });
};
