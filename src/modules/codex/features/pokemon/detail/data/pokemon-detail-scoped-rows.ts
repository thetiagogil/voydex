import {
  doesPokemonAvailabilityMatchGame,
  isPokemonAvailabilityInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-availability";
import type {
  Game,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
} from "@/modules/codex/shared/types";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

export const getScopedAvailability = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const scopedRows = generation.availability.filter((row) => {
    if (
      versionGroup &&
      !isPokemonAvailabilityInVersionGroupScope(row, versionGroup)
    ) {
      return false;
    }

    if (game && !doesPokemonAvailabilityMatchGame(row, game)) {
      return false;
    }

    if (
      form &&
      row.availability.form_id &&
      row.availability.form_id !== form.form.id
    ) {
      return false;
    }

    return true;
  });

  if (scopedRows.length || !form) {
    return scopedRows;
  }

  return generation.availability.filter((row) => {
    if (
      versionGroup &&
      !isPokemonAvailabilityInVersionGroupScope(row, versionGroup)
    ) {
      return false;
    }

    return !game || doesPokemonAvailabilityMatchGame(row, game);
  });
};

export const getScopedPokedexEntries = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const versionGroupEntries = versionGroup
    ? generation.pokedexEntries.filter(({ pokedex }) => {
        return pokedex?.version_group_id === versionGroup.versionGroup.id;
      })
    : generation.pokedexEntries;
  const scopedEntries = versionGroupEntries.filter(({ entry }) => {
    return (
      !form || !entry.display_form_id || entry.display_form_id === form.form.id
    );
  });

  return scopedEntries.length ? scopedEntries : versionGroupEntries;
};
