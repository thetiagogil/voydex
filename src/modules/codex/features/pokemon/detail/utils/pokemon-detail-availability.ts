import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonGenerationFormSummary,
  VersionGroup,
} from "@/modules/reference/types";

export const getPokemonAvailabilityVersionGroups = (
  row: PokemonAvailabilitySummary,
): VersionGroup[] => {
  return [row.sourceVersionGroup, row.targetVersionGroup].filter(
    (versionGroup): versionGroup is VersionGroup => versionGroup !== null,
  );
};

export const doesPokemonAvailabilityMatchForm = (
  row: PokemonAvailabilitySummary,
  form: PokemonGenerationFormSummary | null,
) => {
  if (!form) {
    return true;
  }

  if (!row.availability.form_id) {
    return form.form.is_default;
  }

  return row.availability.form_id === form.form.id;
};

/* A row with no game holds for every game in its group. */
export const doesPokemonAvailabilityMatchGame = (
  row: PokemonAvailabilitySummary,
  game: Game,
) => {
  return !row.game || row.game.id === game.id;
};

export const isPokemonAvailabilityInVersionGroupScope = (
  row: PokemonAvailabilitySummary,
  versionGroup: PokemonDetailVersionGroupScope,
) => {
  return getPokemonAvailabilityVersionGroups(row).some((availabilityScope) => {
    return (
      availabilityScope.id === versionGroup.versionGroup.id ||
      availabilityScope.parent_version_group_id === versionGroup.versionGroup.id
    );
  });
};
