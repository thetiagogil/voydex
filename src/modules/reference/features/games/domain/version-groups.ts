import type {
  Game,
  VersionGroup,
} from "@/modules/reference/shared/database-types";

/*
 * Version groups are the unit the Codex reads games by: a base group (Sword
 * and Shield) and its optional child groups (The Isle of Armor, The Crown
 * Tundra), which share the base group's games and add content to them.
 */

export type VersionGroupRouteRows = {
  games: Game[];
  versionGroups: VersionGroup[];
};

export type VersionGroupRoute = {
  /* The game the slug named, when it named a game rather than a group. */
  game: Game | null;
  /* False when the slug was a game or a child group: redirect to the base group. */
  isCanonical: boolean;
  /* Always a base group (no parent). */
  versionGroup: VersionGroup;
};

const compareVersionGroups = (first: VersionGroup, second: VersionGroup) => {
  return (
    first.generation_id - second.generation_id ||
    first.sort_order - second.sort_order ||
    first.id - second.id
  );
};

const isBaseVersionGroup = (versionGroup: VersionGroup) => {
  return versionGroup.parent_version_group_id === null;
};

/* The base group a group belongs to: itself, or the parent of a child group. */
const getBaseVersionGroup = (
  versionGroup: VersionGroup,
  versionGroups: VersionGroup[],
) => {
  if (isBaseVersionGroup(versionGroup)) {
    return versionGroup;
  }

  return (
    versionGroups.find((candidate) => {
      return candidate.id === versionGroup.parent_version_group_id;
    }) ?? versionGroup
  );
};

/* A base group's child groups (its expansions), in release order. */
export const getChildVersionGroups = (
  versionGroup: VersionGroup,
  versionGroups: VersionGroup[],
) => {
  return versionGroups
    .filter((candidate) => {
      return candidate.parent_version_group_id === versionGroup.id;
    })
    .toSorted(compareVersionGroups);
};

/* The base group and its child groups: what one version group page covers. */
export const getVersionGroupFamilyIds = (
  versionGroup: VersionGroup,
  versionGroups: VersionGroup[],
) => {
  return [
    versionGroup.id,
    ...getChildVersionGroups(versionGroup, versionGroups).map(
      (child) => child.id,
    ),
  ];
};

/* A generation's base groups, in release order. */
export const getBaseVersionGroupsForGeneration = (
  versionGroups: VersionGroup[],
  generationId: number,
) => {
  return versionGroups
    .filter((versionGroup) => {
      return (
        versionGroup.generation_id === generationId &&
        isBaseVersionGroup(versionGroup)
      );
    })
    .toSorted(compareVersionGroups);
};

/*
 * Resolves a Codex address segment. A base group's slug is canonical; a child
 * group's slug or a game's slug resolve to the base group they belong to, so
 * old game addresses keep working through a redirect. Group slugs win when a
 * game shares one (Yellow, Crystal, Emerald, Platinum), which is the same group.
 */
export const resolveVersionGroupRoute = (
  slug: string,
  { games, versionGroups }: VersionGroupRouteRows,
): VersionGroupRoute | null => {
  const versionGroup = versionGroups.find((candidate) => {
    return candidate.slug === slug;
  });

  if (versionGroup) {
    return {
      game: null,
      isCanonical: isBaseVersionGroup(versionGroup),
      versionGroup: getBaseVersionGroup(versionGroup, versionGroups),
    };
  }

  const game = games.find((candidate) => candidate.slug === slug);
  const gameVersionGroup = game
    ? versionGroups.find((candidate) => {
        return candidate.id === game.version_group_id;
      })
    : undefined;

  if (!game || !gameVersionGroup) {
    return null;
  }

  return {
    game,
    isCanonical: false,
    versionGroup: getBaseVersionGroup(gameVersionGroup, versionGroups),
  };
};

/* A group's games, in their own order (Sword before Shield). */
export const getVersionGroupGames = (
  versionGroup: VersionGroup,
  games: Game[],
) => {
  return games
    .filter((game) => game.version_group_id === versionGroup.id)
    .toSorted(
      (first, second) =>
        first.sort_order - second.sort_order ||
        first.name.localeCompare(second.name),
    );
};
