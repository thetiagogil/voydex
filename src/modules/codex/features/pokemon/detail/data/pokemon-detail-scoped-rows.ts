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
  VersionGroup,
} from "@/modules/reference/types";

type PokemonDetailAvailabilityRow =
  PokemonGenerationDetail["availability"][number];
type PokemonDetailLearnsetRow = PokemonGenerationDetail["learnsets"][number];

const isAvailabilityInScope = (
  row: PokemonDetailAvailabilityRow,
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
  row: PokemonDetailLearnsetRow,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
) => {
  if (
    versionGroup &&
    !isPokemonLearnsetInVersionGroupScope(row, versionGroup)
  ) {
    return false;
  }

  return !game || doesPokemonLearnsetMatchGame(row, game);
};

const getVersionGroupSortOrder = (versionGroup: VersionGroup | null) => {
  return versionGroup?.sort_order ?? 0;
};

const getAvailabilityDeduplicationKey = (row: PokemonDetailAvailabilityRow) => {
  if (row.availability.id !== null) {
    return `id:${row.availability.id}`;
  }

  return [
    row.availability.source_version_group_id,
    row.availability.species_id,
    row.availability.form_id ?? 0,
    row.availability.game_id ?? 0,
    row.availability.availability_method_id,
    row.availability.notes ?? "",
  ].join(":");
};

const dedupeAvailabilityRows = (rows: PokemonDetailAvailabilityRow[]) => {
  const seenKeys = new Set<string>();

  return rows.filter((row) => {
    const key = getAvailabilityDeduplicationKey(row);

    if (seenKeys.has(key)) {
      return false;
    }

    seenKeys.add(key);
    return true;
  });
};

const getLearnsetDeduplicationKey = (row: PokemonDetailLearnsetRow) => {
  return [
    row.learnset.species_id,
    row.learnset.form_id ?? 0,
    row.learnset.move_id,
    row.learnset.game_id ?? 0,
    row.learnset.learn_method_id,
    row.learnset.level_learned_at ?? -1,
    row.learnset.source_item_id ?? 0,
    row.learnset.move_machine_id ?? 0,
    row.learnset.machine_label ?? "",
    row.learnset.condition_summary ?? "",
  ].join(":");
};

const shouldPreferLearnsetRow = (
  candidate: PokemonDetailLearnsetRow,
  current: PokemonDetailLearnsetRow,
) => {
  return (
    getVersionGroupSortOrder(candidate.sourceVersionGroup) >
      getVersionGroupSortOrder(current.sourceVersionGroup) ||
    (getVersionGroupSortOrder(candidate.sourceVersionGroup) ===
      getVersionGroupSortOrder(current.sourceVersionGroup) &&
      getVersionGroupSortOrder(candidate.targetVersionGroup) >
        getVersionGroupSortOrder(current.targetVersionGroup))
  );
};

const dedupeLearnsetRows = (rows: PokemonDetailLearnsetRow[]) => {
  const preferredRowsByKey = new Map<string, PokemonDetailLearnsetRow>();

  for (const row of rows) {
    const key = getLearnsetDeduplicationKey(row);
    const current = preferredRowsByKey.get(key);

    if (!current || shouldPreferLearnsetRow(row, current)) {
      preferredRowsByKey.set(key, row);
    }
  }

  return rows.filter((row) => {
    return preferredRowsByKey.get(getLearnsetDeduplicationKey(row)) === row;
  });
};

const getPokedexVersionGroupScopeIds = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
) => {
  if (!versionGroup) {
    return null;
  }

  const activeVersionGroupId = versionGroup.versionGroup.id;
  const scopeIds = new Set([activeVersionGroupId]);

  if (!versionGroup.versionGroup.parent_version_group_id) {
    generation.versionGroups.forEach((candidateVersionGroup) => {
      if (
        candidateVersionGroup.parent_version_group_id === activeVersionGroupId
      ) {
        scopeIds.add(candidateVersionGroup.id);
      }
    });
  }

  return scopeIds;
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
    return dedupeAvailabilityRows(scopedRows);
  }

  return dedupeAvailabilityRows(
    generation.availability.filter((row) => {
      return isAvailabilityInScope(row, versionGroup, game);
    }),
  );
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
    return dedupeLearnsetRows(scopedRows);
  }

  return dedupeLearnsetRows(
    generation.learnsets.filter((row) => {
      return isLearnsetInScope(row, versionGroup, game);
    }),
  );
};

export const getScopedPokedexEntries = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const versionGroupScopeIds = getPokedexVersionGroupScopeIds(
    generation,
    versionGroup,
  );
  const versionGroupEntries = versionGroupScopeIds
    ? generation.pokedexEntries.filter(({ pokedex }) => {
        return (
          pokedex?.version_group_id !== null &&
          pokedex?.version_group_id !== undefined &&
          versionGroupScopeIds.has(pokedex.version_group_id)
        );
      })
    : generation.pokedexEntries;
  const scopedEntries = versionGroupEntries.filter(({ entry }) => {
    return (
      !form || !entry.display_form_id || entry.display_form_id === form.form.id
    );
  });

  return scopedEntries.length ? scopedEntries : versionGroupEntries;
};
