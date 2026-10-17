import { describe, expect, it } from "vitest";

import {
  getBaseVersionGroupsForGeneration,
  getVersionGroupFamilyIds,
  getVersionGroupGames,
  resolveVersionGroupRoute,
} from "@/modules/reference/features/games/domain/version-groups";
import type {
  Game,
  VersionGroup,
} from "@/modules/reference/shared/database-types";

const versionGroup = (
  id: number,
  slug: string,
  generationId: number,
  sortOrder: number,
  parentId: number | null = null,
) =>
  ({
    generation_id: generationId,
    id,
    name: slug,
    parent_version_group_id: parentId,
    slug,
    sort_order: sortOrder,
  }) as VersionGroup;

const game = (
  id: number,
  slug: string,
  versionGroupId: number,
  sortOrder = 1,
) =>
  ({
    id,
    name: `Pokémon ${slug}`,
    slug,
    sort_order: sortOrder,
    version_group_id: versionGroupId,
  }) as Game;

const versionGroups = [
  versionGroup(7, "emerald", 3, 3),
  versionGroup(5, "rs", 3, 1),
  versionGroup(18, "swsh", 8, 1),
  versionGroup(19, "swsh-ioa", 8, 2, 18),
  versionGroup(20, "swsh-ct", 8, 3, 18),
  versionGroup(21, "bdsp", 8, 4),
];
const games = [
  game(11, "emerald", 7),
  game(32, "shield", 18, 2),
  game(31, "sword", 18, 1),
];
const rows = { games, versionGroups };

describe("resolveVersionGroupRoute", () => {
  it("treats a base group's slug as canonical", () => {
    expect(resolveVersionGroupRoute("swsh", rows)).toMatchObject({
      game: null,
      isCanonical: true,
      versionGroup: { slug: "swsh" },
    });
  });

  it("sends a child group to its base group", () => {
    expect(resolveVersionGroupRoute("swsh-ioa", rows)).toMatchObject({
      isCanonical: false,
      versionGroup: { slug: "swsh" },
    });
  });

  it("sends an old game address to its version group, keeping the game", () => {
    expect(resolveVersionGroupRoute("shield", rows)).toMatchObject({
      game: { slug: "shield" },
      isCanonical: false,
      versionGroup: { slug: "swsh" },
    });
  });

  it("prefers the group when a game shares its slug", () => {
    expect(resolveVersionGroupRoute("emerald", rows)).toMatchObject({
      game: null,
      isCanonical: true,
      versionGroup: { slug: "emerald" },
    });
  });

  it("returns null for an unknown slug", () => {
    expect(resolveVersionGroupRoute("missingno", rows)).toBeNull();
  });
});

describe("version group families", () => {
  it("covers a base group and its expansions", () => {
    expect(
      getVersionGroupFamilyIds(versionGroups[2] as VersionGroup, versionGroups),
    ).toEqual([18, 19, 20]);
  });

  it("lists a generation's base groups in release order", () => {
    expect(
      getBaseVersionGroupsForGeneration(versionGroups, 3).map(
        (group) => group.slug,
      ),
    ).toEqual(["rs", "emerald"]);
    expect(
      getBaseVersionGroupsForGeneration(versionGroups, 8).map(
        (group) => group.slug,
      ),
    ).toEqual(["swsh", "bdsp"]);
  });

  it("orders a group's games", () => {
    expect(
      getVersionGroupGames(versionGroups[2] as VersionGroup, games).map(
        (entry) => entry.slug,
      ),
    ).toEqual(["sword", "shield"]);
  });
});
