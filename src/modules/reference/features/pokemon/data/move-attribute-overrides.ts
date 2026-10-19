import type {
  MoveAttribute,
  MoveVersionGroupAttribute,
} from "@/modules/reference/shared/database-types";

/*
 * Move attributes as one version group plays them: each generation row, with
 * that version group's override laid over it (Absorb is 40 power in Let's Go,
 * Hypnosis 70% in Diamond and Pearl). Overrides for other version groups are
 * ignored; effect text always comes from the generation row.
 */
export const applyMoveVersionGroupOverrides = <T extends MoveAttribute>(
  attributes: T[],
  overrides: MoveVersionGroupAttribute[],
  versionGroupId: number | null,
): T[] => {
  if (versionGroupId === null) {
    return attributes;
  }

  const overrideByMoveId = new Map(
    overrides
      .filter((override) => override.version_group_id === versionGroupId)
      .map((override) => [override.move_id, override]),
  );

  return attributes.map((attribute) => {
    const override = overrideByMoveId.get(attribute.move_id);

    return override
      ? {
          ...attribute,
          accuracy: override.accuracy,
          damage_class: override.damage_class,
          power: override.power,
          pp: override.pp,
          priority: override.priority,
          type_id: override.type_id,
        }
      : attribute;
  });
};
