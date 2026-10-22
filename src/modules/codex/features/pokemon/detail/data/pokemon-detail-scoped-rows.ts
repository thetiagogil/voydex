import {
  doesPokemonAvailabilityMatchForm,
  isPokemonAvailabilityInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-availability";
import {
  doesPokemonLearnsetMatchForm,
  isPokemonLearnsetInVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-learnsets";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";
import { resolveVersionGroupMechanics } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  hasBattleFormMechanic,
  type BattleFormMechanic,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";
import type {
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonDetailAvailabilityRow =
  PokemonGenerationDetail["availability"][number];
type PokemonDetailLearnsetRow = PokemonGenerationDetail["learnsets"][number];

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

/* A base group and its expansions: what one entry reads. */
const getVersionGroupScopeIds = (
  versionGroup: PokemonDetailVersionGroupScope,
) => {
  return new Set([
    versionGroup.versionGroup.id,
    ...versionGroup.expansions.map((expansion) => expansion.id),
  ]);
};

/*
 * Whether a battle form's mechanic is in this entry: the base group or one
 * of its expansions has it (Primal Reversion arrives with Mega Dimension).
 */
const hasBattleMechanicInScope = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
  mechanic: BattleFormMechanic,
) =>
  [versionGroup.versionGroup, ...versionGroup.expansions].some((group) =>
    hasBattleFormMechanic(
      resolveVersionGroupMechanics({
        gameIds: versionGroup.games.map((game) => game.id),
        generationId: generation.generation.id,
        versionGroupId: group.id,
      }),
      mechanic,
    ),
  );

/*
 * The forms found in the group, in the generation's order: those its
 * availability lists, and the battle forms they reach where the group has
 * the mechanic (Mega Charizard X in X and Y, never in Sword and Shield).
 */
export const getScopedForms = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
) => {
  const storedForms = generation.forms.filter((form) => {
    return generation.availability.some((row) => {
      return (
        isPokemonAvailabilityInVersionGroupScope(row, versionGroup) &&
        doesPokemonAvailabilityMatchForm(row, form)
      );
    });
  });
  const storedFormIds = new Set(storedForms.map((form) => form.form.id));
  const battleFormIds = new Set(
    generation.battleForms
      .filter(
        (link) =>
          link.baseFormIds.some((formId) => storedFormIds.has(formId)) &&
          hasBattleMechanicInScope(generation, versionGroup, link.mechanic),
      )
      .map((link) => link.formId),
  );

  return generation.forms.filter((form) => {
    return storedFormIds.has(form.form.id) || battleFormIds.has(form.form.id);
  });
};

/*
 * The form whose rows (availability, learnsets, Pokédex entries) an entry
 * reads: a battle form reads the stored form that reaches it, preferring
 * one found in the group, since it is the same Pokémon met and raised.
 */
export const getRowsForm = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
  form: PokemonGenerationFormSummary | null,
): PokemonGenerationFormSummary | null => {
  const link = form
    ? generation.battleForms.find((candidate) => {
        return candidate.formId === form.form.id;
      })
    : null;

  if (!link) {
    return form;
  }

  const bases = generation.forms.filter((candidate) => {
    return link.baseFormIds.includes(candidate.form.id);
  });
  const scopedFormIds = new Set(
    getScopedForms(generation, versionGroup).map((candidate) => {
      return candidate.form.id;
    }),
  );

  return (
    bases.find((candidate) => scopedFormIds.has(candidate.form.id)) ??
    bases[0] ??
    form
  );
};

export const getScopedAvailability = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
  form: PokemonGenerationFormSummary | null,
) => {
  const versionGroupRows = generation.availability.filter((row) => {
    return isPokemonAvailabilityInVersionGroupScope(row, versionGroup);
  });
  const scopedRows = versionGroupRows.filter((row) => {
    return doesPokemonAvailabilityMatchForm(row, form);
  });

  return dedupeAvailabilityRows(
    scopedRows.length || !form ? scopedRows : versionGroupRows,
  );
};

/*
 * Where one form is found in a group, strictly: the generation-wide Where to
 * find reads every group of the generation, and a group without the form has
 * nothing to say about it (no Hisuian Arcanine in Sword and Shield).
 */
export const getFormAvailabilityInVersionGroup = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
  form: PokemonGenerationFormSummary | null,
) => {
  return dedupeAvailabilityRows(
    generation.availability.filter((row) => {
      return (
        isPokemonAvailabilityInVersionGroupScope(row, versionGroup) &&
        doesPokemonAvailabilityMatchForm(row, form)
      );
    }),
  );
};

/*
 * The group's learnset, every game in it: a row recorded for one game only
 * stays, marked as that game's (see the learnset table).
 */
export const getScopedLearnsets = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope,
  form: PokemonGenerationFormSummary | null,
) => {
  const versionGroupRows = generation.learnsets.filter((row) => {
    return isPokemonLearnsetInVersionGroupScope(row, versionGroup);
  });
  const scopedRows = versionGroupRows.filter((row) => {
    return doesPokemonLearnsetMatchForm(row, form);
  });

  return dedupeLearnsetRows(
    scopedRows.length || !form ? scopedRows : versionGroupRows,
  );
};

export const getScopedPokedexEntries = (
  versionGroup: PokemonDetailVersionGroupScope,
  form: PokemonGenerationFormSummary | null,
  generation: PokemonGenerationDetail,
) => {
  const versionGroupScopeIds = getVersionGroupScopeIds(versionGroup);
  const versionGroupEntries = generation.pokedexEntries.filter(
    ({ pokedex }) => {
      return (
        pokedex !== null && versionGroupScopeIds.has(pokedex.version_group_id)
      );
    },
  );
  const scopedEntries = versionGroupEntries.filter(({ entry }) => {
    return (
      !form || !entry.display_form_id || entry.display_form_id === form.form.id
    );
  });

  return scopedEntries.length ? scopedEntries : versionGroupEntries;
};
