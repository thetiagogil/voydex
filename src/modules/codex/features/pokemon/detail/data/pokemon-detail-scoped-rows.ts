import {
  doesPokemonAvailabilityMatchForm,
  doesPokemonAvailabilityMatchGame,
  isPokemonAvailabilityInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-availability";
import {
  doesPokemonLearnsetMatchForm,
  doesPokemonLearnsetMatchGame,
  isPokemonLearnsetInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-learnsets";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type {
  Game,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
} from "@/modules/codex/shared/types";

const isAvailabilityInScope = (
  row: PokemonGenerationDetail["availability"][number],
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
) => {
  if (
    versionGroup &&
    !isPokemonAvailabilityInVersionGroupScope(row, versionGroup)
  ) {
    return false;
  }

  return !game || doesPokemonAvailabilityMatchGame(row, game);
};

const isLearnsetInScope = (
  row: PokemonGenerationDetail["learnsets"][number],
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
) => {
  if (versionGroup && !isPokemonLearnsetInVersionGroupScope(row, versionGroup)) {
    return false;
  }

  return !game || doesPokemonLearnsetMatchGame(row, game);
};

export const getScopedForms = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
) => {
  return generation.forms.filter((form) => {
    return generation.availability.some((row) => {
      return (
        isAvailabilityInScope(row, versionGroup, game) &&
        doesPokemonAvailabilityMatchForm(row, form)
      );
    });
  });
};

export const getScopedAvailability = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const scopedRows = generation.availability.filter((row) => {
    return (
      isAvailabilityInScope(row, versionGroup, game) &&
      doesPokemonAvailabilityMatchForm(row, form)
    );
  });

  if (scopedRows.length || !form) {
    return scopedRows;
  }

  return generation.availability.filter((row) => {
    return isAvailabilityInScope(row, versionGroup, game);
  });
};

export const getScopedLearnsets = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const scopedRows = generation.learnsets.filter((row) => {
    return (
      isLearnsetInScope(row, versionGroup, game) &&
      doesPokemonLearnsetMatchForm(row, form)
    );
  });

  if (scopedRows.length || !form) {
    return scopedRows;
  }

  return generation.learnsets.filter((row) => {
    return isLearnsetInScope(row, versionGroup, game);
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
