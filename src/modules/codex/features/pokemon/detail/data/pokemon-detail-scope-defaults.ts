import { getBaseVersionGroupsForGeneration } from "@/modules/reference/features/games/domain/version-groups";
import type {
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  ResolvedPokemonAvailability,
  VersionGroup,
} from "@/modules/reference/types";
import type { PokemonDetailVersionGroupScope } from "@/modules/codex/features/pokemon/detail/types";

export const matchesSlugOrId = (
  row: { id: number; slug: string },
  value?: string,
) => {
  return value === row.slug || value === String(row.id);
};

/* A generation's base version groups, each with its games and expansions. */
export const buildPokemonDetailVersionGroupScopes = (
  generation: PokemonGenerationDetail,
): PokemonDetailVersionGroupScope[] => {
  return generation.versionGroups
    .filter((versionGroup) => versionGroup.parent_version_group_id === null)
    .map((versionGroup) => ({
      expansions: generation.versionGroups.filter((candidate) => {
        return candidate.parent_version_group_id === versionGroup.id;
      }),
      games: generation.games.filter((game) => {
        return game.version_group_id === versionGroup.id;
      }),
      versionGroup,
    }));
};

const getAvailabilityVersionGroups = (
  generation: PokemonGenerationDetail,
): VersionGroup[] => {
  return generation.availability.flatMap((row) => {
    return [row.sourceVersionGroup, row.targetVersionGroup].filter(
      (versionGroup): versionGroup is VersionGroup => versionGroup !== null,
    );
  });
};

/* Whether a base group or one of its expansions is among the groups found in. */
const isFoundInVersionGroupFamily = (
  foundVersionGroups: VersionGroup[],
  versionGroup: VersionGroup,
) => {
  return foundVersionGroups.some((foundVersionGroup) => {
    return (
      foundVersionGroup.id === versionGroup.id ||
      foundVersionGroup.parent_version_group_id === versionGroup.id
    );
  });
};

/* Whether the Pokémon can be found in a group or its expansions. */
export const isPokemonInVersionGroupScope = (
  generation: PokemonGenerationDetail,
  scope: PokemonDetailVersionGroupScope,
) => {
  return isFoundInVersionGroupFamily(
    getAvailabilityVersionGroups(generation),
    scope.versionGroup,
  );
};

/*
 * The first group of a generation the Pokémon can be found in, else the
 * first group: where a generation pill opens.
 */
export const getDefaultVersionGroup = (
  generation: PokemonGenerationDetail,
  versionGroups: PokemonDetailVersionGroupScope[],
) => {
  return (
    versionGroups.find((scope) => {
      return isPokemonInVersionGroupScope(generation, scope);
    }) ??
    versionGroups[0] ??
    null
  );
};

/*
 * The same rule from an address, without the whole entry: a generation's
 * base groups and the Pokémon's availability rows as group ids. As on the
 * entry, a row counts for the generation of the group it targets, and both
 * its own group and that target are where it is found. Legends: Arceus for
 * Wyrdeer in Generation VIII, Let's Go for Meltan in Generation VII.
 */
export const getFirstFoundBaseVersionGroup = ({
  availability,
  generationId,
  versionGroups,
}: {
  availability: Pick<
    ResolvedPokemonAvailability,
    "source_version_group_id" | "target_version_group_id"
  >[];
  generationId: number;
  versionGroups: VersionGroup[];
}) => {
  const versionGroupById = new Map(
    versionGroups.map((versionGroup) => [versionGroup.id, versionGroup]),
  );
  const foundVersionGroups = availability.flatMap((row) => {
    const target =
      row.target_version_group_id === null
        ? undefined
        : versionGroupById.get(row.target_version_group_id);
    const source =
      row.source_version_group_id === null
        ? undefined
        : versionGroupById.get(row.source_version_group_id);

    if (target?.generation_id !== generationId) {
      return [];
    }

    return source ? [target, source] : [target];
  });
  const baseVersionGroups = getBaseVersionGroupsForGeneration(
    versionGroups,
    generationId,
  );

  return (
    baseVersionGroups.find((versionGroup) => {
      return isFoundInVersionGroupFamily(foundVersionGroups, versionGroup);
    }) ??
    baseVersionGroups[0] ??
    null
  );
};

export const getDefaultForm = (
  forms: PokemonGenerationFormSummary[],
  formParam?: string,
) => {
  return (
    forms.find((form) => {
      return matchesSlugOrId(form.form, formParam);
    }) ??
    forms.find((form) => {
      return form.form.is_default;
    }) ??
    forms[0] ??
    null
  );
};
