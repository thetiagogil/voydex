import { describe, expect, it } from "vitest";

import { buildGameDetailPickerGroups } from "@/modules/codex/features/games/detail/data/game-detail-picker-options";
import type { GameShelfGame } from "@/modules/reference/features/games/types";
import type { VersionGroup } from "@/modules/reference/types";

const game = (
  slug: string,
  versionGroupSlug: string,
  releaseYear: number,
  regionName: string | null,
) =>
  ({
    name: `Pokémon ${slug[0].toUpperCase()}${slug.slice(1)}`,
    regionName,
    releaseYear,
    slug,
    versionGroupSlug,
  }) as GameShelfGame;

const versionGroup = (slug: string, name: string) =>
  ({ name, parent_version_group_id: null, slug }) as VersionGroup;

describe("buildGameDetailPickerGroups", () => {
  it("lists each version group once, in its first game's place, pictured by that game", () => {
    const groups = buildGameDetailPickerGroups(
      [
        game("red", "red-blue", 1996, "Kanto"),
        game("blue", "red-blue", 1996, "Kanto"),
        game("sword", "swsh", 2019, "Galar"),
        game("shield", "swsh", 2019, "Galar"),
      ],
      [
        versionGroup("swsh", "Sword / Shield"),
        versionGroup("red-blue", "Red / Blue"),
      ],
    );

    expect(groups).toEqual([
      {
        coverGame: { name: "Pokémon Red", slug: "red" },
        name: "Red and Blue",
        regionName: "Kanto",
        releaseYear: 1996,
        slug: "red-blue",
      },
      {
        coverGame: { name: "Pokémon Sword", slug: "sword" },
        name: "Sword and Shield",
        regionName: "Galar",
        releaseYear: 2019,
        slug: "swsh",
      },
    ]);
  });

  it("leaves out a game whose version group has no page", () => {
    expect(
      buildGameDetailPickerGroups(
        [game("sword", "swsh", 2019, "Galar")],
        [versionGroup("red-blue", "Red / Blue")],
      ),
    ).toEqual([]);
  });
});
