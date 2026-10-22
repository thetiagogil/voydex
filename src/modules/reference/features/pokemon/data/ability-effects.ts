import { byId } from "@/shared/utils/collections";

type AbilityAttributeRow = {
  ability_id: number;
  effect_summary: string;
  version_group_start_id: number;
};

/*
 * Each ability's attributes as of one version group: the newest row that
 * starts at or before it (by the version groups' own order), so an ability
 * whose effect changed reads the way that game has it. Without a version
 * group, the newest row of all.
 */
export const resolveAbilityAttributes = <TRow extends AbilityAttributeRow>(
  attributes: readonly TRow[],
  versionGroupId: number | null,
  versionGroups: readonly { id: number; sort_order: number }[],
): Map<number, TRow> => {
  const versionGroupById = byId([...versionGroups]);
  const orderOf = (id: number) => versionGroupById.get(id)?.sort_order ?? id;
  const currentOrder =
    versionGroupId === null
      ? Number.POSITIVE_INFINITY
      : (versionGroupById.get(versionGroupId)?.sort_order ??
        Number.POSITIVE_INFINITY);
  const latest = new Map<number, TRow>();

  for (const attribute of attributes) {
    const order = orderOf(attribute.version_group_start_id);
    const stored = latest.get(attribute.ability_id);

    if (
      order <= currentOrder &&
      (!stored || order > orderOf(stored.version_group_start_id))
    ) {
      latest.set(attribute.ability_id, attribute);
    }
  }

  return latest;
};

/* What each ability does in that version group, by its id. */
export const resolveAbilityEffects = (
  attributes: readonly AbilityAttributeRow[],
  versionGroupId: number | null,
  versionGroups: readonly { id: number; sort_order: number }[],
): Map<number, string> =>
  new Map(
    [
      ...resolveAbilityAttributes(attributes, versionGroupId, versionGroups),
    ].map(([abilityId, attribute]) => [abilityId, attribute.effect_summary]),
  );
