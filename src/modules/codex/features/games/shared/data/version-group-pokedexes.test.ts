import { describe, expect, it } from "vitest";

import { sortVersionGroupPokedexes } from "@/modules/codex/features/games/shared/data/version-group-pokedexes";
import type { Pokedex, VersionGroup } from "@/modules/reference/types";

const pokedex = (
  slug: string,
  versionGroupId: number,
  sortOrder: number,
  kind = "regional",
) =>
  ({
    pokedex_kind: kind,
    slug,
    sort_order: sortOrder,
    version_group_id: versionGroupId,
  }) as Pokedex;

const versionGroupById = new Map(
  [
    { id: 18, sort_order: 1 },
    { id: 19, sort_order: 2 },
    { id: 20, sort_order: 3 },
  ].map((versionGroup) => [versionGroup.id, versionGroup as VersionGroup]),
);

describe("sortVersionGroupPokedexes", () => {
  it("puts the group's Pokédex before its expansions'", () => {
    expect(
      sortVersionGroupPokedexes(
        [
          pokedex("crown-tundra", 20, 1, "dlc"),
          pokedex("isle-of-armor", 19, 1, "dlc"),
          pokedex("galar", 18, 1),
        ],
        versionGroupById,
      ).map((entry) => entry.slug),
    ).toEqual(["galar", "isle-of-armor", "crown-tundra"]);
  });

  it("puts the National Pokédex last", () => {
    expect(
      sortVersionGroupPokedexes(
        [pokedex("national", 18, 1, "national"), pokedex("hoenn", 18, 2)],
        versionGroupById,
      ).map((entry) => entry.slug),
    ).toEqual(["hoenn", "national"]);
  });
});
